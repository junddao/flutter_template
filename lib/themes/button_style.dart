import 'package:smatii/index.dart';

final ButtonStyle normalButton = ElevatedButton.styleFrom(
  minimumSize: const Size(64, 48),
  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(2)),
  elevation: 0,
  backgroundColor: TSColors.flyBlue700,
  foregroundColor: Colors.white,
);
final ButtonStyle normalButtonInfinity = normalButton.copyWith(
  minimumSize: MaterialStateProperty.all(const Size(double.infinity, 48)),
);

final ButtonStyle warningButton = ElevatedButton.styleFrom(
  minimumSize: const Size(64, 48),
  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(2)),
  elevation: 0,
  backgroundColor: Colors.red,
  foregroundColor: Colors.white,
);
