import 'package:edemekong/ui/components/texts/texts.dart';
import 'package:edemekong/ui/theme/spacings.dart';
import 'package:edemekong/utils/extentions/primary_extensions.dart';
import 'package:flutter/material.dart';
import '../../theme/colors.dart';

enum ButtonState { initial, loading, disabled, loaded }

typedef OnPressedButton = void Function();

class OkepointPrimaryButton extends StatefulWidget {
  final String title;
  final OnPressedButton onPressed;
  final ButtonState state;
  final BorderRadius? borderRadius;
  final double height;
  final Widget? icon;
  final Color? color;
  final Color? textColor;

  const OkepointPrimaryButton({
    super.key,
    required this.onPressed,
    this.state = ButtonState.initial,
    this.height = 48,
    required this.title,
    this.icon,
    this.color,
    this.textColor,
    this.borderRadius,
  });

  @override
  State<OkepointPrimaryButton> createState() => _OkepointPrimaryButtonState();
}

class _OkepointPrimaryButtonState extends State<OkepointPrimaryButton> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    final bool disable = [ButtonState.disabled, ButtonState.loading].contains(widget.state);
    final bool isLoading = [ButtonState.loading].contains(widget.state);

    Color backgroundColor = disable ? ((widget.color ?? Theme.of(context).primaryColor)).darken(0.3) : (widget.color ?? Theme.of(context).primaryColor);
    Color? textColor = widget.textColor;

    final defaultBorderRadius = widget.borderRadius ?? AppSpacings.defaultBorderRadius;

    return InkWell(
      onHover: (v) => setState(() => isHover = v),
      onTap: disable ? null : widget.onPressed,
      borderRadius: defaultBorderRadius,
      child: Container(
        height: widget.height,
        constraints: const BoxConstraints(minWidth: 120),
        padding: const EdgeInsets.symmetric(horizontal: AppSpacings.cardPadding),
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: defaultBorderRadius,
        ),
        child: Center(
          child: isLoading
              ? Transform.scale(
                  scale: 0.8,
                  child: CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation(textColor ?? AppColors.white),
                  ),
                )
              : Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    if (widget.icon != null) ...[
                      widget.icon!,
                      const SizedBox(width: AppSpacings.elementSpacing * 0.5),
                    ],
                    EdTexts.button(
                      widget.title,
                      context,
                      color: disable ? Theme.of(context).dividerColor : textColor,
                    ),
                  ],
                ),
        ),
      ),
    );
  }
}
