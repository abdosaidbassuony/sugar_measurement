import 'package:flutter/material.dart';
import 'package:sugar_measurement/utils/resources/color_scheme.dart';

class AlarmItemWidget extends StatefulWidget {
  const AlarmItemWidget({Key? key}) : super(key: key);

  @override
  State<AlarmItemWidget> createState() => _AlarmItemWidgetState();
}

class _AlarmItemWidgetState extends State<AlarmItemWidget> {
  bool? isActive = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      child: Card(
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(15))),
        elevation: 5,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const Text("05:25 ",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 30)),
                      Container(
                          margin: const EdgeInsets.only(bottom: 30),
                          child: const Text("AM"))
                    ],
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  const Text(
                    "Sun",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                  ),
                ],
              ),
              InkWell(
                onTap: () => _changeAlarmStatus(),
                child: Icon(
                  Icons.alarm,
                  color: isActive! ? ColorSchema.secondaryColor : Colors.grey,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  void _changeAlarmStatus() {
    setState(() {
      isActive = !isActive!;
    });
  }
}
