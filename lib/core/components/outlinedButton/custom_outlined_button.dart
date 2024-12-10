import 'package:count_me/core/base/state/base_state.dart';
import 'package:count_me/core/constants/app/app_colors.dart';
import 'package:count_me/core/constants/enums/border_enum.dart';
import 'package:count_me/core/extension/context_extension.dart';
import 'package:flutter/material.dart';

class CustomOutlinedButton extends StatefulWidget {
  final String title;
  final String? subtitle;
  final Widget? leadingIcon;
  final IconData? trailingIcon;
  final bool? isSelected;
  final VoidCallback onPressed;
  final bool
      usePaddingForLeadingIcon; // Yeni parametre: LeadingIcon için padding kullanıp kullanmayacağımızı belirler

  const CustomOutlinedButton({
    super.key,
    required this.title,
    this.isSelected,
    required this.onPressed,
    this.subtitle,
    this.leadingIcon,
    this.trailingIcon,
    this.usePaddingForLeadingIcon = false, // Varsayılan olarak false
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
      padding: const EdgeInsets.symmetric(horizontal: 36, vertical: 7),
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
        onPressed: () {
          _toggleSelection();
          widget.onPressed();
        },
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
            Text(widget.title, style: context.textTheme.bodyLarge),
            if (widget.trailingIcon != null) Icon(widget.trailingIcon),
            if (widget.trailingIcon == null) const SizedBox(),
          ],
        ),
      ),
    );
  }
}
