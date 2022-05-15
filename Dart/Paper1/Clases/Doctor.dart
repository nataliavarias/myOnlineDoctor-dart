import 'Geolocation.dart';
import 'Specialty.dart';
import 'Subject.dart';

class Doctor implements Subject{

  // Atributos
  int idDoctor;
  String name;
  Specialty specialty;
  Geolocation geolocation; 

  // Get
  String get info => 'ID:' + idDoctor.toString() + ' Name:' + name; 
  
   // Constructor
  Doctor(this.idDoctor,this.name,this.specialty,this.geolocation);

  // Métodos
  void acceptCheckUp(CheckUp) {
    
  }

  void scheduleCheckUp(CheckUp) {
    
  }

  void addMedicalRecord(CheckUp, MedicalRecord) {
    
  }

  void modifyMedicalRecord(CheckUp, MedicalRecord) {
    
  }

  void suspendPatient(Patient) {
    
  }

  void addGeolocation(Geolocation) {
    
  }

  void removeGeolocation(Geolocation) {
    
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


  /* List<Doctor> getDoctorsGeo(Geolocation) {
    
  }

  List<Doctor> getDoctors(Specialty) {
    
  }

  List<Doctor> searchTopTenDoctors() {
    
  }  */
 

} 