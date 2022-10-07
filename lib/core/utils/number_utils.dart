class NumberUtils {
  static num parseOr(dynamic value, num defaultValue) {
    return num.tryParse(value.toString()) ?? defaultValue;
  }
}
