import 'package:flutter/material.dart';

enum WheightOptions { inferior_2_3_peso_normal, menos_2_3_mais_2_3_peso_normal, de_2_4_a_9_acima_peso_normal,
                      de_9_1_a_15_9_acima_peso_normal, de_16_a_22_9_acima_peso_normal, mais_23_acima_peso_normal }

class WheightRadioStatefulWidget extends StatefulWidget {
  //final void Function(WheightOptions? option) onOptionSelected;

  const WheightRadioStatefulWidget({
    Key? key,
    //required this.onOptionSelected,
    }) : super(key: key);

  @override
  State<WheightRadioStatefulWidget> createState() => _WheightRadioStatefulWidget();
}

class _WheightRadioStatefulWidget extends State<WheightRadioStatefulWidget> {
  WheightOptions? _wheight = WheightOptions.inferior_2_3_peso_normal;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        ListTile(
          title: const Text(
            'Inferior a 2,3 Kg do peso normal',
            style: TextStyle(
              color: Colors.white,
              fontSize: 15
            ),
          ),
          leading: Radio<WheightOptions>(
            value: WheightOptions.inferior_2_3_peso_normal,
            groupValue: _wheight,
            onChanged: (WheightOptions? value) {
              setState(() {
                _wheight = value;
                //widget.onOptionSelected(value);
              });
            },
            activeColor: Color(0xFF2FFFA0),
          ),
        ),
        ListTile(
          title: const Text(
            'Menos de 2,3 a mais de 2,3 Kg do peso normal',
            style: TextStyle(
              color: Colors.white,
              fontSize: 15
            ),
          ),
          leading: Radio<WheightOptions>(
            value: WheightOptions.menos_2_3_mais_2_3_peso_normal,
            groupValue: _wheight,
            onChanged: (WheightOptions? value) {
              setState(() {
                _wheight = value;
                //widget.onOptionSelected(value);
              });
            },
            activeColor: Color(0xFF2FFFA0),
          ),
        ),
        ListTile(
          title: const Text(
            'De 2,4 a 9,0 Kg acima do peso normal',
            style: TextStyle(
              color: Colors.white,
              fontSize: 15
            ),
          ),
          leading: Radio<WheightOptions>(
            value: WheightOptions.de_2_4_a_9_acima_peso_normal,
            groupValue: _wheight,
            onChanged: (WheightOptions? value) {
              setState(() {
                _wheight = value;
                //widget.onOptionSelected(value);
              });
            },
            activeColor: Color(0xFF2FFFA0),
          ),
        ),
        ListTile(
          title: const Text(
            'De 9,1 a 15,9 Kg acima do peso normal',
            style: TextStyle(
              color: Colors.white,
              fontSize: 15
            ),
          ),
          leading: Radio<WheightOptions>(
            value: WheightOptions.de_9_1_a_15_9_acima_peso_normal,
            groupValue: _wheight,
            onChanged: (WheightOptions? value) {
              setState(() {
                _wheight = value;
                //widget.onOptionSelected(value);
              });
            },
            activeColor: Color(0xFF2FFFA0),
          ),
        ),
        ListTile(
          title: const Text(
            'De 16 a 22,9 Kg acima do peso normal',
            style: TextStyle(
              color: Colors.white,
              fontSize: 15
            ),
          ),
          leading: Radio<WheightOptions>(
            value: WheightOptions.de_16_a_22_9_acima_peso_normal,
            groupValue: _wheight,
            onChanged: (WheightOptions? value) {
              setState(() {
                _wheight = value;
                //widget.onOptionSelected(value);
              });
            },
            activeColor: Color(0xFF2FFFA0),
          ),
        ),
        ListTile(
          title: const Text(
            'Mais de 23 Kg acima do peso normal',
            style: TextStyle(
              color: Colors.white,
              fontSize: 15
            ),
          ),
          leading: Radio<WheightOptions>(
            value: WheightOptions.mais_23_acima_peso_normal,
            groupValue: _wheight,
            onChanged: (WheightOptions? value) {
              setState(() {
                _wheight = value;
                //widget.onOptionSelected(value);
              });
            },
            activeColor: Color(0xFF2FFFA0),
          ),
        ),
      ],
    );
  }
}