extension DurationX on Duration {
  String toMMSS() {
    return '${inMinutes.remainder(60).toString().padLeft(2, '0')}:'
        '${inSeconds.remainder(60).toString().padLeft(2, '0')}';
  }
}
