import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_ap2/Models/person.dart';
import 'package:flutter_ap2/widgets/activity_radio.dart';
import 'package:flutter_ap2/widgets/age_radio.dart';
import 'package:flutter_ap2/widgets/blood_pressure_radio.dart';
import 'package:flutter_ap2/widgets/cholestero_radiol.dart';
import 'package:flutter_ap2/widgets/family_illness_radio.dart';
import 'package:flutter_ap2/widgets/gender_radio.dart';
import 'package:flutter_ap2/widgets/smoke_radio.dart';
import 'package:flutter_ap2/widgets/wheight_radio.dart';

class HomePage extends StatelessWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int _age;
    int _bloodPressure;
    int _cholesterol;

    return NotificationListener<OverscrollIndicatorNotification>(
      onNotification: (OverscrollIndicatorNotification? overscroll) {
        overscroll!.disallowGlow();
        return true;
      },
      child: Scaffold(
        body: Container(
          //color: Colors.pink,
          width: double.infinity,
          height: double.infinity,
          //margin: EdgeInsets.only(top: 25),
          padding: EdgeInsets.only(
            top: 65,
            left: 15,
            right: 15,
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Avaliação do risco cardíaco',
                  style: TextStyle(
                    color: Colors.greenAccent,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  'Michigan Heart Association',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
                SizedBox(height: 10),
                Icon(
                  Icons.favorite_outline,
                    color: Colors.greenAccent,
                    size: 40,
                ),
                SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Flexible(
                      child: Text(
                        'Preencha o formulário escolhendo a alternativa que mais se aproxime da sua realidade.',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 45),
                TextField(
                  cursorColor: Colors.greenAccent,
                  maxLength: 20,
                  decoration: InputDecoration(
                    counterStyle: TextStyle(color: Colors.greenAccent),
                    border: OutlineInputBorder(),
                    hintText: 'Insira seu nome',
                    hintStyle: 
                      TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                      ), 
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.greenAccent),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.greenAccent),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red),
                    ),    
                  ),
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Text(
                      'Sua idade está entre: ',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
                AgeRadioStatefulWidget(
                  onOptionSelected: (value){
                    _age=value!.index;
                  },
                ),
                SizedBox(height: 25),
                Row(
                  children: [
                    Text(
                      'Seu sexo: ',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
                GenderRadioStatefulWidget(),
                SizedBox(height: 25),
                Row(
                  children: [
                    Text(
                      'Seu peso: ',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
                WheightRadioStatefulWidget(),
                SizedBox(height: 25),
                Row(
                  children: [
                    Text(
                      'Sua atividade: ',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
                ActivityRadioStatefulWidget(),
                SizedBox(height: 25),
                Row(
                  children: [
                    Text(
                      'Fumo: ',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
                SmokeRadioStatefulWidget(),
                SizedBox(height: 25),
                Row(
                  children: [
                    Text(
                      'Pressão: ',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
                BloodPressureRadioStatefulWidget(
                  onOptionSelected: (value){
                    _bloodPressure=value!.index;
                  },
                ),
                SizedBox(height: 25),
                Row(
                  children: [
                    Text(
                      'Doença na família: ',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
                FamilyIllnessRadioStatefulWidget(),
                SizedBox(height: 25),
                Row(
                  children: [
                    Text(
                      'Colesterol: ',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
                CholesterolRadioStatefulWidget(
                  onOptionSelected: (value){
                    _cholesterol=value!.index;
                  },
                ),
                SizedBox(height: 20),
                Container(          //CONTAINER DO RESULTADO FINAL COM A INFO DA SOMA


                
                  //color: Colors.pink,
                  height: 150,
                  padding: EdgeInsets.only(
                      top: 20,
                      left: 5,
                      right: 5,
                      bottom: 20,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Divider(
                        height: 20,
                        thickness: 3,
                        indent: 5,
                        endIndent: 5,
                        color: Colors.greenAccent,
                      ),
                      SizedBox(height: 15),
                      Text(
                        'Resultado',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(height: 15),
                      Text(
                        'Inserir aqui a lógica do resultado',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ),
                Divider(
                  height: 40,
                  thickness: 3,
                  indent: 5,
                  endIndent: 5,
                  color: Colors.greenAccent,
                ),
                Container(
                  height: 190,
                  padding: EdgeInsets.only(
                      top: 20,
                      left: 15,
                      right: 15,
                      bottom: 20,
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Text(
                              'Esta avaliação tem o objetivo de estimar seu risco cardíaco, não substituindo uma avaliação médica.',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Text(
                              'Caso o resultado apresente algum risco, aconselhamos que procure um médico para aconselhamento.',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Text(
                              'Lembre-se que a prevenção e o disgnóstico precoce podem salvar sua vida.',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.favorite,
                            color: Colors.greenAccent,
                            size: 20,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
          floatingActionButton: FloatingActionButton(
            onPressed: (){
              Person p1= Person(_name, _age, _bloodPressure, _cholesterol, _familyIllnessOptions, _genderOptions, _smokeOptions, _wheightOptions);

            }, tooltip: "Salvar Avaliação",
            child: Icon (Icons.save),
          ),
        // bottomNavigationBar: Container(
        //   color: Colors.yellow,
        //   height: 60,
        //   width: double.infinity,
        //   padding: EdgeInsets.all(20),
        //   child: Column(
        //     mainAxisAlignment: MainAxisAlignment.start,
        //     children: [
        //       Text(
        //         'FOOTER',
        //         style: TextStyle(
        //           color: Colors.white,
        //         ),
        //       ),
        //     ],
        //   ),
        // ),
      ),
    );
  }
  
  // void _showAlertDialog(String title, String message){
  //   AlertDialog alertDialog = AlertDialog(
  //     title: Text(title),
  //     content: Text(age_radio.),
  //   );
  //   showDialog(context: this, builder:(_) => alertDialog);
  // }

}