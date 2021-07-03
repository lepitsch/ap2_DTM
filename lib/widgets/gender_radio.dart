import 'package:flutter/material.dart';

enum GenderOptions { fem_menos_40_anos, fem_40_a_50_anos, fem_mais_50_anos, masculino, masc_baixa_estatura, 
                    masc_baixa_estatura_calvo }

class GenderRadioStatefulWidget extends StatefulWidget {
  //final void Function(GenderOptions? option) onOptionSelected;

  const GenderRadioStatefulWidget({
    Key? key,
    //required this.onOptionSelected,
    }) : super(key: key);

  @override
  State<GenderRadioStatefulWidget> createState() => _GenderRadioStatefulWidget();
}

class _GenderRadioStatefulWidget extends State<GenderRadioStatefulWidget> {
  GenderOptions? _gender = GenderOptions.fem_menos_40_anos;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        ListTile(
          title: const Text(
            'Feminino c/ menos de 40 anos',
            style: TextStyle(
              color: Colors.white,
              fontSize: 15
            ),
          ),
          leading: Radio<GenderOptions>(
            value: GenderOptions.fem_menos_40_anos,
            groupValue: _gender,
            onChanged: (GenderOptions? value) {
              setState(() {
                _gender = value;
                //widget.onOptionSelected(value);
              });
            },
            activeColor: Color(0xFF2FFFA0),
          ),
        ),
        ListTile(
          title: const Text(
            'Feminino de 40 a 50 anos',
            style: TextStyle(
              color: Colors.white,
              fontSize: 15
            ),
          ),
          leading: Radio<GenderOptions>(
            value: GenderOptions.fem_40_a_50_anos,
            groupValue: _gender,
            onChanged: (GenderOptions? value) {
              setState(() {
                _gender = value;
                //widget.onOptionSelected(value);
              });
            },
            activeColor: Color(0xFF2FFFA0),
          ),
        ),
        ListTile(
          title: const Text(
            'Feminino c/ mais de 50 anos',
            style: TextStyle(
              color: Colors.white,
              fontSize: 15
            ),
          ),
          leading: Radio<GenderOptions>(
            value: GenderOptions.fem_mais_50_anos,
            groupValue: _gender,
            onChanged: (GenderOptions? value) {
              setState(() {
                _gender = value;
                //widget.onOptionSelected(value);
              });
            },
            activeColor: Color(0xFF2FFFA0),
          ),
        ),
        ListTile(
          title: const Text(
            'Masculino',
            style: TextStyle(
              color: Colors.white,
              fontSize: 15
            ),
          ),
          leading: Radio<GenderOptions>(
            value: GenderOptions.masculino,
            groupValue: _gender,
            onChanged: (GenderOptions? value) {
              setState(() {
                _gender = value;
                //widget.onOptionSelected(value);
              });
            },
            activeColor: Color(0xFF2FFFA0),
          ),
        ),
        ListTile(
          title: const Text(
            'Masculino de baixa estatura',
            style: TextStyle(
              color: Colors.white,
              fontSize: 15
            ),
          ),
          leading: Radio<GenderOptions>(
            value: GenderOptions.masc_baixa_estatura,
            groupValue: _gender,
            onChanged: (GenderOptions? value) {
              setState(() {
                _gender = value;
                //widget.onOptionSelected(value);
              });
            },
            activeColor: Color(0xFF2FFFA0),
          ),
        ),
        ListTile(
          title: const Text(
            'Masculino de baixa estatura e calvo',
            style: TextStyle(
              color: Colors.white,
              fontSize: 15
            ),
          ),
          leading: Radio<GenderOptions>(
            value: GenderOptions.masc_baixa_estatura_calvo,
            groupValue: _gender,
            onChanged: (GenderOptions? value) {
              setState(() {
                _gender = value;
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