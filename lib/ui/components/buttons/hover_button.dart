import 'package:edemekong/ui/components/texts/texts.dart';
import 'package:edemekong/ui/theme/spacings.dart';
import 'package:flutter/material.dart';

import 'package:edemekong/ui/components/buttons/primary_button.dart';

enum HoverButtonState { initial, selected }

class HoverButton extends StatefulWidget {
  final String title;
  final OnPressedButton onTap;
  final HoverButtonState state;

  const HoverButton({
    Key? key,
    required this.title,
    required this.onTap,
    required this.state,
  }) : super(key: key);

  @override
  State<HoverButton> createState() => _HoverButtonState();
}

class _HoverButtonState extends State<HoverButton> {
  bool _isHover = false;

  void _onHover(bool value) {
    _isHover = value;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final isHover = _isHover;
    final isSelected = widget.state == HoverButtonState.selected;

    return InkWell(
      onHover: _onHover,
      onTap: widget.onTap,
      child: Container(
        height: 38,
        padding: const EdgeInsets.all(AppSpacings.elementSpacing),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: isSelected
              ? Theme.of(context).primaryColor
              : isHover
                  ? Theme.of(context).cardColor
                  : null,
        ),
        child: Center(
          child: EdTexts.button(widget.title, context),
        ),
      ),
    );
  }
}
