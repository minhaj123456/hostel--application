// import 'package:flutter/material.dart';



// class HostelApplicationForm extends StatefulWidget {
//   @override
//   _HostelApplicationFormState createState() => _HostelApplicationFormState();
// }

// class _HostelApplicationFormState extends State<HostelApplicationForm> {
//   final _formKey = GlobalKey<FormState>();
//   // Define variables to store form data

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Hostel Application Form'),
//       ),
//       body: Padding(
//         padding: EdgeInsets.all(16.0),
//         child: Form(
//           key: _formKey,
//           child: SingleChildScrollView(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   'Personal Information',
//                   style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//                 ),
//                 TextFormField(
//                   // Personal Information Fields
//                   decoration: InputDecoration(labelText: 'Full Name'),
//                   validator: (value) {
//                     if (value!.isEmpty) {
//                       return 'Please enter your full name';
//                     }
//                     return null;
//                   },
//                 ),
//                 // Add more text form fields for other personal information

//                 SizedBox(height: 20),

//                 Text(
//                   'Payment Section',
//                   style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//                 ),
//                 TextFormField(
//                   // Payment Fields
//                   decoration: InputDecoration(labelText: 'Card Number'),
//                   validator: (value) {
//                     if (value!.isEmpty) {
//                       return 'Please enter your card number';
//                     }
//                     return null;
//                   },
//                 ),
//                 // Add more text form fields for payment information

//                 SizedBox(height: 20),

//                 ElevatedButton(
//                   onPressed: () {
//                     if (_formKey.currentState!.validate()) {
//                       // Process form data and payment
//                       // Display success message or navigate to next screen
//                     }
//                   },
//                   child: Text('Submit'),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }