import 'dart:convert';
import 'package:http/http.dart' as http;
import '../../../constants/constants.dart';
import 'package:intl/intl.dart';
import '../../notifications/notification_service.dart';
import '../../utils/utils.dart';

Future<Map<String, dynamic>> fetchSolarFlareApiDataWithDates(String startDate, String endDate) async {
  final url = Uri.parse('$nasaApiUrl?startDate=$startDate&endDate=$endDate&api_key=$nasaApiKey');

  final response = await http.get(url, headers: {'accept': 'application/json'});

  if (response.statusCode == 200) {
    final data = jsonDecode(response.body);

    if (data is List) {
      data.sort((a, b) => DateTime.parse(b['submissionTime']).compareTo(DateTime.parse(a['submissionTime'])));
      return {'solar_flares': data};
    } else if (data is Map<String, dynamic>) {
      return data;
    } else {
      throw Exception('Unexpected data format');
    }
  } else {
    throw Exception('Failed to load solar flares data');
  }
}

Future<void> fetchSolarFlareApiDataForNotifications() async {
  final NotificationService notificationService = NotificationService();
  await notificationService.init();

  final now = DateTime.now();
  final startDate = DateFormat('yyyy-MM-dd').format(now);
  final endDate = DateFormat('yyyy-MM-dd').format(now.add(Duration(days: 1)));

  final url = Uri.parse('$nasaApiUrl?startDate=$startDate&endDate=$endDate&api_key=$nasaApiKey');

  final response = await http.get(url, headers: {'accept': 'application/json'});

  if (response.statusCode == 200) {
    final data = jsonDecode(response.body);

    if (data is List) {
      data.sort((a, b) => DateTime.parse(b['submissionTime']).compareTo(DateTime.parse(a['submissionTime'])));
      bool flareHappening = false;

      for (var flare in data) {
        final beginTime = DateTime.parse(flare['beginTime']).toLocal();
        final endTime = DateTime.parse(flare['endTime']).toLocal();

        if (isCurrentTimeWithin(beginTime, endTime)) {
          flareHappening = true;
          final classType = flare['classType'];
          await notificationService.showNotification(
            'Flare Solar',
            '🚨 Flare Solar Tipo $classType acontecendo agora!',
          );
          break;
        }
      }

      if (!flareHappening) {
        await notificationService.showNotification(
          'Flare Solar',
          '☁️ Nenhum Flare Solar acontecendo agora... Tudo limpo!',
        );
      }
    } else {
      throw Exception('Unexpected data format');
    }
  } else {
    throw Exception('Failed to load solar flares data');
  }
}