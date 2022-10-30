import 'bundle.dart';

class BundlePiece extends Bundle {
  BundlePiece({required super.name, required super.minimum, required super.quantityInStock});

  @override
  double getMaxPossibilities() {
    return quantityInStock / minimum;
  }
}