import 'package:eticket/utils/utils.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_booking_command_dto.freezed.dart';
part 'create_booking_command_dto.g.dart';

@freezed
class CreateBookingCommandDto with _$CreateBookingCommandDto {
  const CreateBookingCommandDto._();
  const factory CreateBookingCommandDto({
    required String? customerName,
    required String? customerEmail,
    required String? customerPhone,
    required int paymentType,
    required String eventId,
    required int ticketCount,
    required double bookingSum,
  }) = _CreateBookingCommandDto;

  factory CreateBookingCommandDto.fromJson(Json json) =>
      _$CreateBookingCommandDtoFromJson(json);
}
