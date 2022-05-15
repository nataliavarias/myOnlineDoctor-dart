import 'PaymentMethod.dart';

class Paypal implements PaymentMethod {

  // Atributos
    String name;
    String email;

  // Constructor
     Paypal(this.name,this.email);

  // Métodos
     @override
     bool isStillValid(){
     
     return true;  //arreglar
     
  }
 
} 