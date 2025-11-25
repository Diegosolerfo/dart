/// Utilities for the exercises in this package.
///
/// This file contains a helper function used by `bin/eje16.dart` and by tests
/// to compute how many pieces can be cut from a sheet and how much waste remains.

class PiecesResult {
  final int pieces;
  final double waste;

  const PiecesResult(this.pieces, this.waste);

  @override
  String toString() => 'Pieces: $pieces, Waste: $waste';
}

/// Returns the number of full pieces that can be manufactured from a sheet and
/// the leftover waste area.
///
/// Parameters:
/// - [largo]: sheet length in meters.
/// - [ancho]: sheet width in meters.
/// - [consumoPieza]: area consumed by a single piece (in square meters).
///
/// Throws [ArgumentError] if [consumoPieza] <= 0 or if dimensions are negative.
PiecesResult calculatePiecesAndWaste(double largo, double ancho, double consumoPieza) {
  if (consumoPieza <= 0) {
    throw ArgumentError.value(consumoPieza, 'consumoPieza', 'debe ser mayor que 0');
  }
  if (largo < 0 || ancho < 0) {
    throw ArgumentError('dimensiones deben ser no-negativas');
  }

  final area = largo * ancho;
  final piezas = (area / consumoPieza).floor();
  final waste = area - piezas * consumoPieza;

  return PiecesResult(piezas, waste);
}
