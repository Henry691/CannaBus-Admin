import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:uuid/uuid.dart';

class MedicinalService {
  FirebaseFirestore _firestore = FirebaseFirestore.instance;
  String ref = 'medicinals';

  void uploadMedicinal(Map<String, dynamic> data) {
    var id = Uuid();
    String medicinalId = id.v1();
    data["id"] = medicinalId;
    _firestore.collection(ref).document(medicinalId).setData(data);
  }
}
