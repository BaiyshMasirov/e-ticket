import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

/// Creates [ScrollController] that will be disposed automatically.
///
/// See also:
/// - [ScrollController]
FixedExtentScrollController useFixedExtentScrollController({
  int initialItem = 0,
  List<Object?>? keys,
}) {
  return use(
    _FixedExtentScrollControllerHook(
      initialItem: initialItem,
      keys: keys,
    ),
  );
}

class _FixedExtentScrollControllerHook
    extends Hook<FixedExtentScrollController> {
  const _FixedExtentScrollControllerHook({
    required this.initialItem,
    List<Object?>? keys,
  }) : super(keys: keys);

  final int initialItem;

  @override
  HookState<FixedExtentScrollController, Hook<FixedExtentScrollController>>
      createState() => _FixedExtentScrollControllerHookState();
}

class _FixedExtentScrollControllerHookState extends HookState<
    FixedExtentScrollController, _FixedExtentScrollControllerHook> {
  late final controller = FixedExtentScrollController(
    initialItem: hook.initialItem,
  );

  @override
  FixedExtentScrollController build(BuildContext context) => controller;

  @override
  void dispose() => controller.dispose();

  @override
  String get debugLabel => 'useFixedExtentScrollController';
}
