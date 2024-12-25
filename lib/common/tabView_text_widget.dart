import 'package:bloc_demo/constant/app_spacer_constants.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:google_fonts/google_fonts.dart';

class TabViewTextWidget extends StatelessWidget {
  final double? fontSize;
  final FontWeight? fontWeight;
  final Color? color;
  final String text;
  final TextStyle? style;
  final TextAlign? textAlign;
  final int? maxLines;
  final double? height;
  final bool showLocationIcon;
  final FontStyle? fontStyle;

  TabViewTextWidget(
      {Key? key,
      this.fontSize,
      this.color,
      this.textAlign,
      this.fontWeight,
      required this.text,
      this.showLocationIcon = false,
      this.style,
      this.maxLines,
      this.fontStyle,
      this.height})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return showLocationIcon
        ? Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(Icons.location_pin, color: Color(0xFF2962FF), size: 20),
              AppSpacer.p8(),
              Expanded(
                flex: 15,
                child: Text(
                  text,
                  maxLines: maxLines ?? 1,
                  textAlign: textAlign ?? TextAlign.left,
                  overflow: TextOverflow.ellipsis,
                  style: style,
                ),
              ),
            ],
          )
        : Text(
            text,
            maxLines: maxLines ?? 1,
            textAlign: textAlign ?? TextAlign.left,
            overflow: TextOverflow.ellipsis,
            style: style,
          );
  }
}
