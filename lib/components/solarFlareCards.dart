import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:solar_warden/translation/localization.dart';
import 'package:solar_warden/components/helpers/solarFlares/whatIsClassTypes.dart';

class SolarFlareCard extends StatelessWidget {
  final Map<String, dynamic> item;

  const SolarFlareCard({Key? key, required this.item}) : super(key: key);

  String formatDate(String? dateStr, String locale) {
    if (dateStr == null) return 'N/A';
    DateTime date = DateTime.parse(dateStr).toUtc();

    if (locale == 'pt') {
      date = date.add(Duration(hours: 3));
    }

    date = date.toLocal();
    return locale == 'pt'
        ? DateFormat('dd/MM/yyyy - HH:mm', 'pt_BR').format(date)
        : DateFormat('yyyy/MM/dd - HH:mm').format(date);
  }

  String getLocation(int? activeRegionNum) {
    return activeRegionNum != null
        ? "Active Region Number $activeRegionNum"
        : "Location N/A";
  }

  Widget getScaleIndicator(String? classType) {
    if (classType == null) return Container();

    Map<String, int> classTypeToLevel = {
      "A": 4,
      "B": 4,
      "C": 4,
      "M1": 4,
      "M2": 4,
      "M3": 4,
      "M4": 4,
      "M5": 3,
      "M6": 3,
      "M7": 3,
      "M8": 3,
      "M9": 3,
      "X1": 2,
      "X2": 2,
      "X3": 2,
      "X4": 2,
      "X5": 2,
      "X6": 2,
      "X7": 2,
      "X8": 2,
      "X9": 2,
      "X10": 1,
      "X11": 1,
      "X12": 1,
      "X13": 1,
      "X14": 1,
      "X15": 1,
      "X16": 1,
      "X17": 1,
      "X18": 1,
      "X19": 1,
      "X20": 0,
    };

    int level = -1;
    classTypeToLevel.forEach((key, value) {
      if (classType.contains(key)) {
        level = value;
      }
    });

    return Column(
      children: [
        getPulsatingContainer('R5', Colors.red[900]!, level == 0),
        getPulsatingContainer('R4', Colors.red, level == 1),
        getPulsatingContainer('R3', Colors.orange, level == 2),
        getPulsatingContainer('R2', Colors.yellow, level == 3),
        getPulsatingContainer('R1', Colors.yellow[100]!, level == 4),
      ],
    );
  }

  Widget getPulsatingContainer(String level, Color color, bool isActive) {
    return isActive
        ? PulsatingBorder(
      child: getLevelContainer(level, color),
    )
        : getLevelContainer(level, color);
  }

  Widget getLevelContainer(String level, Color color) {
    return Container(
      height: 40,
      width: 40,
      color: color,
      child: Center(
        child: Text(
          level,
          style: TextStyle(
            color: level == 'R2' || level == 'R1' ? Colors.black : Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  void _showPopup(BuildContext context, String title, Widget content) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Colors.grey[900],
          title: Text(
            title,
            style: const TextStyle(color: Colors.white),
          ),
          content: content,
          actions: <Widget>[
            TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Colors.white12,
                foregroundColor: Colors.white,
              ),
              child: Text(AppLocalizations.of(context).closePopup ?? "Close"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final localization = AppLocalizations.of(context);
    final locale = localization.localeName;

    return Card(
      color: Colors.grey[900],
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      shadowColor: Colors.yellow,
      elevation: 10,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        '${localization.classType}: ${item['classType'] ?? 'N/A'}',
                        style: const TextStyle(
                          fontSize: 18,
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
                      IconButton(
                        icon: Icon(Icons.help_outline, color: Colors.yellow),
                        onPressed: () {
                          _showPopup(
                            context,
                            localization.whatIsClassTypes ??
                                'O que são Tipos de Classes?',
                            WhatIsClassTypes(),
                          );
                        },
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Text(
                    localization.beginTime ?? 'Begin Time',
                    style: const TextStyle(color: Colors.yellow),
                  ),
                  Text(
                    formatDate(item['beginTime'], locale),
                    style: const TextStyle(
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
                  const SizedBox(height: 8),
                  Text(
                    localization.peakTime ?? 'Peak Time',
                    style: const TextStyle(color: Colors.yellow),
                  ),
                  Text(
                    formatDate(item['peakTime'], locale),
                    style: const TextStyle(
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
                  const SizedBox(height: 8),
                  Text(
                    localization.endTime ?? 'End Time',
                    style: const TextStyle(color: Colors.yellow),
                  ),
                  Text(
                    formatDate(item['endTime'], locale),
                    style: const TextStyle(
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
                  const SizedBox(height: 8),
                  Text(
                    localization.location ?? 'Location',
                    style: const TextStyle(color: Colors.yellow),
                  ),
                  Text(
                    getLocation(item['activeRegionNum']),
                    style: const TextStyle(
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
                  if (item['note'] != null && item['note'].isNotEmpty)
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Container(
                        width: 200,
                        child: Text(
                          item['note'],
                          style: const TextStyle(
                            color: Colors.white60,
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                      ),
                    ),
                ],
              ),
            ),
            const SizedBox(width: 16),
            getScaleIndicator(item['classType']),
          ],
        ),
      ),
    );
  }
}

class PulsatingBorder extends StatefulWidget {
  final Widget child;

  const PulsatingBorder({Key? key, required this.child}) : super(key: key);

  @override
  _PulsatingBorderState createState() => _PulsatingBorderState();
}

class _PulsatingBorderState extends State<PulsatingBorder>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    )..repeat(reverse: true);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        return Container(
          margin: const EdgeInsets.symmetric(vertical: 4),
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.blue.withOpacity(_controller.value),
              width: 3.0,
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.blue.withOpacity(0.5),
                blurRadius: 10 * _controller.value,
                spreadRadius: 3 * _controller.value,
              ),
            ],
          ),
          child: widget.child,
        );
      },
      child: widget.child,
    );
  }
}