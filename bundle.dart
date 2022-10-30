abstract class Bundle {
  final String name;
  final int minimum;
  final int quantityInStock;
  
  Bundle({required this.name, required this.minimum, required this.quantityInStock});

  double getMaxPossibilities() => quantityInStock / minimum;
}