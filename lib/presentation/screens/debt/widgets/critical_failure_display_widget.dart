import 'package:finca/core/colors_collection.dart';
import 'package:finca/core/constants.dart';
import 'package:finca/domain/core/firestore_faillure.dart';
import 'package:flutter/material.dart';

class CriticalFailureDisplay extends StatelessWidget {
  final FirestoreFailure failure;

  const CriticalFailureDisplay({
    Key? key,
    required this.failure,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          kHeight10,
          Text(
            failure.maybeMap(
              insufficientPermissions: (_) => 'Insufficient permissions',
              orElse: () => 'Unexpected error. \nPlease, contact support.',
            ),
            style: const TextStyle(fontSize: 24, color: kWhite),
            textAlign: TextAlign.center,
          ),
          kHeight10,
          ElevatedButton(
            onPressed: () {
              print('Sending email!');
            },
            child: const Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Icon(Icons.mail),
                SizedBox(width: 4),
                Text('I NEED HELP'),
              ],
            ),
          )
        ],
      ),
    );
  }
}
