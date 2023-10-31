import 'package:eticket/common/common.dart';
import 'package:eticket/presentation/widgets/widgets.dart';
import 'package:eticket/utils/utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

final _bR = BorderRadius.circular(20.r);

class SearchBarZ extends HookWidget {
  final TextEditingController controller;
  final Function() onClear;
  final Function(String value) onTyped;

  const SearchBarZ({
    required this.controller,
    required this.onClear,
    required this.onTyped,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final showClearButton = useState(false);
    final debouncer = useMemoized(() => Debouncer(milliseconds: 600));

    return Container(
      decoration: BoxDecoration(
        borderRadius: _bR,
        color: context.colorScheme.secondaryContainer,
      ),
      margin: EdgeInsets.symmetric(
        horizontal: 20.w,
        vertical: 10.h,
      ),
      child: TextFormFieldZ(
        controller: controller,
        label: '',
        inputDecoration: InputDecoration(
          suffixIcon: showClearButton.value
              ? InkWell(
                  onTap: () {
                    showClearButton.value = false;
                    controller.clear();

                    onClear();
                  },
                  child: Icon(
                    CupertinoIcons.xmark_circle_fill,
                    size: 20.w,
                  ),
                )
              : null,
          border: OutlineInputBorder(
            borderRadius: _bR,
          ),
          contentPadding: EdgeInsets.symmetric(
            horizontal: 15.w,
          ),
        ),
        onChanged: (text) {
          showClearButton.value = text.isNotEmpty;

          debouncer.run(() {
            print('sdfasdfasdf');
            onTyped(text);
          });
        },
      ),
    );
  }
}
