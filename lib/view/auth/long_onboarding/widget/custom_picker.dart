import 'package:count_me/core/components/outlinedButton/custom_outlined_button.dart';
import 'package:count_me/core/constants/app/app_colors.dart';
import 'package:flutter/cupertino.dart';

class CustomPicker extends StatefulWidget {
  final String title; // "cm", "kg" gibi birimler
  final List<int> valueRange; // Gösterilecek değer aralığı
  final int initialValue; // Varsayılan olarak seçili olan değer
  final ValueChanged<int> onValueChanged; // Seçim yapıldığında çağrılır

  const CustomPicker({
    super.key,
    required this.title,
    required this.valueRange,
    required this.initialValue,
    required this.onValueChanged,
  });

  @override
  State<CustomPicker> createState() => _CustomPickerState();
}

class _CustomPickerState extends State<CustomPicker> {
  late int _selectedValueIndex;

  @override
  void initState() {
    super.initState();
    _selectedValueIndex =
        widget.valueRange.indexOf(widget.initialValue); // Varsayılan değer
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomOutlinedButton(
          isSelected: true,
          title: widget.title,
          onPressed: null,
        ),
        Flexible(
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 36.0, vertical: 60.0),
            child: CupertinoPicker(
              backgroundColor: AppColors.whiteBackground,
              itemExtent: 65.0,
              onSelectedItemChanged: (int index) {
                setState(() {
                  _selectedValueIndex = index;
                });

                widget.onValueChanged(
                    widget.valueRange[index]); // Değeri geri döndür
              },
              scrollController: FixedExtentScrollController(
                initialItem: _selectedValueIndex,
              ),
              children: widget.valueRange
                  .map((value) => Center(
                        child: Text("$value"),
                      ))
                  .toList(),
            ),
          ),
        ),
      ],
    );
  }
}
