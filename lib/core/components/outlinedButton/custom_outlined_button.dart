import 'package:count_me/core/base/state/base_state.dart';
import 'package:count_me/core/constants/app/app_colors.dart';
import 'package:count_me/core/constants/enums/border_enum.dart';
import 'package:count_me/core/extension/context_extension.dart';
import 'package:flutter/material.dart';

class CustomOutlinedButton extends StatefulWidget {
  final String title;
  final String? subtitle;
  final Widget? leadingIcon;
  final Widget? trailingIcon;
  final bool? isSelected;
  final VoidCallback? onPressed;
  final bool usePaddingForLeadingIcon;
  final EdgeInsets? padding;
  final bool useSpacer;

  const CustomOutlinedButton({
    super.key,
    required this.title,
    this.isSelected,
    required this.onPressed,
    this.subtitle,
    this.leadingIcon,
    this.trailingIcon,
    this.usePaddingForLeadingIcon = false,
    this.padding,
    this.useSpacer = false,
  });

  @override
  State<CustomOutlinedButton> createState() => _CustomOutlinedButtonState();
}

class _CustomOutlinedButtonState extends BaseState<CustomOutlinedButton> {
  late bool _isSelected;

  @override
  void initState() {
    super.initState();
    _isSelected = widget.isSelected ?? false;
  }

  void _toggleSelection() {
    setState(() {
      _isSelected = !_isSelected;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 8),
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderHelper.fix.circularRadius,
          ),
          backgroundColor:
              _isSelected ? AppColors.lightGreenBackground : AppColors.white,
          side: BorderSide(
              color: _isSelected ? AppColors.mainGreen : AppColors.lightGrey),
        ),
        onPressed: widget.onPressed != null
            ? () {
                _toggleSelection();
                widget.onPressed!();
              }
            : null,
        child: Row(
          mainAxisAlignment: widget.usePaddingForLeadingIcon
              ? MainAxisAlignment.start
              : MainAxisAlignment.spaceBetween,
          children: [
            if (widget.leadingIcon != null)
              widget.usePaddingForLeadingIcon
                  ? Padding(
                      padding: const EdgeInsets.only(
                          left: 30.0, top: 8, bottom: 8, right: 16),
                      child: widget.leadingIcon!,
                    )
                  : widget.leadingIcon!,
            if (widget.leadingIcon == null) const SizedBox(),
            Stack(
              children: [
                Padding(
                  padding: widget.padding ?? const EdgeInsets.only(left: 0.0),
                  child: Text(widget.title, style: context.textTheme.bodyLarge),
                ),
                if (widget.subtitle != null)
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 30.0,
                      top: 28,
                    ),
                    child: Text(
                      widget.subtitle!,
                      style: context.textTheme.labelSmall,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
              ],
            ),
            // Spacer kontrolü
            if (widget.useSpacer) const Spacer(),

            if (_isSelected && widget.trailingIcon != null)
              Padding(
                // Sağ kenardan 16 birim boşluk
                padding: const EdgeInsets.only(right: 16.0),
                child: widget.trailingIcon!,
              ),
            // İkon görünmese bile boşluk bırakılıyor.
            if (widget.trailingIcon == null) SizedBox(width: 16),
          ],
        ),
      ),
    );
  }
}
