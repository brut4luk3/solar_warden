import 'package:solar_warden/services/api/nasa/solar_flares.dart';
import 'package:solar_warden/services/utils/utils.dart';

Future<List<Map<String, dynamic>>> fetchSolarFlareData(String startDate, String endDate) async {
  final data = await fetchSolarFlareApiDataWithDates(startDate, endDate);
  List<Map<String, dynamic>> solarFlareList = [];

  if (data.containsKey('solar_flares')) {
    (data['solar_flares'] as List<dynamic>).forEach((flare) {
      solarFlareList.add({
        'classType': checkNull(flare['classType'], isInt: false),
        'beginTime': convertDateToBrazilianTimezone(checkNull(flare['beginTime'], isInt: false)),
        'peakTime': convertDateToBrazilianTimezone(checkNull(flare['peakTime'], isInt: false)),
        'endTime': convertDateToBrazilianTimezone(checkNull(flare['endTime'], isInt: false)),
        'activeRegionNum': checkNull(flare['activeRegionNum'], isInt: true),
        'note': checkNull(flare['note'], isInt: false),
      });
    });
  }

  return solarFlareList;
}

dynamic checkNull(dynamic value, {required bool isInt}) {
  if (isInt) {
    return value is int ? value : null;
  }
  return value?.toString() ?? 'N/A';
}