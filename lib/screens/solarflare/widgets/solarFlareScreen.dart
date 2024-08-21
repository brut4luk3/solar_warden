import 'package:flutter/material.dart';
import 'package:solar_warden/translation/localization.dart';
import 'package:solar_warden/translation/TranslationWidget.dart';
import 'package:solar_warden/screens/solarflare/functions/solarFlareFunctions.dart';
import 'package:solar_warden/screens/solarflare/widgets/solarFlareDetailScreen.dart';
import 'package:solar_warden/screens/solarflare/functions/solarFlareDetailFunctions.dart';
import 'package:solar_warden/components/solarFlareCards.dart';
import 'package:intl/intl.dart';
import 'package:solar_warden/components/homeBackground.dart';
import 'package:solar_warden/components/startSpinning.dart';

class SolarFlareScreen extends StatefulWidget {
  const SolarFlareScreen({Key? key}) : super(key: key);

  @override
  _SolarFlareScreenState createState() => _SolarFlareScreenState();
}

class _SolarFlareScreenState extends State<SolarFlareScreen> with SingleTickerProviderStateMixin {
  TextEditingController dateController = TextEditingController();
  DateTimeRange? selectedDateRange;
  List<Map<String, dynamic>> solarFlareData = [];
  late AnimationController _animationController;
  late Animation<double> _animation;
  bool isLoading = false;

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );

    _animation = CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeIn,
    );

    _animationController.forward();

    final now = DateTime.now();
    final startOfWeek = now.subtract(Duration(days: now.weekday));
    selectedDateRange = DateTimeRange(start: startOfWeek, end: now);
    dateController.text = '${DateFormat('yyyy-MM-dd').format(startOfWeek)} - ${DateFormat('yyyy-MM-dd').format(now)}';
    _fetchData(startOfWeek, now);
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  Future<void> _selectDateRange(BuildContext context) async {
    final DateTime now = DateTime.now();
    final DateTimeRange? picked = await showDateRangePicker(
      context: context,
      firstDate: DateTime(1900),
      lastDate: DateTime(2100),
      initialDateRange: selectedDateRange ?? DateTimeRange(start: now, end: now),
    );

    if (picked != null && picked != selectedDateRange) {
      setState(() {
        selectedDateRange = picked;
        dateController.text = '${DateFormat('yyyy-MM-dd').format(picked.start)} - ${DateFormat('yyyy-MM-dd').format(picked.end)}';
        _fetchData(picked.start, picked.end);
      });
    }
  }

  Future<void> _fetchData(DateTime startDate, DateTime endDate) async {
    setState(() {
      isLoading = true;
    });
    final formattedStartDate = DateFormat('yyyy-MM-dd').format(startDate);
    final formattedEndDate = DateFormat('yyyy-MM-dd').format(endDate);

    final data = await fetchSolarFlareData(formattedStartDate, formattedEndDate);
    setState(() {
      solarFlareData = data;
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    final localization = AppLocalizations.of(context);

    return Scaffold(
      appBar: AppBar(
        actions: const [TranslationWidget()],
        backgroundColor: Colors.red[900],
      ),
      body: FadeTransition(
        opacity: _animation,
        child: HomeBackground(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    localization.solarFlares ?? 'Solar Flares',
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      shadows: [
                        Shadow(
                          blurRadius: 10.0,
                          color: Colors.yellow,
                          offset: Offset(0, 0),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    localization.selectPeriod ?? 'Select a period to view the data',
                    style: const TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      shadows: [
                        Shadow(
                          blurRadius: 10.0,
                          color: Colors.yellow,
                          offset: Offset(0, 0),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                    width: 250,
                    height: 70,
                    child: TextField(
                      controller: dateController,
                      readOnly: true,
                      onTap: () => _selectDateRange(context),
                      decoration: InputDecoration(
                        hintText: 'YYYY-MM-DD - YYYY-MM-DD',
                        hintStyle: const TextStyle(color: Colors.white54),
                        filled: true,
                        fillColor: Colors.grey[900],
                        border: const OutlineInputBorder(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10.0),
                            topRight: Radius.circular(10.0),
                          ),
                        ),
                        focusedBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.yellow),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10.0),
                            topRight: Radius.circular(10.0),
                          ),
                        ),
                      ),
                      style: const TextStyle(color: Colors.white),
                    ),
                  ),
                  const SizedBox(height: 20),
                  isLoading
                      ? StartSpinning(
                    onComplete: () {
                    },
                  )
                      : solarFlareData.isEmpty
                      ? Center(
                    child: Text(
                      localization.noEvents ?? 'Nenhum evento no período escolhido...',
                      style: const TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  )
                      : ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: solarFlareData.length,
                    itemBuilder: (context, index) {
                      return SolarFlareCard(item: solarFlareData[index]);
                    },
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}