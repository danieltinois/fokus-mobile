enum TimerType {
  focus('Modo Foco', 25, 'assets/focus.png'),
  shortBreak('Pausa Curta', 5, 'assets/pause.png'),
  longBreak('Pausa Longa', 15, 'assets/long.png');

  const TimerType(this.title, this.minutes, this.imageName);

  final String title;
  final int minutes;
  final String imageName;
}
