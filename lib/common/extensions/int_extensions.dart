extension IntX on int {
  List<int> to(int destination) {
    return List.generate(destination - this, (index) => index + this);
  }
}
