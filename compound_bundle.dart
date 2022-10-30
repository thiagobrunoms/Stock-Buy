import 'bundle.dart';

class CompoundBundle extends Bundle {
  final List<Bundle> bundles = [];

  CompoundBundle({required name, minimum = 0, quantityInStock = 0}) : super(name: name, minimum: minimum, quantityInStock: quantityInStock);

  void addBundle(Bundle bundle) {
    bundles.add(bundle);
  }

  @override
  double getMaxPossibilities() {
    double min = double.infinity;

    for (Bundle bundle in bundles) {
      double max_quantity = bundle.getMaxPossibilities();

      if (max_quantity < min) {
        min = max_quantity;
      }
    }

    return min;
  }
  
}