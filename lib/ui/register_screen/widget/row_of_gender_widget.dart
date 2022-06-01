import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sugar_measurement/data/user_model.dart';

import '../../../bloc/register_bloc.dart';

class RowOfGenderWidget extends StatefulWidget {
  const RowOfGenderWidget({Key? key}) : super(key: key);

  @override
  _RowOfGenderWidgetState createState() => _RowOfGenderWidgetState();
}

class _RowOfGenderWidgetState extends State<RowOfGenderWidget> {
  GenderType genderType = GenderType.male;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(width: 8),
        const Text("Gender:"),
        Row(
          children: [
            Radio<GenderType>(
              value: GenderType.male,
              onChanged: (value) {
                setState(() {
                  genderType = value!;
                });
                BlocProvider.of<AuthBloc>(context).genderType = value;
              },
              groupValue: genderType,
            ),
            const Text("Male")
          ],
        ),
        Row(
          children: [
            Radio<GenderType>(
              value: GenderType.female,
              onChanged: (value) {
                setState(() {
                  genderType = value!;
                });
                BlocProvider.of<AuthBloc>(context).genderType = value;
              },
              groupValue: genderType,
            ),
            const Text("Female")
          ],
        ),
      ],
    );
  }
}
