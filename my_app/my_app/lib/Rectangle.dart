class Rectangle {
  late int _width;
  late int _length;

  int get GetWidth => _width;
  int get GetLength => _length;

  set SetLength(int value) {
    if (value >= 0) {
      _length = value;
    } else {
      print('Not a valid value');
    }
  }

  set SetWidth(int value) {
    if (value >= 0) {
      _length = value;
    } else {
      print('Not a valid value');
    }
  }

  Rectangle(this._width, this._length);
}
