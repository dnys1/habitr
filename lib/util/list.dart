extension ListX<T> on List<T> {
  List<T> spacedBy(T spacer) {
    return [
      for (var i = 0; i < length - 1; i++) ...[this[i], spacer],
      last,
    ];
  }

  List<T> spacedByAll(List<T> spacers) {
    return [
      for (var i = 0; i < length - 1; i++) ...[this[i], ...spacers],
      last,
    ];
  }
}

extension NullableList<T> on List<T>? {
  List<T> get orEmpty => this ?? <T>[];
}
