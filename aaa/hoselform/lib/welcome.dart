import 'package:flutter/material.dart';
import 'package:hoselform/application.dart';

class Hostel {
  final String name;
  final String imageUrl;
  final String location;
  final String details;
  final double rating;

  Hostel({
    required this.name,
    required this.imageUrl,
    required this.location,
    required this.details,
    required this.rating,
  });
}

class Welcome extends StatelessWidget {
  final List<Hostel> hostels = [
    Hostel(
      name: "Zostel Men Hostel",
      imageUrl:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ2WeYXZBhEDwpIHpKJUNc6Q3SKpRFXECu-Sw&usqp=CAU",
      location: "kochi, kerala",
      details: "Located in the heart of City A, close to major attractions.",
      rating: 4.5,
    ),
    Hostel(
      name: "Maritime Ladies HOstel",
      imageUrl:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ2WeYXZBhEDwpIHpKJUNc6Q3SKpRFXECu-Sw&usqp=CAU",
      location: "kochi, kerala",
      details: "Modern hostel with spacious rooms and a lively atmosphere.",
      rating: 4.2,
    ),
    Hostel(
      name: "Santha Maria Hostel",
      imageUrl:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ2WeYXZBhEDwpIHpKJUNc6Q3SKpRFXECu-Sw&usqp=CAU",
      location: "KOzhikode, kerala",
      details: "Budget-friendly option for travelers on a tight budget.",
      rating: 3.9,
    ),
    Hostel(
      name: "Rampart Mens Hostel",
      imageUrl:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ2WeYXZBhEDwpIHpKJUNc6Q3SKpRFXECu-Sw&usqp=CAU",
      location: "chenal,Tamil Ndu",
      details: "Cozy hostel with a friendly staff and comfortable amenities.",
      rating: 4.0,
    ),
    Hostel(
      name: "Hostel By the Sea",
      imageUrl:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ2WeYXZBhEDwpIHpKJUNc6Q3SKpRFXECu-Sw&usqp=CAU",
      location: "kozhikode,kerala",
      details: "Located near public transportation for easy access to the city.",
      rating: 4.1,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 30,left: 40),
            child: Text(
              'Book the Perfect Hostel',
              style: TextStyle(
                fontSize: 27,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: hostels.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SignIn(),
                        ),
                      );
                    },
                    child: Image.network(
                      hostels[index].imageUrl,
                      width: 100,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                  ),
                  title: Text(hostels[index].name),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(hostels[index].location),
                      Text(hostels[index].details),
                      Text('Rating: ${hostels[index].rating}'),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}




