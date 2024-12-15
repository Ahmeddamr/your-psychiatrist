import 'package:flutter/material.dart';

class Searchbylocation extends StatefulWidget {
  const Searchbylocation({Key? key}) : super(key: key);

  @override
  State<Searchbylocation> createState() => _SearchbylocationState();
}

class _SearchbylocationState extends State<Searchbylocation> {
  List<String> location = [
    'Tagmuaa',
    'New cairo',
    'ElSheikh Zayed',
    '6 october city',
    'Maadi',
    'Giza',
    'ElQalubia',
    'DownTown Cairo',
    'Zamalek',
    'Heliopolis',
    'Shubra',
    'Nasr city',
  ];

  Map<String, bool> locationValues = {
    'Tagmuaa': false,
    'New cairo': false,
    'ElSheikh Zayed': false,
    '6 october city': false,
    'Maadi': false,
    'Giza': false,
    'ElQalubia': false,
    'DownTown Cairo': false,
    'Zamalek': false,
    'Heliopolis': false,
    'Shubra': false,
    'Nasr city': false,
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 100.0, left: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Search by location',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 14,
                        fontFamily: 'Poppins',
                        color: Color.fromRGBO(39, 56, 123, 1),
                      ),
                    ),
                    Text(
                      'choose your therapy near to you',
                      style: TextStyle(
                        fontWeight: FontWeight.w300,
                        fontSize: 11,
                        fontFamily: 'Poppins-Regular',
                        color: Color.fromRGBO(39, 56, 123, 1),
                      ),
                    ),
                  ],
                ),
                Icon(
                  Icons.location_on_outlined,
                  size: 25,
                  color: Color.fromRGBO(23, 38, 96, 1),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: location.length,
              itemBuilder: (BuildContext context, int index) {
                return CheckboxListTile(
                  title: Text(location[index]),
                  value: locationValues[location[index]],
                  onChanged: (bool? value) {
                    setState(() {
                      locationValues[location[index]] = value!;
                    });
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
