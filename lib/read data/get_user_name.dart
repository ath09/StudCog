import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class GetUserName extends StatelessWidget {
  final String documentId;
  GetUserName({required this.documentId});

  @override
  Widget build(BuildContext context) {
    CollectionReference student =
        FirebaseFirestore.instance.collection('student');
    return FutureBuilder<DocumentSnapshot>(
      future: student.doc(documentId).get(),
      builder: ((context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          Map<String, dynamic> data =
              snapshot.data!.data() as Map<String, dynamic>;
          return Text(
            'College : ${data['College']}' +
                '\nEmail : ${data['Email']}' +
                '\nRegistration ID : ${data['Registration ID']}' +
                '\nArea of Complaint : ${data['Area of Complaint']}' +
                '\nDetailed Complaint : ${data['Detailed Complaint']}' +
                '\nImage : ${data['Image']}' +
                '\nTime : ${DateFormat('dd-MM-yyyy kk:mm:ss').format(DateTime.now())}',
            style: TextStyle(
                fontFamily: 'Unbounded', fontSize: 18, color: Colors.black),
          );
        }
        return Text('Loading...');
      }),
    );
  }
}
