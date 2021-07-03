// import 'dart:ffi';

import 'package:flutter/cupertino.dart';

import '../widgets/age_radio.dart';
import '../widgets/blood_pressure_radio.dart';
import '../widgets/cholestero_radiol.dart';
import '../widgets/family_illness_radio.dart';
import '../widgets/gender_radio.dart';
import '../widgets/smoke_radio.dart';
import '../widgets/wheight_radio.dart';

class Person {
  int? _id;
  String? _name;
  AgeOptions? _age;
  BloodPressureOptions? _bloodPressure;
  // CholesterolOptions? _cholesterol;
  // FamilyIllnessOptions? _familyIllnessOptions;
  // GenderOptions? _genderOptions;
  // SmokeOptions? _smokeOptions; 
  // WheightOptions? _wheightOptions;
  // ActivityOptions? _activity;


  Person(this._name,this._age,this._bloodPressure,);// construtor do objeto
  Person.comID(this._id,this._name,this._age,this._bloodPressure,);// construtor do objeto

  // Person(this._name,this._age,this._bloodPressure,this._cholesterol,this._familyIllness,this._gender,this._smoke,this._wheight,this.activity);// construtor do objeto
  
  // Person.comID(this._id,this._name,this._age,this._bloodPressure,this._cholesterol,this._familyIllness,this._gender,this._smoke,this._wheight);//construtor nomeado

  int? get id => _id;

  String get name =>  name;


  set name(String newName) {
    if (newName.length <= 255) {
        this._name = newName;
      }
    }

    int get age{
    debugPrint(_age!.index.toString());
       return _age!.index;
    }

    int get bloodPressure{
    debugPrint(_bloodPressure!.index.toString());
       return _bloodPressure!.index;
    }
  
    // int get cholesterol{
    // debugPrint(_cholesterol!.index.toString());
    //    return _cholesterol!.index;
    // }

    // int get familyIllness{
    // debugPrint(_familyIllness!.index.toString());
    //    return _familyIllness!.index;
    // }

    // int get gender{
    // debugPrint(_gender!.index.toString());
    //    return _gender!.index;
    // }

    // int get wheight{
    // debugPrint(_wheight!.index.toString());
    //    return _wheight!.index;
    // }

    // int get activity{
    // debugPrint(_activity!.index.toString());
    //    return _activity!.index;
    // }


    Map<String, dynamic> toMap() {
      //converte um obj para um mapa
      var map = Map<String, dynamic>();
      if (id != null) {
        map['id'] = _id;
      }
      map['name'] =_name;
      map['age'] = age;  // sor esqueceu do "_"
      map['bloodPressure'] =  bloodPressure;
      
      // map['cholesterol'] = cholesterol;
      // map['familyIllness'] = familyIllness;
      // map['gender'] = gender;
      // map['wheight'] = wheight;
      // map['activity'] = activity;
    return map;
  }



  Person.fromMapObject(Map<String, dynamic> map) {
    //Pega um mapa e convente para um obj.
    this._id = map['id'];
    this._name = map['name'];
    this._age=map["age"];                           // verificar sor colocou "", e no id e name colocou ''.
    //this._bloodPressure=map["bloodPressure"];
    // this._cholesterol=map["cholesterol"];
    // this._familyIllness=map["familyIllness"];
    // this._gender=map["gender"];
    // this._wheight=map["wheight"];
    // this._activity=map["activity"];
  }
}