import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hive_flutter/hive_flutter.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _checkStartupState();
    });
  }

  Future<void> _checkStartupState() async {
    try {
      await Future.delayed(const Duration(milliseconds: 300));

      if (!mounted) return;

      final box = Hive.box('settings');
      final onboardingSeen = box.get('onboarding_seen', defaultValue: false);

      if (!mounted) return;

      if (!onboardingSeen) {
        context.go('/onboarding');
        return;
      }

      context.go('/login');
    } catch (e) {
      debugPrint('Splash startup check failed: $e');

      if (!mounted) return;

      context.go('/login');
    }
  }

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: Center(
        child: Image.asset(
          isDark ? 'assets/splash_dark.gif' : 'assets/splash_light.gif',
          fit: BoxFit.contain,
           width: 300,
        ),
      ),
    );
  }
}
