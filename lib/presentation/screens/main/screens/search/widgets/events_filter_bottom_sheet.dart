import 'package:auto_route/auto_route.dart';
import 'package:common/common.dart';
import 'package:eticket/common/common.dart';
import 'package:eticket/data/models/dictionaries/key_value_map_dto.dart';
import 'package:eticket/utils/date_format.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:eticket/presentation/widgets/forms/forms.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:eticket/presentation/app_blocs/dictionary/dictionary_cubit.dart';

class EventsFilterBottomSheet extends HookWidget {
  final KeyValueMapDto? initialEventType;
  final KeyValueMapDto? initialEventStatus;
  final DateTime? initialDate;
  final String? text;
  final Function() onClearFilter;
  final Function(DateTime? data, KeyValueMapDto? paymentType,
      KeyValueMapDto? eventsStatus, String? text) onSelect;

  const EventsFilterBottomSheet._({
    required this.initialEventType,
    required this.initialEventStatus,
    required this.initialDate,
    required this.text,
    required this.onClearFilter,
    required this.onSelect,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final eventStatus = useState(initialEventStatus);
    final eventType = useState(initialEventType);
    final dateTo = useState(initialDate);

    final textController = useTextEditingController();

    final dateToController = useTextEditingController(
      text: initialDate == null ? '' : initialDate!.formatDateTime,
    );

    final eventTypesList =
        useMemoized(() => context.read<DictionaryCubit>().state.eventTypes);

    final eventStatusList =
        useMemoized(() => context.read<DictionaryCubit>().state.eventStatuses);

    return Padding(
      padding: EdgeInsets.all(15.r),
      child: ListView(
        shrinkWrap: true,
        children: [
          DropDownFormFieldZ<KeyValueMapDto>(
            label: 'Выберите из списка',
            value: eventType.value != null
                ? DropDownFormFieldZModel<KeyValueMapDto>(
                    eventType.value!.value, eventType.value!)
                : null,
            items: eventTypesList
                .map((e) => DropDownFormFieldZModel(e.value, e))
                .toList(),
            onChanged: (value) => eventType.value = value,
          ),
          SizedBox(height: 10.h),
          DropDownFormFieldZ<KeyValueMapDto>(
            label: 'Выберите из списка',
            value: eventStatus.value != null
                ? DropDownFormFieldZModel<KeyValueMapDto>(
                    eventStatus.value!.value, eventStatus.value!)
                : null,
            items: eventStatusList
                .map((e) => DropDownFormFieldZModel(e.value, e))
                .toList(),
            onChanged: (value) => eventStatus.value = value,
          ),
          SizedBox(height: 10.h),
          TextFormFieldZ(
            controller: textController,
            checkForNullEmpty: true,
            label: 'text',
          ),
          SizedBox(height: 10.h),
          DatePickerFormFieldZ(
            controller: dateToController,
            label: 'Дата ',
            onTap: (date) => dateTo.value = date,
          ),
          SizedBox(height: 30.h),
          SizedBox(
            height: 44.h,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: context.colorScheme.onError,
                foregroundColor: context.colorScheme.secondary,
              ),
              onPressed: () {
                eventType.value = null;
                eventStatus.value = null;
                dateTo.value = null;
                textController.text = '';
                dateToController.text = '';
                onClearFilter();
              },
              child: const Text('Очистить форму'),
            ),
          ),
          SizedBox(height: 15.h),
          SizedBox(
            height: 44.h,
            child: ElevatedButton(
              onPressed: () {
                onSelect(dateTo.value, eventType.value, eventStatus.value,
                    textController.text);

                context.popRoute();
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: context.colorScheme.onPrimary,
                foregroundColor: context.colorScheme.primary,
              ),
              child: const Text('Поиск'),
            ),
          )
        ],
      ),
    );
  }

  // ignore: always_declare_return_types
  static showBottomSheet({
    required BuildContext context,
    required KeyValueMapDto? initialEventType,
    required KeyValueMapDto? initialEventStatus,
    required DateTime? initialDate,
    required String? text,
    required Function() onClearFilter,
    required Function(DateTime? data, KeyValueMapDto? paymentType,
            KeyValueMapDto? eventsStatus, String? text)
        onSelect,
  }) {
    showModalBottomSheet(
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(15.0),
        ),
      ),
      context: context,
      builder: (context) => EventsFilterBottomSheet._(
        initialEventType: initialEventType,
        initialEventStatus: initialEventStatus,
        initialDate: initialDate,
        text: text,
        onClearFilter: onClearFilter,
        onSelect: onSelect,
      ),
    );
  }
}
