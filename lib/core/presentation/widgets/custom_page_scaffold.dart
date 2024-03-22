import 'package:flutter/material.dart';

class CustomPageScaffold extends StatelessWidget {
  final Widget child;
  final bool scrolling;
  final bool unfocus;
  final EdgeInsetsGeometry padding;
  final AppBar? appBar;
  final Color? backgroundColor;

  const CustomPageScaffold({
    super.key,
    required this.child,
    this.scrolling = true,
    this.unfocus = true,
    this.padding = EdgeInsets.zero,
    this.appBar,
    this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: appBar,
      body: GestureDetector(
        onTap: unfocus
            ? () => FocusManager.instance.primaryFocus?.unfocus()
            : null,
        child: scrolling
            ? CustomScrollView(
                slivers: [
                  SliverFillRemaining(
                    hasScrollBody: false,
                    child: Padding(
                      padding: padding,
                      child: child,
                    ),
                  ),
                ],
              )
            : Padding(
                padding: padding,
                child: child,
              ),
      ),
    );
  }
}
