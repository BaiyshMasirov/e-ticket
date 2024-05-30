import 'package:auto_route/auto_route.dart';
import 'package:eticket/domain/domain.dart';
import 'package:eticket/generated/locale_keys.g.dart';
import 'package:eticket/presentation/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:map_launcher/map_launcher.dart';

class MapPicker extends StatelessWidget {
  final LatLngModel location;
  final List<AvailableMap> maps;

  const MapPicker._({
    required this.location,
    required this.maps,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      padding: EdgeInsets.only(
        top: kDefaultPadding,
        bottom: kDefaultPadding,
      ),
      itemCount: maps.length,
      itemBuilder: (_, i) {
        final map = maps[i];

        return ListTile(
          title: Text(map.mapName),
          onTap: () => map.showMarker(
            coords: Coords(location.lat, location.lat),
            zoom: 14,
            title: '',
          ),
          leading: SvgPicture.asset(
            map.icon,
            width: 30.w,
            fit: BoxFit.fitWidth,
          ),
          trailing: Icon(
            Icons.chevron_right_rounded,
            size: 30.w,
          ),
        );
      },
    );
  }

  static Future<void> show({
    required BuildContext context,
    required LatLngModel location,
  }) async {
    List<AvailableMap> maps;

    try {
      maps = await MapLauncher.installedMaps;
    } catch (e) {
      maps = [];
    }

    if (context.mounted) {
      showModalBottomSheet(
        context: context,
        showDragHandle: true,
        builder: (context) => MapPicker._(
          location: location,
          maps: maps,
        ),
      );
    }
  }
}
