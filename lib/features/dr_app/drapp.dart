import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PatientAppointment extends StatefulWidget {
  @override
  _CalendarState createState() => _CalendarState();
}

class _CalendarState extends State<PatientAppointment> {
  DateTime selectedDate = DateTime.now(); // TO tracking date

  int currentDateSelectedIndex = 0; //For Horizontal Date
  ScrollController scrollController =
  ScrollController(); //To Track Scroll of ListView

  List<String> listOfMonths = [
    "Jan",
    "Feb",
    "Mar",
    "Apr",
    "May",
    "Jun",
    "Jul",
    "Aug",
    "Sep",
    "Oct",
    "Nov",
    "Dec"
  ];

  List<String> listOfDays = ["Mon", "Tue", "Wed", "Thu", "Fri", "Sat", "Sun"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(218, 219, 250, 1),
      body: Column(
        children: [
         Padding(
           padding: const EdgeInsets.all(20.0),
           child: Column(
             crossAxisAlignment: CrossAxisAlignment.center,
             children: [
               Row(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   Icon(
                     Icons.keyboard_double_arrow_left_rounded,
                     size: 30,
                     color: Color.fromRGBO(39, 56, 123, 1),

                   ),
                   SizedBox(
                     width: 80,
                   ),
                   Text(
                     'Your Schedule',
                     style: TextStyle(
                         fontSize: 14,
                         fontFamily: 'Poppins',
                       color: Color.fromRGBO(39, 56, 123, 1),
                     ),
                   ),
                 ],
               ),
               SizedBox(
                   height: 20
               ),
               Container(
                   height: 30,
                   margin: EdgeInsets.only(left: 10),
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     crossAxisAlignment: CrossAxisAlignment.center,
                     children: [
                       Icon(
                         Icons.arrow_back_ios_new,
                         size: 15,
                         color: Color.fromRGBO(39, 56, 123, 1),

                       ),

                       Text(
                             listOfMonths[selectedDate.month - 1] +
                             ', ' +
                             selectedDate.year.toString(),
                         style: TextStyle(
                             fontSize: 14,
                             fontWeight: FontWeight.w400,
                             color: Color.fromRGBO(39, 56, 123, 1),
                             fontFamily: 'Poppins-Regular'
                         ),
                       ),
                       Icon(
                         Icons.arrow_forward_ios,
                         size: 15,
                         color: Color.fromRGBO(39, 56, 123, 1),

                       ),
                     ],
                   )),
               SizedBox(
                   height: 20),
               Container(
                   height: 70,
                   child: Container(
                       child: ListView.separated(
                         separatorBuilder: (BuildContext context, int index) {
                           return SizedBox(
                               width: 10
                           );
                         },
                         itemCount: 365,
                         controller: scrollController,
                         scrollDirection: Axis.horizontal,
                         itemBuilder: (BuildContext context, int index) {
                           return InkWell(
                             onTap: () {
                               setState(() {
                                 currentDateSelectedIndex = index;
                                 selectedDate =
                                     DateTime.now().add(Duration(days: index));
                               });
                             },
                             child: Container(

                               width: 50,
                               alignment: Alignment.center,
                               decoration: BoxDecoration(
                                   borderRadius: BorderRadius.circular(25),
                                   boxShadow: [
                                     BoxShadow(
                                         color: Colors.grey,
                                         offset: Offset(3, 3),
                                         blurRadius: 5
                                     )
                                   ],
                                   color: currentDateSelectedIndex == index
                                       ? Color.fromRGBO(39, 56, 123, 1)
                                       : Colors.white),
                               child: Column(
                                 mainAxisAlignment: MainAxisAlignment.center,
                                 children: [

                                   Text(
                                     DateTime.now()
                                         .add(Duration(days: index))
                                         .day
                                         .toString(),
                                     style: TextStyle(
                                         fontSize:   14,
                                         fontWeight: FontWeight.w700,
                                         color: currentDateSelectedIndex == index
                                             ? Colors.white
                                             : Colors.grey),
                                   ),
                                   SizedBox(
                                     height: 5,
                                   ),
                                   Text(
                                     listOfDays[DateTime.now()
                                         .add(Duration(days: index))
                                         .weekday -
                                         1]
                                         .toString(),
                                     style: TextStyle(
                                         fontSize: 14,
                                         color: currentDateSelectedIndex == index
                                             ? Colors.white
                                             : Colors.grey),
                                   ),
                                 ],
                               ),
                             ),
                           );
                         },
                       ))),
             ],
           ),
         ),
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.all(
                  Radius.circular(30),
                ),
              ),
              child: Column(
                children: [
                  Icon(
                    Icons.horizontal_rule_outlined,
                    size: 50,
                    color: Color.fromRGBO(128, 128, 128, 0.5),

                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(218, 219, 250, 0.66),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(25.0),
                              child: Image.asset(
                                'assets/images/Dr . Sally El Sheikh.webp',
                                width: 95,
                                height: 95,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                            children: [
                              Text(
                                'Dr. Sally El Sheikh',
                                style: TextStyle(
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.w700,
                                    fontFamily: 'Poppins',
                                    color: Color.fromRGBO(39, 56, 123, 1),

                                ),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 8, vertical: 10
                                ),
                                decoration: BoxDecoration(
                                  color: Color.fromRGBO(39, 56, 123, 0.28),
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(50),

                                  ),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey,
                                      blurRadius: 4,
                                      offset: Offset(0, 3), // changes position of shadow
                                    ),
                                  ],

                                ),
                                child: const Text(
                                    "Cancel session",
                                    style: TextStyle(
                                        color: Color.fromRGBO(255, 255, 255, 1),
                                        fontSize: 4,
                                        fontFamily: 'Poppins-Regular',
                                        fontWeight: FontWeight.w500
                                    )
                                ),
                              ),


                            ],
                          ),
                              SizedBox(
                                height: 7,
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.access_time_outlined,
                                    size: 15,
                                    color: Color.fromRGBO(39, 56, 123, 1),

                                  ),
                                  Text(
                                    'From 2:00PM to 4:30PM',
                                    style: TextStyle(
                                        fontSize: 10.0,
                                        fontWeight: FontWeight.w300,
                                        fontFamily: 'Poppins-Regular',
                                        color: Color.fromRGBO(73, 82, 154, 1),

                                    ),
                                  ),

                                ],
                              ),
                              SizedBox(
                                height: 7,
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.location_on,
                                    size: 15,
                                    color: Color.fromRGBO(39, 56, 123, 1),

                                  ),
                                  Text(
                                    'Al Khalifa Al Maamon, Heliopolis',
                                    style: TextStyle(
                                      fontSize: 10.0,
                                      fontWeight: FontWeight.w300,
                                      fontFamily: 'Poppins-Regular',
                                      color: Color.fromRGBO(73, 82, 154, 1),

                                    ),
                                  ),

                                ],
                              ),
                        ],
                      ),

                                      ],

                                    ),
                            ),
                  )

                        ],
                      ),
              ),
          ),
      ],
            ),
    );
  }
}