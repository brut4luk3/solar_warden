import 'package:flutter/material.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import '../../../components/backgroundSun.dart';
import '../../../components/startSpinning.dart';
import '../../home/widgets/homeScreen.dart';
import '../../../translation/localization.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> with TickerProviderStateMixin {
  late AnimationController _controller1;
  late AnimationController _controller2;
  late AnimationController _controller3;
  bool _showSpinning = false;

  @override
  void initState() {
    super.initState();
    _controller1 = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );
    _controller2 = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );
    _controller3 = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );

    _controller1.forward();
    _controller1.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        _controller2.forward();
      }
    });
    _controller2.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        _controller3.forward();
      }
    });

    // Assine o tópico "all"
    FirebaseMessaging.instance.subscribeToTopic('all');
  }

  @override
  void dispose() {
    _controller1.dispose();
    _controller2.dispose();
    _controller3.dispose();
    super.dispose();
  }

  void _startAnimation() {
    setState(() {
      _showSpinning = true;
    });
  }

  void _navigateToHome() {
    Navigator.of(context).pushReplacement(
      PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) => const HomeScreen(),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          return FadeTransition(
            opacity: animation,
            child: child,
          );
        },
        transitionDuration: const Duration(seconds: 2),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundSun(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                const SizedBox(height: 150),
                FadeTransition(
                  opacity: _controller1,
                  child: const Text(
                    'Solar Warden',
                    style: TextStyle(
                      fontSize: 45,
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
                ),
                const SizedBox(height: 10),
                FadeTransition(
                  opacity: _controller2,
                  child: Text(
                    AppLocalizations.of(context).eyeInTheSky!,
                    style: const TextStyle(
                      fontSize: 28,
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
                ),
                const SizedBox(height: 80),
                FadeTransition(
                  opacity: _controller3,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      if (_showSpinning)
                        StartSpinning(onComplete: _navigateToHome)
                      else
                        ElevatedButton(
                          onPressed: () {
                            _startAnimation();
                            Future.delayed(const Duration(seconds: 2), () {
                              _navigateToHome();
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.grey[900],
                            shape: const CircleBorder(),
                            shadowColor: Colors.yellow,
                            elevation: 20,
                            padding: const EdgeInsets.all(50),
                          ),
                          child: Text(
                            AppLocalizations.of(context).start!,
                            style: const TextStyle(
                              color: Colors.yellow,
                              fontSize: 28,
                            ),
                          ),
                        ),
                    ],
                  ),
                ),
                const SizedBox(height: 270),
                FadeTransition(
                  opacity: _controller3,
                  child: Text(
                    AppLocalizations.of(context).by!,
                    style: const TextStyle(
                      fontSize: 16,
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
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}