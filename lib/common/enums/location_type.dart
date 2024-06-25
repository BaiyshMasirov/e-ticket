import 'package:easy_localization/easy_localization.dart';
import 'package:eticket/generated/locale_keys.g.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

enum LocationType {
  // [Display(Name = "Без рассадки")]
  @JsonValue(0)
  noSeating, //DONE

  // [Display(Name = "Дворец спорта")]
  @JsonValue(1)
  sportPalace, //DONE (need to rewrite)

  // [Display(Name = "Бишкек Арена")]
  @JsonValue(2)
  bishkekArena, //DONE

  // [Display(Name = "Стадион Спартак")]
  @JsonValue(3)
  spartakStadium,

  // [Display(Name = "Театр оперы и балета")]
  @JsonValue(4)
  balletTheater, //DONE

  // [Display(Name = "Филармония")]
  @JsonValue(5)
  philarmonic, //BEKA: in progress

  // [Display(Name = "Русский драматический театр")]
  @JsonValue(6)
  ruDramTheater, // DONE

  // [Display(Name = "Кыргызский драматический театр")]
  @JsonValue(7)
  kgDramTheater, // DONE

  // [Display(Name = "Национальный театр")]
  @JsonValue(8)
  nationalTheater, // ?

  @JsonValue(9)
  mapleLeaf,

  unknown,
}

extension LocationTypeX on LocationType {
  String get localizedName {
    switch (this) {
      case LocationType.noSeating:
        return LocaleKeys.noSeating.tr();
      case LocationType.sportPalace:
        return LocaleKeys.sportPalace.tr();
      case LocationType.bishkekArena:
        return LocaleKeys.bishkekArena.tr();
      case LocationType.spartakStadium:
        return LocaleKeys.spartakStadium.tr();
      case LocationType.balletTheater:
        return LocaleKeys.balletTheater.tr();
      case LocationType.philarmonic:
        return LocaleKeys.philarmonic.tr();
      case LocationType.ruDramTheater:
        return LocaleKeys.ruDramTheater.tr();
      case LocationType.kgDramTheater:
        return LocaleKeys.kgDramTheater.tr();
      case LocationType.nationalTheater:
        return LocaleKeys.nationalTheater.tr();
      case LocationType.mapleLeaf:
        return LocaleKeys.mapleLeaf.tr();
      default:
        return '-';
    }
  }
}
