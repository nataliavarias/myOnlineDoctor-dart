import 'Observer.dart';

class Action implements Observer {

  // Atributos
    DateTime date;
    String description;
     
  // Constructor
     Action(this.date,this.description);

  // Métodos
  void addAction(Action) {
    
  }
  
  @override
  void update(String) {
    
  }

  /* List<Action> getActions() {
    
  } */
 
} 