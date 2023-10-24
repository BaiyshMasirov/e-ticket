import 'package:eticket/common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DataFetchFailure extends StatelessWidget {
  final Function() onTryLoadAgain;
  final String? error;

  const DataFetchFailure({
    required this.onTryLoadAgain,
    required this.error,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTileTheme(
      textColor: context.colorScheme.errorContainer,
      iconColor: context.colorScheme.errorContainer,
      child: Card(
        color: context.colorScheme.onErrorContainer,
        margin: EdgeInsets.symmetric(
          horizontal: 16.w,
          vertical: 8.h,
        ),
        child: ListTile(
          title: const Text('Произошла ошибка при загрузке данных'),
          leading: const SizedBox(
            child: Icon(Icons.warning),
            height: double.infinity,
          ),
          subtitle: Text(error ?? ''),
          trailing: IconButton(
            onPressed: onTryLoadAgain,
            icon: const Icon(Icons.refresh),
          ),
        ),
      ),
    );
  }
}
