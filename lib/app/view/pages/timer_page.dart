import 'package:flutter/material.dart';
import 'package:fokus/app/shared/utils/app_config.dart';

import '../../shared/enums/timer_type.dart';
import '../widgets/timer_widget.dart';

class TimerPage extends StatelessWidget {
  final TimerType timerType;

  const TimerPage({super.key, required this.timerType});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppConfig.backgroundColor,
      appBar: AppBar(
        backgroundColor: AppConfig.backgroundColor,
        elevation: 0,
        toolbarHeight: 56,
        leadingWidth: 110,
        leading: TextButton.icon(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(Icons.arrow_back_ios, color: Colors.white, size: 20),
          label: const Text(
            'Voltar',
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children: [
              const SizedBox(height: 24),
              Expanded(child: Image.asset(timerType.imageName)),
              Text(
                timerType.title,
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 40),
              // Widget de timer
              TimerWidget(initialMinutes: timerType.minutes),
              const SizedBox(height: 32),
              Text(
                AppConfig.footerText,
                textAlign: TextAlign.center,
                style: const TextStyle(color: Colors.white54, fontSize: 13),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
