import 'bundle_piece.dart';
import 'compound_bundle.dart';

void main() {
  CompoundBundle bike = CompoundBundle(minimum: 1, name: 'Bike');

  BundlePiece seat = BundlePiece(name: 'Seat', minimum: 1, quantityInStock: 50);
  BundlePiece frame = BundlePiece(name: 'Frame', minimum: 1, quantityInStock: 60);
  BundlePiece tube = BundlePiece(name: 'Tube', minimum: 2, quantityInStock: 35);
  
  CompoundBundle wheels = CompoundBundle(name: 'Wheels', minimum: 2); //TODO One wheel is composed by other pieces
  wheels.addBundle(tube);

  bike.addBundle(wheels);
  bike.addBundle(seat);
  bike.addBundle(frame);

  print('Number of bikes: ${bike.getMaxPossibilities().toInt()}');
}