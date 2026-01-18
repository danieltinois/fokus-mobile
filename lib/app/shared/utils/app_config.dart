import 'package:flutter/material.dart';

class AppConfig {
  // Tempos em minutos
  static const int focusTime = 25;
  static const int shortBreakTime = 5;
  static const int longBreakTime = 15;

  // Cores do tema
  static const Color backgroundColor = Color(0xFF021123); // Background padrão
  static const Color buttonColor = Color(0xFFB872FF); // Cor dos botões

  // Títulos
  static const String appTitle = 'Fokus';
  static const String focusTitle = 'Modo Foco';
  static const String shortBreakTitle = 'Pausa Curta';
  static const String longBreakTitle = 'Pausa Longa';

  // Imagens
  static const String logoImage = 'assets/logo.png';
  static const String homeImage = 'assets/home.png';
  static const String focusImage = 'assets/focus.png';
  static const String pauseImage = 'assets/pause.png';
  static const String longImage = 'assets/long.png';

  // Mensagem rodapé
  static const String footerText =
      'Projeto fictício e sem fins comerciais.\nDesenvolvido por Alura.';

  // Descrições
  static const String focusDescription = 'Concentre-se no seu trabalho';
  static const String shortBreakDescription = 'Faça uma pausa rápida';
  static const String longBreakDescription = 'Descanse um pouco mais';
}
