import 'package:cloud_firestore/cloud_firestore.dart';

import '../../data/datasources/auth_firestore_remote_datasource.dart';
import '../../domain/entities/user_entity.dart';

class AuthFirestoreRemoteDataSourceImpl
    implements AuthFirestoreRemoteDataSource {
  AuthFirestoreRemoteDataSourceImpl();

  static final _firestoreCollection =
      FirebaseFirestore.instance.collection('users');
  final _userRef = _firestoreCollection.withConverter(
    fromFirestore: (snapshot, _) => User.fromJson(snapshot.data()!),
    toFirestore: (user, _) => user.toDocument(),
  );

  @override
  Future<void> createUser({required User user}) async {
    await _userRef.doc(user.id).set(user);
  }

  @override
  Future<bool> validateUsername({required String username}) async {
    final snapshot =
        await _firestoreCollection.where('username', isEqualTo: username).get();
    return snapshot.docs.isEmpty;
  }

  @override
  Future<void> updateUser({required User user}) async {
    final doc = _userRef.doc(user.id);
    if (!(await doc.get()).exists) {
      return await createUser(user: user);
    }
    await doc.update(user.toDocument());
  }

  @override
  Future<void> deleteUser(String id) async {
    await _userRef.doc(id).delete();
  }
}
