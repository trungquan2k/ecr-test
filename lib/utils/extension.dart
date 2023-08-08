import 'package:erc_test/core/screen_edit.dart';
import 'package:erc_test/main.dart';

extension NUMX on num {
  double get resize =>
      Screen.resizeFitDevice(navigatorKey.currentContext!, toDouble());
}
