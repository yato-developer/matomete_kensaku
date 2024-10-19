import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:matomete_kensaku/models/src/link_info.dart';

class FireFetchUrlService {
  final _fireStore = FirebaseFirestore.instance;

  Future<List<LinkInfo>> fetchUrlRequest(String category) async {
    final snapshot = await _fireStore.collection('category/v1/$category').get();
    final urls = snapshot.docs.map((e) => LinkInfo.fromJson(e.data())).toList();
    return urls;
  }


}
