import 'package:auto_route/auto_route.dart';
import 'package:common/common.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:eticket/common/common.dart';
import 'package:eticket/data/models/dictionaries/key_value_map_dto.dart';
import 'package:eticket/generated/locale_keys.g.dart';
import 'package:eticket/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:eticket/presentation/widgets/forms/forms.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:eticket/presentation/app_blocs/dictionary/dictionary_cubit.dart';

class EventsFilterBottomSheet extends HookWidget {
  final KeyValueMapDto? initialEventType;
  final KeyValueMapDto? initialEventStatus;
  final DateTime? initialDate;
  final Function() onClearFilter;
  final Function(
    DateTime? data,
    KeyValueMapDto? paymentType,
    KeyValueMapDto? eventsStatus,
  ) onSelect;

  const EventsFilterBottomSheet._({
    required this.initialEventType,
    required this.initialEventStatus,
    required this.initialDate,
    required this.onClearFilter,
    required this.onSelect,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final eventStatus = useState(initialEventStatus);
    final eventType = useState(initialEventType);
    final dateTo = useState(initialDate);

    final dateToController = useTextEditingController(
      text: DateFormatters.datetimeToSlashedNullable(initialDate),
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
            label: LocaleKeys.select_from_list.tr(),
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
            label: LocaleKeys.select_from_list.tr(),
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
          DatePickerFormFieldZ(
            controller: dateToController,
            label: LocaleKeys.date.tr(),
            value: initialDate,
            maximumDate: DateTime(DateTime.now().year + 2),
            onTap: (date) => dateTo.value = date,
          ),
          SizedBox(height: 30.h),
          PrimaryButton(
            title: LocaleKeys.search.tr(),
            onPressed: () => onSelect(
              dateTo.value,
              eventType.value,
              eventStatus.value,
            ),
          ),
          SizedBox(height: 15.h),
          TertiaryButton(
            title: LocaleKeys.clear_form.tr(),
            onPressed: () {
              eventType.value = null;
              eventStatus.value = null;
              dateTo.value = null;
              dateToController.text = '';
              onClearFilter();
            },
          ),
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
    required Function() onClearFilter,
    required Function(
      DateTime? data,
      KeyValueMapDto? paymentType,
      KeyValueMapDto? eventsStatus,
    ) onSelect,
  }) {
    showModalBottomSheet(
      showDragHandle: true,
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
        onClearFilter: onClearFilter,
        onSelect: onSelect,
      ),
    );
  }
}
