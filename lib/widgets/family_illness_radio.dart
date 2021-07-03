import 'package:flutter/material.dart';

enum FamilyIllnessOptions { nenhuma, um_parente_cardiaco_mais_60_anos, dois_parentes_cardiaco_mais_60_anos,
                            um_parente_cardiaca_menos_60_anos, dois_parentes_cardiaco_menos_60_anos,
                            tres_parentes_cardiaco_menos_60_anos }

class FamilyIllnessRadioStatefulWidget extends StatefulWidget {
  //final void Function(FamilyIllnessOptions? option) onOptionSelected;

  const FamilyIllnessRadioStatefulWidget({
    Key? key,
    //required this.onOptionSelected,
    }) : super(key: key);

  @override
  State<FamilyIllnessRadioStatefulWidget> createState() => _FamilyIllnessRadioStatefulWidget();
}

class _FamilyIllnessRadioStatefulWidget extends State<FamilyIllnessRadioStatefulWidget> {
  FamilyIllnessOptions? _familyIllness = FamilyIllnessOptions.nenhuma;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        ListTile(
          title: const Text(
            'Nenhuma história conhecida de cardiopatia',
            style: TextStyle(
              color: Colors.white,
              fontSize: 15
            ),
          ),
          leading: Radio<FamilyIllnessOptions>(
            value: FamilyIllnessOptions.nenhuma,
            groupValue: _familyIllness,
            onChanged: (FamilyIllnessOptions? value) {
              setState(() {
                _familyIllness = value;
              });
            },
            activeColor: Color(0xFF2FFFA0),
          ),
        ),
        ListTile(
          title: const Text(
            '1 parente c/ doença cardíaca e mais de 60 anos',
            style: TextStyle(
              color: Colors.white,
              fontSize: 15
            ),
          ),
          leading: Radio<FamilyIllnessOptions>(
            value: FamilyIllnessOptions.um_parente_cardiaco_mais_60_anos,           
            groupValue: _familyIllness,
            onChanged: (FamilyIllnessOptions? value) {
              setState(() {
                _familyIllness = value;
                //widget.onOptionSelected(value);
              });
            },
            activeColor: Color(0xFF2FFFA0),
          ),
        ),
        ListTile(
          title: const Text(
            '2 parentes c/ doença cardiaca e mais de 60 anos',
            style: TextStyle(
              color: Colors.white,
              fontSize: 15
            ),
          ),
          leading: Radio<FamilyIllnessOptions>(
            value: FamilyIllnessOptions.dois_parentes_cardiaco_mais_60_anos,
            groupValue: _familyIllness,
            onChanged: (FamilyIllnessOptions? value) {
              setState(() {
                _familyIllness = value;
                //widget.onOptionSelected(value);
              });
            },
            activeColor: Color(0xFF2FFFA0),
          ),
        ),
        ListTile(
          title: const Text(
            '1 parente c/ doença cardíaca e menos de 60 anos',
            style: TextStyle(
              color: Colors.white,
              fontSize: 15
            ),
          ),
          leading: Radio<FamilyIllnessOptions>(
            value: FamilyIllnessOptions.um_parente_cardiaca_menos_60_anos,
            groupValue: _familyIllness,
            onChanged: (FamilyIllnessOptions? value) {
              setState(() {
                _familyIllness = value;
                //widget.onOptionSelected(value);
              });
            },
            activeColor: Color(0xFF2FFFA0),
          ),
        ),
        ListTile(
          title: const Text(
            '2 parentes c/ doença cardíaca e menos de 60 anos',
            style: TextStyle(
              color: Colors.white,
              fontSize: 15
            ),
          ),
          leading: Radio<FamilyIllnessOptions>(
            value: FamilyIllnessOptions.dois_parentes_cardiaco_menos_60_anos,
            groupValue: _familyIllness,
            onChanged: (FamilyIllnessOptions? value) {
              setState(() {
                _familyIllness = value;
                //widget.onOptionSelected(value);
              });
            },
            activeColor: Color(0xFF2FFFA0),
          ),
        ),
        ListTile(
          title: const Text(
            '3 parentes c/ doença cardíaca e menos de 60 anos',
            style: TextStyle(
              color: Colors.white,
              fontSize: 15
            ),
          ),
          leading: Radio<FamilyIllnessOptions>(
            value: FamilyIllnessOptions.tres_parentes_cardiaco_menos_60_anos,
            groupValue: _familyIllness,
            onChanged: (FamilyIllnessOptions? value) {
              setState(() {
                _familyIllness = value;
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