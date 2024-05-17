import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Constants {
  static String envFileName = '.env';

  static String ticketBookingDB = 'ticket.booking';

  static const Locale defaultLocale = Locale('ru');

  static const List<Locale> locales = [defaultLocale];

  static const initialPage = 1;
  static const initialPageSize = 20;

  static const heroHistoryCachedTitleTag = 'heroHistoryCachedTitleTag';
}

final double seatSvgSize = 4.8.w;
