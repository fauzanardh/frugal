// Autogenerated by Frugal Compiler (2.0.0-RC2)
// DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING

library actual_base_dart.src.f_base_health_condition;class base_health_condition {
  static const int PASS = 1;
  static const int WARN = 2;
  static const int FAIL = 3;
  static const int UNKNOWN = 4;

  static final Set<int> VALID_VALUES = new Set.from([
    PASS,
    WARN,
    FAIL,
    UNKNOWN,
  ]);

  static final Map<int, String> VALUES_TO_NAMES = {
    PASS: 'PASS',
    WARN: 'WARN',
    FAIL: 'FAIL',
    UNKNOWN: 'UNKNOWN',
  };
}
