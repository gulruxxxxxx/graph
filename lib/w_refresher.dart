import 'package:flutter/material.dart';
import 'package:smartrefresh/smartrefresh.dart';

class WRefresher extends StatelessWidget {
  final RefreshController controller;
  final Widget child;
  final VoidCallback onRefresh;

  const WRefresher(
      {super.key,
      required this.controller,
      required this.child,
      required this.onRefresh});

  @override
  Widget build(BuildContext context) {
    return PullToRefresh(
        onFail: const SizedBox(),
        onComplete: const SizedBox(),
        onLoading: const Text('Loading...'),
        onRefresh: onRefresh,
        refreshController: controller,
        child: child);
  }
}
