import 'package:flutter/material.dart';
import 'package:hoselform/payemet.dart';

class RoomSelectionScreen extends StatefulWidget {
  @override
  _RoomSelectionScreenState createState() => _RoomSelectionScreenState();
}

class _RoomSelectionScreenState extends State<RoomSelectionScreen> {
  String selectedRoomType = 'Single';
  int durationOfStay = 1;
  int costPerDay = 5000;

  @override
  Widget build(BuildContext context) {
    int totalCost = durationOfStay * costPerDay;

    return Scaffold(
      backgroundColor: Colors.grey,
      body:
          Padding(
        padding: const EdgeInsets.only(top: 10, left: 30),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const Padding(
            padding: EdgeInsets.only(top: 50, left: 70),
            child: Text(
              "Application Form",
              style: TextStyle(
                  color: Color.fromARGB(255, 219, 71, 17),
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 20),
            child: Text('Select Room Type:'),
          ),
          DropdownButton<String>(
            value: selectedRoomType,
            onChanged: (String? newValue) {
              setState(() {
                selectedRoomType = newValue!;
              });
            },
            items: <String>['Single', 'Double', 'Dormitory']
                .map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child:
                    Text(value, style: const TextStyle(backgroundColor: Colors.grey)),
              );
            }).toList(),
          ),
          const SizedBox(height: 20.0),
          const Text('Duration of Stay (in months):'),
          Slider(
            value: durationOfStay.toDouble(),
            min: 1,
            max: 30,
            divisions: 29,
            onChanged: (double newValue) {
              setState(() {
                durationOfStay = newValue.round();
              });
            },
          ),
          Text('$durationOfStay days'),
          const SizedBox(height: 20.0),
          Text(
            'Total Cost: Rs $totalCost',
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20.0),
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PaymentOptions(),
                    ));
              },
              child: const Text('Continue')),
        ]),
      ),
    );
  }
}


// 