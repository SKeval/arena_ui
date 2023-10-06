import 'package:flutter/material.dart';

Widget button(
    {IconData? icon,
    Image? image,
    void Function()? onPressed,
    Color? color,
    Color? bgcolor}) {
  return FloatingActionButton.small(
      heroTag: null,
      backgroundColor: bgcolor ?? Colors.white,
      onPressed: onPressed,
      child: image ?? Icon(
              icon,
              color: color ?? bgcolor,
            ));
}
