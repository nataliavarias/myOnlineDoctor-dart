import 'PaymentMethod.dart';

class EmployeeBenefit implements PaymentMethod {

  // Atributos
    int code;

  // Constructor
     EmployeeBenefit(this.code);

  // Métodos
     @override
     bool isStillValid(){
     
     return true;  //arreglar
     
  }
 
} 