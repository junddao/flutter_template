import 'package:smatii/index.dart';

class AlarmMenu extends StatelessWidget {
  final Widget menuItem;
  final BoxDecoration? menuBoxDecoration;
  final double? menuWidth;
  final double? menuHeight;
  final double? topOffset;
  final double? bottomOffset;
  final double? leftOffset;
  final double? rightOffset;

  const AlarmMenu({
    Key? key,
    required this.menuItem,
    this.menuBoxDecoration,
    this.menuWidth,
    this.menuHeight,
    this.topOffset,
    this.bottomOffset,
    this.leftOffset,
    this.rightOffset,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              color: Colors.transparent,
            ),
          ),
          Positioned(
            top: topOffset,
            bottom: bottomOffset,
            left: leftOffset,
            right: rightOffset,
            child: Container(
              width: menuWidth,
              height: menuHeight,
              decoration: menuBoxDecoration ??
                  const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    // boxShadow: [
                    //   BoxShadow(
                    //     color: Colors.black,
                    //     blurRadius: 10,
                    //     spreadRadius: 1,
                    //   ),
                    // ],
                  ),
              child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(5.0)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: menuItem,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
