import 'package:eticket/presentation/widgets/alerts/snackbar_alert/snackbar_main_content.dart';
import 'package:eticket/presentation/widgets/alerts/snackbar_alert/snackbar_position.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'snackbar_overlay.dart';

class SnackBarContent extends StatefulWidget {
  final SnackbarOverlay overlay;
  final SnackbarPosition position;
  final Function(SnackbarOverlay)? onCloseClicked;
  final Duration snackbarDuration;
  final BoxDecoration? decoration;
  final Widget content;

  const SnackBarContent({
    required this.overlay,
    required this.position,
    required this.snackbarDuration,
    required this.content,
    this.decoration,
    this.onCloseClicked,
    super.key,
  });

  @override
  State<SnackBarContent> createState() => _SnackBarContentState();
}

class _SnackBarContentState extends State<SnackBarContent> {
  bool _showsSnackbar = false;
  bool _hasShownSnackbar = false;
  Future? overlayRemoveFuture;

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 10)).whenComplete(() {
      setState(() {
        _showsSnackbar = true;
      });

      overlayRemoveFuture =
          Future.delayed(widget.snackbarDuration).whenComplete(() {
        _closeNotification();
      });
    });
  }

  void _closeNotification() {
    setState(() {
      _showsSnackbar = false;
    });
    _hasShownSnackbar = true;
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedPositioned(
      left: 10.w,
      right: 10.w,
      bottom: widget.position == SnackbarPosition.top
          ? null
          : (_showsSnackbar ? 50.h : -100.h),
      top: widget.position == SnackbarPosition.top
          ? (_showsSnackbar ? 50.h : -100.h)
          : null,
      curve: Curves.fastOutSlowIn,
      duration: const Duration(milliseconds: 500),
      child: Material(
        color: Colors.transparent,
        child: _mainContent(),
      ),
      onEnd: () {
        if (_hasShownSnackbar) {
          widget.onCloseClicked?.call(widget.overlay);
        }
      },
    );
  }

  Widget _mainContent() {
    return SnackbarMainContent(
        decoration: widget.decoration,
        content: widget.content,
        onCloseButtonPressed: () {
          overlayRemoveFuture?.ignore();
          widget.onCloseClicked?.call(widget.overlay);
        });
  }
}
