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

    return SizedBox(
      height: 28.h,
      child: TextFormFieldZ(
        controller: controller,
        label: '',
        inputDecoration: InputDecoration(
          filled: true,
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
            borderRadius: BorderRadius.circular(10.r),
          ),
          contentPadding: EdgeInsets.symmetric(
            horizontal: 15.w,
            vertical: 0,
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
