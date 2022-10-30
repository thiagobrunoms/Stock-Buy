import 'bundle.dart';

class BundlePiece extends Bundle {
  BundlePiece({required name, required minimum, required quantityInStock}) : super(name: name, minimum: minimum, quantityInStock: quantityInStock);

  @override
  double getMaxPossibilities() {
    return quantityInStock / minimum;
  }
}