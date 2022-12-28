import 'package:flutter/material.dart';

import '../../constants/colors.dart';

class HomeWidget extends StatelessWidget {
  final double? height, width;
  final Widget child;
  final EdgeInsets? padding;
  bool? isSelected = false;
  HomeWidget({Key? key, this.height, this.width, required this.child, this.padding, this.isSelected}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: padding ?? EdgeInsets.all(4),
      height: height ,
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        color: isSelected==true ? primaryColor : notWhite,
      ),
      child: child,
    );
  }
}
