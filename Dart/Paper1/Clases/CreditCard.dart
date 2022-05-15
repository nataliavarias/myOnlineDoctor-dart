import 'PaymentMethod.dart';

class CreditCard implements PaymentMethod {

  // Atributos
    String name;
    String billingAddress;
    int cardNumber;
    DateTime expirationDate;

  // Constructor
     CreditCard(this.name,this.billingAddress,this.cardNumber,this.expirationDate);

  // Métodos
     @override
     bool isStillValid(){
     
     return true;  //arreglar
     
  }
 
} 