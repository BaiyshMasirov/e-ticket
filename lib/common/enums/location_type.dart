import 'package:common/common.dart';

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
