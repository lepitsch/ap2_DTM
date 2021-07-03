import 'package:flutter/material.dart';

enum SmokeOptions { nao_fumante, charuto_chachimbo, dez_cigarros_dia, onze_a_20_cigarros_dias, 
                    vinte_e_um_a_30_cigarros_dia, mais_31_cigarros_dia }

class SmokeRadioStatefulWidget extends StatefulWidget {
  //final void Function(SmokeOptions? option) onOptionSelected;

  const SmokeRadioStatefulWidget({
    Key? key,
    //required this.onOptionSelected,
    }) : super(key: key);

  @override
  State<SmokeRadioStatefulWidget> createState() => _SmokeRadioStatefulWidget();
}

class _SmokeRadioStatefulWidget extends State<SmokeRadioStatefulWidget> {
  SmokeOptions? _smoke = SmokeOptions.nao_fumante;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        ListTile(
          title: const Text(
            'Não fumante',
            style: TextStyle(
              color: Colors.white,
              fontSize: 15
            ),
          ),
          leading: Radio<SmokeOptions>(
            value: SmokeOptions.nao_fumante,
            groupValue: _smoke,
            onChanged: (SmokeOptions? value) {
              setState(() {
                _smoke = value;
                //widget.onOptionSelected(value);
              });
            },
            activeColor: Color(0xFF2FFFA0),
          ),
        ),
        ListTile(
          title: const Text(
            'Charuto e/ ou cachimbo',
            style: TextStyle(
              color: Colors.white,
              fontSize: 15
            ),
          ),
          leading: Radio<SmokeOptions>(
            value: SmokeOptions.charuto_chachimbo,
            groupValue: _smoke,
            onChanged: (SmokeOptions? value) {
              setState(() {
                _smoke = value;
                //widget.onOptionSelected(value);
              });
            },
            activeColor: Color(0xFF2FFFA0),
          ),
        ),
        ListTile(
          title: const Text(
            '10 cigarros ou menos por dia',
            style: TextStyle(
              color: Colors.white,
              fontSize: 15
            ),
          ),
          leading: Radio<SmokeOptions>(
            value: SmokeOptions.dez_cigarros_dia,
            groupValue: _smoke,
            onChanged: (SmokeOptions? value) {
              setState(() {
                _smoke = value;
                //widget.onOptionSelected(value);
              });
            },
            activeColor: Color(0xFF2FFFA0),
          ),
        ),
        ListTile(
          title: const Text(
            '11 a 20 cigarros por dia',
            style: TextStyle(
              color: Colors.white,
              fontSize: 15
            ),
          ),
          leading: Radio<SmokeOptions>(
            value: SmokeOptions.onze_a_20_cigarros_dias,
            groupValue: _smoke,
            onChanged: (SmokeOptions? value) {
              setState(() {
                _smoke = value;
                //widget.onOptionSelected(value);
              });
            },
            activeColor: Color(0xFF2FFFA0),
          ),
        ),
        ListTile(
          title: const Text(
            '21 a 30 cigarros por dia',
            style: TextStyle(
              color: Colors.white,
              fontSize: 15
            ),
          ),
          leading: Radio<SmokeOptions>(
            value: SmokeOptions.vinte_e_um_a_30_cigarros_dia,
            groupValue: _smoke,
            onChanged: (SmokeOptions? value) {
              setState(() {
                _smoke = value;
                //widget.onOptionSelected(value);
              });
            },
            activeColor: Color(0xFF2FFFA0),
          ),
        ),
        ListTile(
          title: const Text(
            'Mais de 31 cigarros por dia',
            style: TextStyle(
              color: Colors.white,
              fontSize: 15
            ),
          ),
          leading: Radio<SmokeOptions>(
            value: SmokeOptions.mais_31_cigarros_dia,
            groupValue: _smoke,
            onChanged: (SmokeOptions? value) {
              setState(() {
                _smoke = value;
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