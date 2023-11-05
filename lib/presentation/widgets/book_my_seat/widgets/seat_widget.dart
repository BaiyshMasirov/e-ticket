import 'package:eticket/presentation/widgets/book_my_seat/book_my_seat.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SeatWidget extends StatefulWidget {
  final SeatModel model;

  final SeatState Function(
    int rowI,
    int colI,
    SeatState currentState,
  ) onSeatStateChanged;

  const SeatWidget({
    required this.model,
    required this.onSeatStateChanged,
    Key? key,
  }) : super(key: key);

  @override
  State<SeatWidget> createState() => _SeatWidgetState();
}

class _SeatWidgetState extends State<SeatWidget> {
  SeatState? seatState;
  int rowI = 0;
  int colI = 0;

  @override
  void initState() {
    super.initState();
    seatState = widget.model.seatState;
    rowI = widget.model.rowI;
    colI = widget.model.colI;
  }

  @override
  Widget build(BuildContext context) {
    final safeCheckedSeatState = seatState;
    if (safeCheckedSeatState != null) {
      return GestureDetector(
        onTapUp: (_) {
          switch (seatState) {
            case SeatState.selected:
              {
                final newSeatState = widget.onSeatStateChanged(
                  rowI,
                  colI,
                  SeatState.selected,
                );
                seatState = newSeatState;
                setState(() {});
              }
              break;
            case SeatState.unselected:
              {
                final newSeatState = widget.onSeatStateChanged(
                  rowI,
                  colI,
                  SeatState.unselected,
                );
                seatState = newSeatState;
                setState(() {});
              }
              break;
            case SeatState.disabled:
            case SeatState.sold:
            case SeatState.empty:
            default:
              {}
              break;
          }
        },
        child: seatState != SeatState.empty
            ? Stack(
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
              )
            : SizedBox(
                height: widget.model.seatSvgSize,
                width: widget.model.seatSvgSize,
              ),
      );
    }
    return const SizedBox();
  }

  String _getSvgPath(SeatState state) {
    switch (state) {
      case SeatState.unselected:
        {
          return widget.model.pathUnSelectedSeat;
        }
      case SeatState.selected:
        {
          return widget.model.pathSelectedSeat;
        }
      case SeatState.disabled:
        {
          return widget.model.pathDisabledSeat;
        }
      case SeatState.sold:
        {
          return widget.model.pathSoldSeat;
        }
      case SeatState.empty:
      default:
        {
          return widget.model.pathDisabledSeat;
        }
    }
  }
}
