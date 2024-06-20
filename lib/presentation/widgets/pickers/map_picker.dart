import 'package:eticket/domain/domain.dart';
import 'package:eticket/presentation/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:map_launcher/map_launcher.dart';
import 'package:url_launcher/url_launcher.dart';

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

        final Function() onTap;

        switch (map.mapType) {
          case MapType.doubleGis:
            onTap = () => launchUrl(Uri.parse(
                'dgis://2gis.ru/geo/${location.lng},${location.lat}'));
            break;
          default:
            onTap = () => map.showMarker(
                  coords: Coords(location.lat, location.lng),
                  zoom: 14,
                  title: '',
                );
            break;
        }

        return ListTile(
          title: Text(map.mapName),
          onTap: () => onTap(),
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
