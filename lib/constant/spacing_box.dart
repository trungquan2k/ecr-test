import 'package:erc_test/utils/size_config.dart';
import 'package:flutter/material.dart';

class SpacingBox extends StatelessWidget {
  final double height;
  final double width;

  const SpacingBox({super.key, this.height = 0, this.width = 0});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height * SizeConfig.heightMultiplier,
      width: width * SizeConfig.widthMultiplier,
    );
  }
}
