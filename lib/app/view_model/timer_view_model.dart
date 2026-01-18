import 'dart:async';

import 'package:flutter/material.dart';

class TimerViewModel extends ChangeNotifier {
  bool isPlaying = false;
  bool isRestart = false;

  Timer? _timer;
  Duration duration = Duration.zero;

  void startTimer(int initialMinutes) {
    _timer?.cancel();

    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      if (duration.inMinutes < initialMinutes) {
        duration += const Duration(seconds: 1);
        notifyListeners();
      } else {
        stopAndReset();
      }
    });
  }

  void stopAndReset() {
    isPlaying = false;
    isRestart = true;
    _timer?.cancel();
    notifyListeners();
  }

  void pauseTimer() {
    isPlaying = false;
    _timer?.cancel();
  }

  void toggleButton(int initialMinutes) {
    isPlaying = !isPlaying;
    notifyListeners();

    if (isPlaying) {
      startTimer(initialMinutes);
    } else {
      pauseTimer();
    }
  }

  void restartTimer(int initialMinutes) {
    duration = Duration.zero;
    isRestart = false;
    startTimer(initialMinutes);
    isPlaying = true;
    notifyListeners();
  }
}
