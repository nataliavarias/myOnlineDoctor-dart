
import 'Doctor.dart';
import 'Geolocation.dart';
import 'InvalidDataValue.dart';
import 'Patient.dart';
import 'Specialty.dart';


main() {

  //Patients
  final patient1  = new Patient(27333222,'María García',55,'Ingeniero',65,'04241113333','maria@gmail.com');

  //Specialties
  final specialty1 = new Specialty('Cardiología');
  final specialty2 = new Specialty('Dermatología');
  final specialty3 = new Specialty('Nefrología');

  //Geolocations
  final geo1 = new Geolocation('Capital District','Caracas',10.48801,-66.87919);
  final geo2 = new Geolocation('Zulia','Maracaibo',10.6417,-71.6295);
  final geo3 = new Geolocation('Carabobo','Valencia',10.1741,-67.9998);

  //Doctores
  final doctor1 = new Doctor(6900000,'Fernando Perez',specialty1,geo1);
  final doctor2 = new Doctor(6163599,'Amanda Duque',specialty2,geo2);
  final doctor3 = new Doctor(6550633,'Roberto Goncalves',specialty3,geo3);
  final doctor4 = new Doctor(6550633,'Celeste Méndez',specialty3,geo2);
  
  //Lista Doctores
  List<Doctor> doctores = [doctor1,doctor2,doctor3,doctor4];

  //Busqueda de Doctores
  patient1.searchDoctorsGeolocation(geo2,doctores);
  patient1.searchDoctorsSpecialty(specialty3,doctores);

  //Modificar datos Paciente

  try { 
      patient1.changeInfo();
   } on InvalidDataValue catch (e) {
      print(e.errMsg());
   }
   
}
 