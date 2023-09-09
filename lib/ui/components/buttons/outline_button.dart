import 'package:edemekong/ui/components/buttons/primary_button.dart';
import 'package:edemekong/ui/components/texts/texts.dart';
import 'package:edemekong/ui/theme/spacings.dart';
import 'package:flutter/material.dart';
import '../../theme/colors.dart';

class EdOutlineButton extends StatefulWidget {
  final String title;
  final OnPressedButton onPressed;
  final bool dotted;
  final BorderRadius? borderRadius;
  final TextStyle? titleStyle;

  final ButtonState state;
  final double height;
  final Widget? icon;
  final Color? color;
  final Color? textColor;
  final double? strokeWidth;

  const EdOutlineButton({
    Key? key,
    required this.title,
    required this.onPressed,
    this.dotted = false,
    this.borderRadius,
    this.titleStyle,
    this.state = ButtonState.initial,
    this.height = 55,
    this.icon,
    this.color,
    this.textColor,
    this.strokeWidth,
  }) : super(key: key);

  @override
  State<EdOutlineButton> createState() => _EdOutlineButtonState();
}

class _EdOutlineButtonState extends State<EdOutlineButton> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    final bool disable = [ButtonState.disabled, ButtonState.loading].contains(widget.state);
    final bool isLoading = [ButtonState.loading].contains(widget.state);

    Color backgroundColor = (disable ? AppColors.primaryColor : (widget.color ?? Theme.of(context).primaryColor));
    Color? textColor = widget.textColor ?? backgroundColor;

    final defaultBorderRadius = widget.borderRadius ?? AppSpacings.defaultBorderRadius;

    return InkWell(
      onTap: disable ? null : widget.onPressed,
      borderRadius: defaultBorderRadius,
      focusColor: Theme.of(context).cardColor,
      splashColor: Theme.of(context).cardColor,
      child: Container(
        height: widget.height,
        constraints: const BoxConstraints(minWidth: 100),
        padding: const EdgeInsets.symmetric(horizontal: AppSpacings.cardPadding * 0.8),
        decoration: BoxDecoration(
          border: Border.all(color: backgroundColor, width: widget.strokeWidth ?? 0.8),
          borderRadius: defaultBorderRadius,
        ),
        child: Center(
          child: isLoading
              ? const CircularProgressIndicator()
              : Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    if (widget.icon != null) ...[
                      widget.icon!,
                      const SizedBox(width: AppSpacings.elementSpacing),
                    ],
                    EdTexts.button(
                      widget.title,
                      context,
                      color: disable ? Theme.of(context).dividerColor : textColor,
                      titleStyle: widget.titleStyle,
                    ),
                  ],
                ),
        ),
      ),
    );
  }
}
