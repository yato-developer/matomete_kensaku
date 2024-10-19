import 'package:cloud_firestore/cloud_firestore.dart';

class FireAddUrlServices {
  final _fireStore = FirebaseFirestore.instance;

  Future<void> addUrl(String category, title, url) async {
    await _fireStore.collection('category/v1/$category').add({
      'title': title,
      'url': url,
    });
  }
}
