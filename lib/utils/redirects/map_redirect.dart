import 'package:eticket/domain/domain.dart';
import 'package:eticket/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';

class MapRedirect {
  static Future<void> redirectTo({
    required BuildContext context,
    required LatLngModel latLngModel,
  }) async {
    MapPicker.show(context: context, location: latLngModel);
  }
}
