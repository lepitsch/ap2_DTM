import 'package:flutter/material.dart';

enum BloodPressureOptions { sistolica_100_a_119, sistolica_120_139, sistolica_140_159, sistolica_160_179,
                            sistolica_180_199, sistolica_acima_200 }

class BloodPressureRadioStatefulWidget extends StatefulWidget {
   final void Function(BloodPressureOptions? option) onOptionSelected;

  const BloodPressureRadioStatefulWidget({
    Key? key,
    required this.onOptionSelected,
  }) : super(key: key);

  @override
  State<BloodPressureRadioStatefulWidget> createState() => _BloodPressureRadioStatefulWidget();
}

class _BloodPressureRadioStatefulWidget extends State<BloodPressureRadioStatefulWidget> {
  BloodPressureOptions? _bloodPressure = BloodPressureOptions.sistolica_100_a_119;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        ListTile(
          title: const Text(
            'Sistólica de 100 a 119 mmHg',
            style: TextStyle(
              color: Colors.white,
              fontSize: 15
            ),
          ),
          leading: Radio<BloodPressureOptions>(
            value: BloodPressureOptions.sistolica_100_a_119,
            groupValue: _bloodPressure,
            onChanged: (BloodPressureOptions? value) {
              setState(() {
                _bloodPressure = value;
                widget.onOptionSelected(value);
              });
            },
            activeColor: Color(0xFF2FFFA0),
          ),
        ),
        ListTile(
          title: const Text(
            'Sistólica de 120 a 139 mmHg',
            style: TextStyle(
              color: Colors.white,
              fontSize: 15
            ),
          ),
          leading: Radio<BloodPressureOptions>(
            value: BloodPressureOptions.sistolica_120_139,
            groupValue: _bloodPressure,
            onChanged: (BloodPressureOptions? value) {
              setState(() {
                _bloodPressure = value;
                widget.onOptionSelected(value);

              });
            },
            activeColor: Color(0xFF2FFFA0),
          ),
        ),
        ListTile(
          title: const Text(
            'Sistólica de 140 a 159 mmHg',
            style: TextStyle(
              color: Colors.white,
              fontSize: 15
            ),
          ),
          leading: Radio<BloodPressureOptions>(
            value: BloodPressureOptions.sistolica_140_159,
            groupValue: _bloodPressure,
            onChanged: (BloodPressureOptions? value) {
              setState(() {
                _bloodPressure = value;
                widget.onOptionSelected(value);

              });
            },
            activeColor: Color(0xFF2FFFA0),
          ),
        ),
        ListTile(
          title: const Text(
            'Sistólica de 160 a 179 mmHg',
            style: TextStyle(
              color: Colors.white,
              fontSize: 15
            ),
          ),
          leading: Radio<BloodPressureOptions>(
            value: BloodPressureOptions.sistolica_160_179,
            groupValue: _bloodPressure,
            onChanged: (BloodPressureOptions? value) {
              setState(() {
                _bloodPressure = value;
                widget.onOptionSelected(value);

              });
            },
            activeColor: Color(0xFF2FFFA0),
          ),
        ),
        ListTile(
          title: const Text(
            'Sistólica de 180 a 199 mmHg',
            style: TextStyle(
              color: Colors.white,
              fontSize: 15
            ),
          ),
          leading: Radio<BloodPressureOptions>(
            value: BloodPressureOptions.sistolica_180_199,
            groupValue: _bloodPressure,
            onChanged: (BloodPressureOptions? value) {
              setState(() {
                _bloodPressure = value;
                widget.onOptionSelected(value);

              });
            },
            activeColor: Color(0xFF2FFFA0),
          ),
        ),
        ListTile(
          title: const Text(
            'Sistólica de 200 mmHg ou mais',
            style: TextStyle(
              color: Colors.white,
              fontSize: 15
            ),
          ),
          leading: Radio<BloodPressureOptions>(
            value: BloodPressureOptions.sistolica_acima_200,
            groupValue: _bloodPressure,
            onChanged: (BloodPressureOptions? value) {
              setState(() {
                _bloodPressure = value;
                widget.onOptionSelected(value);

              });
            },
            activeColor: Color(0xFF2FFFA0),
          ),
        ),
      ],
    );
  }
}