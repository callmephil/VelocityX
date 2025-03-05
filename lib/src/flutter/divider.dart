import 'package:flutter/material.dart';

enum VxDividerType {
  horizontal,
  vertical,
}

class VxDivider extends StatelessWidget {
  const VxDivider({
    super.key,
    this.type = VxDividerType.horizontal,
    this.color,
    this.width = 1,
    this.indent,
    this.endIndent,
  });
  final VxDividerType type;
  final Color? color;
  final double width;
  final double? indent;
  final double? endIndent;

  @override
  Widget build(BuildContext context) {
    final dividerTheme = DividerTheme.of(context);
    final indent = this.indent ?? dividerTheme.indent ?? 0.0;
    final endIndent = this.endIndent ?? dividerTheme.endIndent ?? 0.0;

    final effectiveColor =
        color ?? dividerTheme.color ?? Theme.of(context).dividerColor;

    if (type == VxDividerType.horizontal) {
      return Container(
        height: width,
        margin: EdgeInsetsDirectional.only(start: indent, end: endIndent),
        color: effectiveColor,
      );
    }
    return Container(
      width: width,
      margin: EdgeInsetsDirectional.only(top: indent, bottom: endIndent),
      color: effectiveColor,
    );
  }
}
