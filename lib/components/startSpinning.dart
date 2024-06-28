import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class StartSpinning extends StatefulWidget {
  final VoidCallback onComplete;

  const StartSpinning({Key? key, required this.onComplete}) : super(key: key);

  @override
  _StartSpinningState createState() => _StartSpinningState();
}

class _StartSpinningState extends State<StartSpinning> with TickerProviderStateMixin {
  late AnimationController _spinnerController;

  @override
  void initState() {
    super.initState();
    _spinnerController = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    )..addStatusListener((status) async {
      if (status == AnimationStatus.completed) {
        widget.onComplete();
      }
    });

    _spinnerController.forward();
  }

  @override
  void dispose() {
    _spinnerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SpinKitCircle(
      color: Colors.yellow,
      size: 100.0,
      controller: _spinnerController,
    );
  }
}