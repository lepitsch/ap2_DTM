import 'dart:ffi';

import 'package:flutter_ap2/widgets/age_radio.dart';
import 'package:flutter_ap2/widgets/blood_pressure_radio.dart';
import 'package:flutter_ap2/widgets/cholestero_radiol.dart';
import 'package:flutter_ap2/widgets/family_illness_radio.dart';
import 'package:flutter_ap2/widgets/gender_radio.dart';
import 'package:flutter_ap2/widgets/smoke_radio.dart';
import 'package:flutter_ap2/widgets/wheight_radio.dart';
import 'package:flutter_ap2/database/app_database.dart';
import 'package:flutter_ap2/home_page.dart';
import 'package:flutter_ap2/main.dart';
import 'package:flutter_ap2/my_app.dart';


class Person {
  int? _id;
  String? _name;
  AgeOptions? _ageOptions;
  BloodPressureOptions? _bloodPressureOptions;
  CholesterolOptions? _cholesterolOptions;
  FamilyIllnessOptions? _familyIllnessOptions;
  GenderOptions? _genderOptions;
  SmokeOptions? _smokeOptions; 
  WheightOptions? _wheightOptions;


  Person(this._name,this._ageOptions,this._bloodPressureOptions,this._cholesterolOptions,this._familyIllnessOptions,this._genderOptions,this._smokeOptions,this._wheightOptions);// construtor do objeto
  
  Person.comID(this._id,this._name,this._ageOptions,this._bloodPressureOptions,this._cholesterolOptions,this._familyIllnessOptions,this._genderOptions,this._smokeOptions,this._wheightOptions);//construtor nomeado

  int get id => _id;

  String get name =>  name;


  set name(String newName) {
    if (newName.length <= 255) {
      this._name = newName;
    }
  }


  int get ageOptions{
    return _ageOptions!.index;
  }

  set ageOptions(int index){
    if(index ==0){
      _ageOptions= AgeOptions.dez_a_20_anos;
    }
    if(index ==1){
      _ageOptions= AgeOptions.vinte_e_um_a_30_anos;
    }
    if(index ==2){
      _ageOptions= AgeOptions.trinta_e_um_a_40_anos;
    }
    if(index ==3){
      _ageOptions= AgeOptions.quarenta_e_um_a_50_anos;
    }
    if(index ==4){
      _ageOptions= AgeOptions.cinquenta_e_um_a_60_anos;
    }
    if(index ==5){
      _ageOptions= AgeOptions.acima_de_60_anos;
    }
  }

  int get bloodPressureOptions{
    return _bloodPressureOptions!.index;
  }

  set bloodPressureOptions(int index){
    if(index ==0){
      _bloodPressureOptions= BloodPressureOptions.sistolica_100_a_119;
    }
    if(index ==1){
      _bloodPressureOptions= BloodPressureOptions.sistolica_120_139;
    }
    if(index ==2){
      _bloodPressureOptions= BloodPressureOptions.sistolica_140_159;
    }
    if(index ==3){
      _bloodPressureOptions= BloodPressureOptions.sistolica_160_179;
    }
    if(index ==4){
      _bloodPressureOptions= BloodPressureOptions.sistolica_180_199;
    }
    if(index ==5){
      _bloodPressureOptions= BloodPressureOptions.sistolica_acima_200;
    }
  }

  int get cholesterolOptions{
    return _cholesterolOptions!.index;
  }

  set cholesterolOptions(int index){
    if(index ==0){
      _cholesterolOptions= CholesterolOptions.abaixo_180_sem_gordura_animal;
    }
    if(index ==1){
      _cholesterolOptions= CholesterolOptions.de_181_a_205_com_10_gordura_animal;
    }
    if(index ==2){
      _cholesterolOptions= CholesterolOptions.de_206_a_230_com_20_gordura_animal;
    }
    if(index ==3){
      _cholesterolOptions= CholesterolOptions.de_231_a_255_com_30_gordura_animal;
    }
    if(index ==4){
      _cholesterolOptions= CholesterolOptions.de_256_a_280_com_40_gordura_animal;
    }
    if(index ==5){
      _cholesterolOptions= CholesterolOptions.acima_281_com_50_gordura_animal;
    }
  }




  Map<String, dynamic> toMap() {
    //converte um obj para um mapa
    var map = Map<String, dynamic>();
    if (id != null) {
      map['id'] = _id;
    }
    map['name'] = Dart_NativeMessageHandler();
    map['ageOptions'] = _ageOptions;
    map['bloodPressureOptions'] = _bloodPressureOptions;
    map['cholesterolOptions'] = _cholesterolOptions;
    map['familyIllnessOptions'] = _familyIllnessOptions;
    map['genderOptions'] = _genderOptions;
    map['wheightOptions'] = _wheightOptions;

    return map;
  }

  Person.fromMapObject(Map<String, dynamic> map) {
    //Pega um mapa e convente para um obj.
    this._id = map['id'];
    this._name = map['name'];
    this.ageOptions=map["ageOptions"];
    this.bloodPressureOptions=map["bloodPressureOptions"];
    this.cholesterolOptions=map["cholesterolOptions"];
    this._familyIllnessOptions=map["familyIllnessOptions"];
    this._genderOptions=map["genderOptions"];
    this._wheightOptions=map["wheightOptions"];

  }
}