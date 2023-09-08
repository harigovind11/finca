import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:finca/domain/core/errors.dart';
import 'package:finca/injectable.dart';
import 'package:finca/domain/auth/i_auth_facade.dart';

extension FirestoreX on FirebaseFirestore {
  Future<DocumentReference> userDocument() async {
    final _firestoreInstance = FirebaseFirestore.instance;
    final userOptions = await getIt<IAuthFacade>().getSignedInUser();
    final user = userOptions.getOrElse(() => throw NotAuthenticatedError());
    return _firestoreInstance.collection('users').doc(
          user.id.getOrCrash(),
        );
  }
}

extension DocumentReferenceX on DocumentReference {
  CollectionReference get transactionCollection => collection('transactions');
}
