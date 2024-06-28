import 'package:solar_warden/services/api/nasa/neo.dart';
import 'package:solar_warden/services/utils/utils.dart';

Future<List<Map<String, dynamic>>> fetchNEOData(String startDate, String endDate) async {
  final data = await fetchNEOApiDataWithDates(startDate, endDate);
  List<Map<String, dynamic>> neoList = [];
  (data['near_earth_objects'] as Map<String, dynamic>).forEach((date, neos) {
    (neos as List<dynamic>).forEach((neo) {
      if (neo['is_potentially_hazardous_asteroid']) {
        neoList.add({
          'id': checkNull(neo['id']),
          'neo_reference_id': checkNull(neo['neo_reference_id']),
          'name': checkNull(neo['name']),
          'nasa_jpl_url': checkNull(neo['nasa_jpl_url']),
          'absolute_magnitude_h': checkNull(neo['absolute_magnitude_h']),
          'estimated_diameter': {
            'kilometers': {
              'estimated_diameter_min': checkNull(neo['estimated_diameter']['kilometers']['estimated_diameter_min']),
              'estimated_diameter_max': checkNull(neo['estimated_diameter']['kilometers']['estimated_diameter_max']),
            },
            'meters': {
              'estimated_diameter_min': checkNull(neo['estimated_diameter']['meters']['estimated_diameter_min']),
              'estimated_diameter_max': checkNull(neo['estimated_diameter']['meters']['estimated_diameter_max']),
            },
            'miles': {
              'estimated_diameter_min': checkNull(neo['estimated_diameter']['miles']['estimated_diameter_min']),
              'estimated_diameter_max': checkNull(neo['estimated_diameter']['miles']['estimated_diameter_max']),
            },
            'feet': {
              'estimated_diameter_min': checkNull(neo['estimated_diameter']['feet']['estimated_diameter_min']),
              'estimated_diameter_max': checkNull(neo['estimated_diameter']['feet']['estimated_diameter_max']),
            },
          },
          'is_potentially_hazardous_asteroid': checkNull(neo['is_potentially_hazardous_asteroid']),
          'close_approach_data': (neo['close_approach_data'] as List<dynamic>).map((cad) {
            return {
              'close_approach_date': checkNull(convertDateToBrazilianTimezone(cad['close_approach_date'])),
              'close_approach_date_full': checkNull(cad['close_approach_date_full']),
              'epoch_date_close_approach': checkNull(cad['epoch_date_close_approach']),
              'relative_velocity': {
                'kilometers_per_second': checkNull(cad['relative_velocity']['kilometers_per_second']),
                'kilometers_per_hour': checkNull(cad['relative_velocity']['kilometers_per_hour']),
                'miles_per_hour': checkNull(cad['relative_velocity']['miles_per_hour']),
              },
              'miss_distance': {
                'astronomical': checkNull(cad['miss_distance']['astronomical']),
                'lunar': checkNull(cad['miss_distance']['lunar']),
                'kilometers': checkNull(cad['miss_distance']['kilometers']),
                'miles': checkNull(cad['miss_distance']['miles']),
              },
              'orbiting_body': checkNull(cad['orbiting_body']),
            };
          }).toList(),
          'is_sentry_object': checkNull(neo['is_sentry_object']),
        });
      }
    });
  });
  return neoList;
}

String checkNull(dynamic value) {
  return value?.toString() ?? 'N/A';
}