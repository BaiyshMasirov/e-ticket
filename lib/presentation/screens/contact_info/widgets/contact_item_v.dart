import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ContactItemV extends StatelessWidget {
  static final double _iconWidth = 30.w;

  final Widget icon;
  final String title;
  final String info;
  final Color iconBackgroundColor;

  final Function()? onTapped;
  final Function()? onLongTapped;

  const ContactItemV._({
    required this.icon,
    required this.iconBackgroundColor,
    required this.title,
    required this.info,
    this.onTapped,
    this.onLongTapped,
    Key? key,
  }) : super(key: key);

  factory ContactItemV.fromSvg({
    required String svgPath,
    required Color iconBackgroundColor,
    required String title,
    required String info,
    Function()? onTapped,
    Function()? onLongTapped,
    Color? svgColor,
    Key? key,
  }) {
    return ContactItemV._(
      icon: SvgPicture.asset(
        svgPath,
        color: svgColor,
        width: _iconWidth,
        fit: BoxFit.fitWidth,
      ),
      onTapped: onTapped,
      onLongTapped: onLongTapped,
      iconBackgroundColor: iconBackgroundColor,
      title: title,
      info: info,
    );
  }

  factory ContactItemV.fromImage({
    required String imagePath,
    required Color iconBackgroundColor,
    required String title,
    required String info,
    Function()? onTapped,
    Function()? onLongTapped,
    Key? key,
  }) {
    return ContactItemV._(
      icon: Image.asset(
        imagePath,
        width: _iconWidth,
        fit: BoxFit.fitWidth,
      ),
      onTapped: onTapped,
      onLongTapped: onLongTapped,
      iconBackgroundColor: iconBackgroundColor,
      title: title,
      info: info,
    );
  }

  factory ContactItemV.fromIcon({
    required IconData iconData,
    required Color iconBackgroundColor,
    required String title,
    required String info,
    Function()? onTapped,
    Function()? onLongTapped,
    Color? iconColor,
    Key? key,
  }) {
    return ContactItemV._(
      icon: Icon(
        iconData,
        color: iconColor,
        size: _iconWidth,
      ),
      onTapped: onTapped,
      onLongTapped: onLongTapped,
      iconBackgroundColor: iconBackgroundColor,
      title: title,
      info: info,
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(40.r),
      onTap: onTapped,
      onLongPress: onLongTapped,
      child: Row(
        children: [
          CircleAvatar(
            radius: 20.r,
            backgroundColor: iconBackgroundColor,
            child: icon,
          ),
          SizedBox(width: 20.w),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title),
              SizedBox(height: 2.h),
              Text(
                info,
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
