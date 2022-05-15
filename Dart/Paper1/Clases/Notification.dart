import 'Observer.dart';

abstract class Notification implements Observer{

  // Atributos
    DateTime date;
    String message;

  // Constructor
     Notification(this.date,this.message);

  // Métodos
  void sendNotification() {
    
  }

} 

