import 'package:et_child/constants/colors.dart';
import 'package:et_child/view/custom_widgets/textFiledWidgets.dart';
import 'package:flutter/material.dart';

class DatePickerWidget extends StatefulWidget {
  final String labelText;
  final TextEditingController? controller;

  const DatePickerWidget({
    Key? key,
    required this.labelText,
    this.controller,
  }) : super(key: key);

  @override
  _DatePickerWidgetState createState() => _DatePickerWidgetState();
}

class _DatePickerWidgetState extends State<DatePickerWidget> {
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = widget.controller ?? TextEditingController();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Future<void> _selectDate(BuildContext context) async {
    DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
    );
    if (picked != null) {
      setState(() {
        _controller.text = "${picked.year}/${picked.month}/${picked.day}";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: PrimaryTextFieldWidget(
        labelText: widget.labelText,
        controller: _controller,
        readOnly: true,
        onTap: () => _selectDate(context),
        verticalPadding: 5,
        suffixIcon: Icon(
          Icons.calendar_month_rounded,
          color: AppColors.textfieldBorder,
          size: 25,
        ),
      ),
    );
  }
}
