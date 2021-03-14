import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:uuid/uuid.dart';

class BeautyService {
  FirebaseFirestore _firestore = FirebaseFirestore.instance;
  String ref = 'beauty';

  void uploadBeauty(Map<String, dynamic> data) {
    var id = Uuid();
    String beautyId = id.v1();
    data["id"] = beautyId;
    _firestore.collection(ref).document(beautyId).setData(data);
  }
}
