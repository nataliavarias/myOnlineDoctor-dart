class CheckUp{

  // Atributos
  int idCheckUp;
  DateTime date;
  String modality;
 
  // Get 
  String get info =>  idCheckUp.toString() + date.toString() + modality;

  // Constructor
  CheckUp(this.idCheckUp,this.date,this.modality);

  // Métodos
  void changeStatus(Status) {
    
  }

  void addResult(Result) {
    
  }

  void confirmMembership(Patient) {
    
  }

  void modifyResult(Result) {
    
  }

  void addRating(Rating) {
    
  }

} 