import 'package:flutter/material.dart';
import 'package:ticket_widget/ticket_widget.dart';

import 'components/ticketinfo.dart';
import 'constants.dart';

class HomeScreen extends StatefulWidget {
   HomeScreen({super.key});
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
  ];

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.black,
      body: Center(
        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
             Text(
              'Your tickets',
              style: TextStyle(
                fontSize: 35,
                //fontWeight:FontWeight.bold,
                color: Constants.white,
              ),
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    backgroundColor: Constants.redAccent,
                    side: BorderSide(color: Constants.red), // Set the color of the border
                  ),
                  onPressed: () {
                    // Handle button press
                  },
                  child:  Text('Upcoming',
                    style: TextStyle(
                        color: Constants.white,
                    ),
                  ),
                ),
                const SizedBox(width: 10,),
                OutlinedButton(
                  onPressed: () {
                    // Handle button press
                  },
                  style: OutlinedButton.styleFrom(
                    backgroundColor:Constants.bluegrey,
                    side: BorderSide(color: Constants.bluegrey), // Set the color of the border
                  ),
                  child: Text('History',style: TextStyle(
                      color: Constants.redAccent
                  ),),
                )
              ],
            ),
            SizedBox(height: 10,),
            const TicketWidget(
              width: 350,
              height: 500,
              isCornerRounded: true,
              child: TicketData(),
            ),
            SizedBox(height: 15,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                OutlinedButton(
                  onPressed: () {
                    // Handle button press
                  },
                  style: OutlinedButton.styleFrom(
                    backgroundColor: Constants.redAccent,
                    side: BorderSide(color: Constants.red),  // Set the color of the border
                  ),
                  child: Row(
                    children:  [
                      Icon(
                        Icons.download,
                        color: Constants.white,
                      ),
                      SizedBox(width: 10,),
                      Text('Download',style: TextStyle(
                          color: Constants.white
                      ),),
                    ],
                  ),
                ),
                SizedBox(width: 20,),
                OutlinedButton(
                  onPressed: () {
                    // Handle button press
                  },
                  style: OutlinedButton.styleFrom(
                    backgroundColor: Constants.redAccent,
                    side: BorderSide(color: Constants.red),  // Set the color of the border
                  ),
                  child: Row(
                    children:  [
                      Icon(
                        Icons.share,
                        color: Constants.white
                      ),
                      SizedBox(width: 10,),
                      Text('Share',style: TextStyle(
                          color: Constants.white
                      ),),
                    ],
                  ),
                )
              ],
            )

          ],
        ),
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(30)),
        child: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home_filled,),
              label: ''
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.people),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.airplane_ticket_rounded),
              label: ''
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_pin,),
              label: ''
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Constants.redAccent,
          unselectedItemColor:Constants.bluegrey,
          onTap: _onItemTapped,
        ),
      ), 
    );
  }
}
