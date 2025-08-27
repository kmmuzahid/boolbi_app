import 'package:boolbi_app/const/uitls/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:boolbi_app/utils/app_size.dart';
import 'package:boolbi_app/utils/gap.dart';
import 'package:boolbi_app/widgets/texts/app_text.dart';

Future<DateTime?> customShowDatePicker({
  required BuildContext context,
  DateTime? initialDate,
  DateTime? firstDate,
  DateTime? lastDate,
}) {
  return showDialog<DateTime>(
    context: context,
    builder: (BuildContext context) {
      return CustomDatePickerDialog(
        initialDate: initialDate ?? DateTime.now(),
        firstDate: firstDate ?? DateTime(1900),
        lastDate: lastDate ?? DateTime(2100),
      );
    },
  );
}

class CustomDatePickerDialog extends StatefulWidget {
  final DateTime initialDate;
  final DateTime firstDate;
  final DateTime lastDate;

  const CustomDatePickerDialog({
    super.key,
    required this.initialDate,
    required this.firstDate,
    required this.lastDate,
  });

  @override
  State createState() => _CustomDatePickerDialogState();
}

class _CustomDatePickerDialogState extends State<CustomDatePickerDialog> {
  late DateTime _selectedDate;

  @override
  void initState() {
    super.initState();
    _selectedDate = widget.initialDate;
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          // Remove or modify the header here
          // The original header code would be removed or commented out

          // The calendar itself

          Padding(
            padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
            child: Theme(
              data: ThemeData(
                colorScheme: const ColorScheme.light(
                  primary: AppColors.primary,
                ),
              ),
              child: CalendarDatePicker(
                initialDate: _selectedDate,
                firstDate: widget.firstDate,
                lastDate: widget.lastDate,
                onDateChanged: (DateTime date) {
                  setState(() {
                    _selectedDate = date;
                  });
                },
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).pop(_selectedDate);
            },
            child: Container(
              padding: EdgeInsets.symmetric(
                  vertical: AppSize.width(value: 10.0),
                  horizontal: AppSize.width(value: 30.0)),
              decoration: BoxDecoration(
                  color: AppColors.primary,
                  borderRadius:
                      BorderRadius.circular(AppSize.width(value: 10))),
              child: const AppText(
                data: "Apply",
                color: AppColors.white,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),

          const Gap(height: 30)
        ],
      ),
    );
  }
}
