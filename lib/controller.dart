import 'package:flutter/cupertino.dart';

class controller extends InheritedWidget {
  controller({Key? key, required Widget child})
      : super(
          key: key,
          child: child,
        );

  int val = 18448;

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    // TODO: implement updateShouldNotify
    return false;
  }
}
