import 'package:count_me/core/base/state/base_state.dart';
import 'package:count_me/core/constants/app/app_colors.dart';
import 'package:count_me/core/constants/enums/border_enum.dart';
import 'package:count_me/core/extension/context_extension.dart';
import 'package:flutter/material.dart';

class CustomOutlinedButton extends StatefulWidget {
  final String title;
  final String? subtitle;
  final IconData? leadingIcon;
  final IconData? trailingIcon;
  final bool? isSelected;
  final VoidCallback onPressed;

  const CustomOutlinedButton({
    super.key,
    required this.title,
    this.isSelected,
    required this.onPressed,
    this.subtitle,
    this.leadingIcon,
    this.trailingIcon,
  });

  @override
  State<CustomOutlinedButton> createState() => _CustomOutlinedButtonState();
}

class _CustomOutlinedButtonState extends BaseState<CustomOutlinedButton> {
  late bool _isSelected;
  @override
  void initState() {
    super.initState();
    _isSelected = widget.isSelected ?? false; // Başlangıç değerini al
  }

  void _toggleSelection() {
    setState(() {
      _isSelected = !_isSelected; // Durumu tersine çevir
    });
  }

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
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
        _toggleSelection(); // Durumu değiştir
        widget.onPressed(); // Dışarıdan gelen onPressed fonksiyonunu çağır
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          if (widget.leadingIcon != null) Icon(widget.leadingIcon),
          if (widget.leadingIcon == null) const SizedBox(),
          Text(
            widget.title,
            style: context.textTheme.bodyLarge,
          ),
          if (widget.trailingIcon != null) Icon(widget.trailingIcon),
          if (widget.trailingIcon == null) const SizedBox(),
        ],
      ),
    );
  }
}
