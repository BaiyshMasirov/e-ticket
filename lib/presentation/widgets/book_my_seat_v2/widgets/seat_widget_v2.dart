import 'package:eticket/presentation/widgets/book_my_seat_v2/book_my_seat_v2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SeatWidgetV2 extends StatefulWidget {
  final SeatModelV2 model;

  final PlaceStateV2 Function(
    int currentIndex,
    int placeNumber,
    PlaceStateV2 currentState,
    String? ticketId,
  ) onSeatStateChanged;

  const SeatWidgetV2({
    required this.model,
    required this.onSeatStateChanged,
    Key? key,
  }) : super(key: key);

  @override
  State<SeatWidgetV2> createState() => _SeatWidgetV2State();
}

class _SeatWidgetV2State extends State<SeatWidgetV2> {
  PlaceStateV2? seatState;

  @override
  void initState() {
    super.initState();
    seatState = widget.model.seatState;
  }

  @override
  Widget build(BuildContext context) {
    final Widget child;
    final safeCheckedSeatState = seatState;

    if (safeCheckedSeatState == null) {
      return const SizedBox.shrink();
    }

    switch (seatState) {
      case PlaceStateV2.empty:
        child = Container(
          color: Colors.red,
          height: widget.model.seatSvgSize,
          width: widget.model.seatSvgSize,
        );
      case PlaceStateV2.emptyHalf:
        child = Container(
          color: Colors.blue,
          height: widget.model.seatSvgSize,
          width: widget.model.seatSvgSize / 2,
        );
      case PlaceStateV2.text:
        child = SizedBox(
          height: widget.model.seatSvgSize,
          width: widget.model.seatSvgSize * 2,
          child: FittedBox(
            child: Text(
              widget.model.rowLabel,
            ),
          ),
        );
      case PlaceStateV2.bigText:
        child = SizedBox(
          height: widget.model.seatSvgSize,
          width: widget.model.seatSvgSize * 4,
          child: FittedBox(
            child: Text(
              widget.model.bigText,
            ),
          ),
        );
      default:
        child = Stack(
          children: [
            SvgPicture.asset(
              _getSvgPath(safeCheckedSeatState),
              height: widget.model.seatSvgSize,
              width: widget.model.seatSvgSize,
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: widget.model.seatSvgSize,
              width: widget.model.seatSvgSize,
              child: Padding(
                padding: widget.model.seatPlaceTextPadding,
                child: FittedBox(
                  child: Text(
                    widget.model.seatPlace.toString(),
                  ),
                ),
              ),
            ),
          ],
        );
    }

    if (seatState != PlaceStateV2.selected &&
        seatState != PlaceStateV2.unselected) {
      return child;
    }

    return GestureDetector(
      onTapUp: (_) {
        switch (seatState) {
          case PlaceStateV2.selected:
            {
              final newSeatState = widget.onSeatStateChanged(
                widget.model.currentRowIndex,
                widget.model.seatPlace,
                PlaceStateV2.selected,
                widget.model.ticketId,
              );
              seatState = newSeatState;
              setState(() {});
            }
            break;
          case PlaceStateV2.unselected:
            {
              final newSeatState = widget.onSeatStateChanged(
                widget.model.currentRowIndex,
                widget.model.seatPlace,
                PlaceStateV2.unselected,
                widget.model.ticketId,
              );
              seatState = newSeatState;
              setState(() {});
            }
            break;
          case PlaceStateV2.disabled:
          case PlaceStateV2.sold:
          case PlaceStateV2.empty:
          default:
            {}
            break;
        }
      },
      child: Tooltip(
        enableFeedback: true,
        message: '${widget.model.rowLabel} / Место ${widget.model.seatPlace}',
        triggerMode: TooltipTriggerMode.longPress,
        child: child,
      ),
    );
  }

  String _getSvgPath(PlaceStateV2 state) {
    switch (state) {
      case PlaceStateV2.unselected:
        {
          return widget.model.pathUnSelectedSeat;
        }
      case PlaceStateV2.selected:
        {
          return widget.model.pathSelectedSeat;
        }
      case PlaceStateV2.disabled:
        {
          return widget.model.pathDisabledSeat;
        }
      case PlaceStateV2.sold:
        {
          return widget.model.pathSoldSeat;
        }
      case PlaceStateV2.empty:
      default:
        {
          return widget.model.pathDisabledSeat;
        }
    }
  }
}
