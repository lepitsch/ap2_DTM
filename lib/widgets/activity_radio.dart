import 'package:flutter/material.dart';

enum ActivityOptions { esforco_prof_rec_intenso, esforco_prof_rec_moderado,
                      trab_sedentario_esforco_rec_intenso, trab_sedentario_esforco_rec_moderado, 
                      trab_sedentario_esforco_rec_leve, ausencia_exercicio }

class ActivityRadioStatefulWidget extends StatefulWidget {
  //final void Function(ActivityOptions? option) onOptionSelected;

  const ActivityRadioStatefulWidget({
    Key? key,
    //required this.onOptionSelected,
    }) : super(key: key);

  @override
  State<ActivityRadioStatefulWidget> createState() => _ActivityRadioStatefulWidget();
}

class _ActivityRadioStatefulWidget extends State<ActivityRadioStatefulWidget> {
  ActivityOptions? _activity = ActivityOptions.esforco_prof_rec_intenso;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        ListTile(
          title: const Text(
            'Esforço profissional e recreativo intenso',
            style: TextStyle(
              color: Colors.white,
              fontSize: 15
            ),
          ),
          leading: Radio<ActivityOptions>(
            value: ActivityOptions.esforco_prof_rec_intenso,
            groupValue: _activity,
            onChanged: (ActivityOptions? value) {
              setState(() {
                _activity = value;
                //widget.onOptionSelected(value);
              });
            },
            activeColor: Color(0xFF2FFFA0),
          ),
        ),
        ListTile(
          title: const Text(
            'Esforço profissional e recreativo moderado',
            style: TextStyle(
              color: Colors.white,
              fontSize: 15
            ),
          ),
          leading: Radio<ActivityOptions>(
            value: ActivityOptions.esforco_prof_rec_moderado,
            groupValue: _activity,
            onChanged: (ActivityOptions? value) {
              setState(() {
                _activity = value;
                //widget.onOptionSelected(value);
              });
            },
            activeColor: Color(0xFF2FFFA0),
          ),
        ),
        ListTile(
          title: const Text(
            'Trabalho sedentário e esforço recreativo intenso',
            style: TextStyle(
              color: Colors.white,
              fontSize: 15
            ),
          ),
          leading: Radio<ActivityOptions>(
            value: ActivityOptions.trab_sedentario_esforco_rec_intenso,
            groupValue: _activity,
            onChanged: (ActivityOptions? value) {
              setState(() {
                _activity = value;
                //widget.onOptionSelected(value);
              });
            },
            activeColor: Color(0xFF2FFFA0),
          ),
        ),
        ListTile(
          title: const Text(
            'Trabalho sedentário e esforço recreativo moderado',
            style: TextStyle(
              color: Colors.white,
              fontSize: 15
            ),
          ),
          leading: Radio<ActivityOptions>(
            value: ActivityOptions.trab_sedentario_esforco_rec_moderado,
            groupValue: _activity,
            onChanged: (ActivityOptions? value) {
              setState(() {
                _activity = value;
                //widget.onOptionSelected(value);
              });
            },
            activeColor: Color(0xFF2FFFA0),
          ),
        ),
        ListTile(
          title: const Text(
            'Trabalho sedentário e esforço recreativo leve',
            style: TextStyle(
              color: Colors.white,
              fontSize: 15
            ),
          ),
          leading: Radio<ActivityOptions>(
            value: ActivityOptions.trab_sedentario_esforco_rec_leve,
            groupValue: _activity,
            onChanged: (ActivityOptions? value) {
              setState(() {
                _activity = value;
                //widget.onOptionSelected(value);
              });
            },
            activeColor: Color(0xFF2FFFA0),
          ),
        ),
        ListTile(
          title: const Text(
            'Ausência completa de qualquer exercício',
            style: TextStyle(
              color: Colors.white,
              fontSize: 15
            ),
          ),
          leading: Radio<ActivityOptions>(
            value: ActivityOptions.ausencia_exercicio,
            groupValue: _activity,
            onChanged: (ActivityOptions? value) {
              setState(() {
                _activity = value;
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