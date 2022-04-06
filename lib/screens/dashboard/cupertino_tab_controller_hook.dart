import 'package:flutter/cupertino.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

CupertinoTabController useCupertinoTabController({
  int initialIndex = 0,
  List<Object?>? keys,
}) {
  return use(
    _CupertinoTabControllerHook(
      initialIndex: initialIndex,
      keys: keys,
    ),
  );
}

class _CupertinoTabControllerHook extends Hook<CupertinoTabController> {
  const _CupertinoTabControllerHook({
    required this.initialIndex,
    List<Object?>? keys,
  }) : super(keys: keys);

  final int initialIndex;

  @override
  HookState<CupertinoTabController, Hook<CupertinoTabController>> createState() =>
      _CupertinoTabControllerHookState();
}

class _CupertinoTabControllerHookState
    extends HookState<CupertinoTabController, _CupertinoTabControllerHook> {
  late final controller = CupertinoTabController(
    initialIndex: hook.initialIndex,
  );

  @override
  CupertinoTabController build(BuildContext context) => controller;

  @override
  void dispose() => controller.dispose();
}