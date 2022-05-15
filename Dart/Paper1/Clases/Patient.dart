import 'Doctor.dart';
import 'Subject.dart';
import 'InvalidDataValue.dart';
import 'dart:io';

class Patient implements Subject{

  // Atributos
  int idPatient;
  String name;
  int age;
  String profession;
  int weight;
  String phone;
  String email;

  // Get y Sets
  String get info => 'ID:' + idPatient.toString() + '\nName:' + name + '\nAge:' + age.toString() + 
  '\nProfession:' + profession + '\nPhone:' + phone + '\nEmail:' + email + '\nWeight:' + weight.toString();

  set setAge(int newage) => age = newage;

  set setProfession(String newprof) => profession = newprof;

  set setWeight(int newweight) => weight = newweight;

  set setPhone(String newphone) => phone = newphone;

  set setEmail(String newemail) => email = newemail; 

  // Constructor
  Patient(this.idPatient,this.name,this.age,this.profession,this.weight,this.phone,this.email);

  // Métodos
  void searchDoctorsGeolocation(Geolocation,List) {
  
  print('~ Busqueda de Doctores por Ubicación Geográfica ~');

     for (Doctor doctor in List) {
        if (doctor.geolocation ==  Geolocation) {
            
            print('El Doctor ' + doctor.name + ' está ubicado en ' + Geolocation.city + '\n');
          } 
       }

  } 
  

  void searchDoctorsSpecialty(Specialty,List) {

  print('~ Busqueda de Doctores por Especialidad ~');


     for (Doctor doctor in List) {
        if (doctor.specialty ==  Specialty) {

            print('El Doctor ' + doctor.name + ' es especialista en ' + Specialty.name + '\n');
          } 
       }
    
  }

  void changeInfo() {

    print('~ Modificacion de Datos ~');
    print('Elige un dato a modificar:');
    print('1. Edad');
    print('2. Profesión');
    print('3. Peso');
    print('4. Teléfono');
    print('5. Email');

   String? opcion = stdin.readLineSync();

   switch (opcion) {
    case '1':
      print('\nModificar edad. Inserta el dato:');
      String dato = stdin.readLineSync() ?? '';
      var datonum = int.parse(dato);

      if (datonum <= 0) { 
      throw new InvalidDataValue(); 
       }

      this.setAge = datonum;
      print('\nPaciente: ' + this.name + ' - Edad: ' + this.age.toString() + '\n');
    break;

    case '2':
      print('\nModificar profesión. Inserta el dato:');
      String dato = stdin.readLineSync() ?? '';
      this.setProfession = dato;
      print('\nPaciente: ' + this.name + ' - Profesión: ' + this.profession + '\n');
    break;

    case '3':
      print('\nModificar peso. Inserta el dato:');
      String dato = stdin.readLineSync()  ?? '';
      var datonum = int.parse(dato);

      if (datonum <= 0) { 
      throw new InvalidDataValue(); 
       }

      this.setWeight = datonum;
      print('\nPaciente: ' + this.name + ' - Peso: ' + this.weight.toString() + '\n');
    break;

    case '4':
      print('\nModificar teléfono. Inserta el dato:');
      String dato = stdin.readLineSync() ?? '';
      this.setPhone = dato;
      print('\nPaciente: ' + this.name + ' - Teléfono: ' + this.phone + '\n');
    break;

    case '5':
      print('\nModificar email. Inserta el dato:');
      String dato = stdin.readLineSync() ?? '';
      this.setEmail = dato;
      print('\nPaciente: ' + this.name + ' - Email: ' + this.email + '\n');
    break;

    default: 
      print('\nOpción Inválida\n');

  }
    
  }

  void requestCheckUp() {
    
  }
 
  void confirmCheckUp(CheckUp) {
    
  }

  void cancelCheckUp(CheckUp) {
    
  }

  void addPaymentMethod(PaymentMethod) {
    
  }

  void renewSubscription(Subscription) {
    
  }

  void cancelSubscription(Subscription) {
    
  }

  void searchTopTenDoctors() {
    
  }

  void rateCheckUp(CheckUp, Int, String) {
    
  }

  void readMedicalRecord() {
    
  }
  
  @override
  void addObserver(Observer) {
    
  }
  
  @override
  void notifyObservers(String) {
    
  }
  
  @override
  void removeObserver(Observer) {
    
  }

}
