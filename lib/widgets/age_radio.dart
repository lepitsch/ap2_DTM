import 'package:flutter/material.dart';

enum AgeOptions { dez_a_20_anos, vinte_e_um_a_30_anos, trinta_e_um_a_40_anos, quarenta_e_um_a_50_anos,
                  cinquenta_e_um_a_60_anos, acima_de_60_anos }

class AgeRadioStatefulWidget extends StatefulWidget {
  final void Function(AgeOptions? option) onOptionSelected //atributo criado como função
;
  const AgeRadioStatefulWidget({ //parâmetro para o construtor, que vai receber o valor a ser passado
    Key? key, 
    required this.onOptionSelected
    }) : super(key: key);

  @override
  State<AgeRadioStatefulWidget> createState() => _AgeRadioStatefulWidget();
}

class _AgeRadioStatefulWidget extends State<AgeRadioStatefulWidget> {
  AgeOptions? _age = AgeOptions.dez_a_20_anos;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        ListTile(
          title: const Text(
            '10 a 20 anos',
            style: TextStyle(
              color: Colors.white,
              fontSize: 15
            ),
          ),
          leading: Radio<AgeOptions>(
            value: AgeOptions.dez_a_20_anos,
            groupValue: _age,
            onChanged: (AgeOptions? value) {
              setState(() {
                _age = value;
                widget.onOptionSelected(value); // atribuo o valor para o parâmetro
              });
            },
            activeColor: Colors.greenAccent,
          ),
        ),
        ListTile(
          title: const Text(
            '21 a 30 anos',
            style: TextStyle(
              color: Colors.white,
              fontSize: 15
            ),
          ),
          leading: Radio<AgeOptions>(
            value: AgeOptions.vinte_e_um_a_30_anos,
            groupValue: _age,
            onChanged: (AgeOptions? value) {
              setState(() {
                _age = value;
                widget.onOptionSelected(value); // atribuo o valor para o parâmetro
              });
            },
            activeColor: Colors.greenAccent,
          ),
        ),
        ListTile(
          title: const Text(
            '31 a 40 anos',
            style: TextStyle(
              color: Colors.white,
              fontSize: 15
            ),
          ),
          leading: Radio<AgeOptions>(
            value: AgeOptions.trinta_e_um_a_40_anos,
            groupValue: _age,
            onChanged: (AgeOptions? value) {
              setState(() {
                _age = value;
                widget.onOptionSelected(value); // atribuo o valor para o parâmetro
              });
            },
            activeColor: Colors.greenAccent,
          ),
        ),
        ListTile(
          title: const Text(
            '41 a 50 anos',
            style: TextStyle(
              color: Colors.white,
              fontSize: 15
            ),
          ),
          leading: Radio<AgeOptions>(
            value: AgeOptions.quarenta_e_um_a_50_anos,
            groupValue: _age,
            onChanged: (AgeOptions? value) {
              setState(() {
                _age = value;
                widget.onOptionSelected(value); // atribuo o valor para o parâmetro
              });
            },
            activeColor: Colors.greenAccent,
          ),
        ),
        ListTile(
          title: const Text(
            '51 a 60 anos',
            style: TextStyle(
              color: Colors.white,
              fontSize: 15
            ),
          ),
          leading: Radio<AgeOptions>(
            value: AgeOptions.cinquenta_e_um_a_60_anos,
            groupValue: _age,
            onChanged: (AgeOptions? value) {
              setState(() {
                _age = value;
                widget.onOptionSelected(value); // atribuo o valor para o parâmetro
              });
            },
            activeColor: Colors.greenAccent,
          ),
        ),
        ListTile(
          title: const Text(
            'Acima de 60 anos',
            style: TextStyle(
              color: Colors.white,
              fontSize: 15
            ),
          ),
          leading: Radio<AgeOptions>(
            value: AgeOptions.acima_de_60_anos,
            groupValue: _age,
            onChanged: (AgeOptions? value) {
              setState(() {
                _age = value;
                widget.onOptionSelected(value); // atribuo o valor para o parâmetro
              });
            },
            activeColor: Colors.greenAccent,
          ),
        ),
      ],
    );
  }
}