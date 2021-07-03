import 'package:flutter/material.dart';

enum CholesterolOptions { abaixo_180_sem_gordura_animal, de_181_a_205_com_10_gordura_animal,
                          de_206_a_230_com_20_gordura_animal, de_231_a_255_com_30_gordura_animal, 
                          de_256_a_280_com_40_gordura_animal, acima_281_com_50_gordura_animal }

class CholesterolRadioStatefulWidget extends StatefulWidget {
//  final void Function(CholesterolOptions?? option) onOptionSelected;

  const CholesterolRadioStatefulWidget({
    Key? key,
//    required this.onOptionSelected,
    }) : super(key: key);

  @override
  State<CholesterolRadioStatefulWidget> createState() => _CholesterolRadioStatefulWidget();
}

class _CholesterolRadioStatefulWidget extends State<CholesterolRadioStatefulWidget> {
  CholesterolOptions? _cholesterol = CholesterolOptions.abaixo_180_sem_gordura_animal;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        ListTile(
          title: const Text(
            'Abaixo de 180 ou a dieta não contém gorduras animais',
            style: TextStyle(
              color: Colors.white,
              fontSize: 15
            ),
          ),
          leading: Radio<CholesterolOptions>(
            value: CholesterolOptions.abaixo_180_sem_gordura_animal,
            groupValue: _cholesterol,
            onChanged: (CholesterolOptions? value) {
              setState(() {
                _cholesterol = value;
                //widget.onOptionSelected(value);
              });
            },
            activeColor: Color(0xFF2FFFA0),
          ),
        ),
        ListTile(
          title: const Text(
            'De 181 a 205 ou a dieta contém 10% de gorduras animais',
            style: TextStyle(
              color: Colors.white,
              fontSize: 15
            ),
          ),
          leading: Radio<CholesterolOptions>(
            value: CholesterolOptions.de_181_a_205_com_10_gordura_animal,
            groupValue: _cholesterol,
            onChanged: (CholesterolOptions? value) {
              setState(() {
                _cholesterol = value;
                //widget.onOptionSelected(value);
              });
            },
            activeColor: Color(0xFF2FFFA0),
          ),
        ),
        ListTile(
          title: const Text(
            'De 206 a 230 ou a dieta contém 20% de gorduras animais',
            style: TextStyle(
              color: Colors.white,
              fontSize: 15
            ),
          ),
          leading: Radio<CholesterolOptions>(
            value: CholesterolOptions.de_206_a_230_com_20_gordura_animal,
            groupValue: _cholesterol,
            onChanged: (CholesterolOptions? value) {
              setState(() {
                _cholesterol = value;
                //widget.onOptionSelected(value);
              });
            },
            activeColor: Color(0xFF2FFFA0),
          ),
        ),
        ListTile(
          title: const Text(
            'De 231 a 255 ou a dieta contém 30% de gorduras animais',
            style: TextStyle(
              color: Colors.white,
              fontSize: 15
            ),
          ),
          leading: Radio<CholesterolOptions>(
            value: CholesterolOptions.de_231_a_255_com_30_gordura_animal,
            groupValue: _cholesterol,
            onChanged: (CholesterolOptions? value) {
              setState(() {
                _cholesterol = value;
                //widget.onOptionSelected(value);
              });
            },
            activeColor: Color(0xFF2FFFA0),
          ),
        ),
        ListTile(
          title: const Text(
            'De 256 a 280 ou a dieta contém 40% de gorduras animais',
            style: TextStyle(
              color: Colors.white,
              fontSize: 15
            ),
          ),
          leading: Radio<CholesterolOptions>(
            value: CholesterolOptions.de_256_a_280_com_40_gordura_animal,
            groupValue: _cholesterol,
            onChanged: (CholesterolOptions? value) {
              setState(() {
                _cholesterol = value;
                //widget.onOptionSelected(value);
              });
            },
            activeColor: Color(0xFF2FFFA0),
          ),
        ),
        ListTile(
          title: const Text(
            'Acima de 281 ou a dieta contém 50% de gorduras animais',
            style: TextStyle(
              color: Colors.white,
              fontSize: 15
            ),
          ),
          leading: Radio<CholesterolOptions>(
            value: CholesterolOptions.acima_281_com_50_gordura_animal,
            groupValue: _cholesterol,
            onChanged: (CholesterolOptions? value) {
              setState(() {
                _cholesterol = value;
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