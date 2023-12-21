import 'package:flutter/material.dart';

class TicketData extends StatelessWidget {
  const TicketData({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black87,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              children: [
                Container(
                  width: 50.0,
                  height: 50.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50.0),
                    border: Border.all(width: 1.0, color: Colors.white),
                  ),
                  child: const Center(
                    child: Icon(
                        Icons.person,color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  children: [
                    Row(

                      children: [
                        Text(
                          'Anuj Jain',
                          style: TextStyle(color:Colors.white, fontWeight: FontWeight.bold,fontSize: 20),
                        ),
                        SizedBox(width: 80,),
                        Text(
                          '03-04-2023',
                          style: TextStyle(color:Colors.white60),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          'India Tour 2023',
                          style: TextStyle(color: Colors.white60,fontSize: 12),
                        ),
                        SizedBox(width: 40,),
                        Text(
                          '11:00 AM - 2:00 PM',
                          style: TextStyle(color: Colors.white60,),
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
          SizedBox(height: 10,),
          Container(
            height: 180,
            width: 290,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/man.jpg'), // Replace with your image path
                fit: BoxFit.cover, // You can adjust the BoxFit as needed
              ),
              borderRadius: BorderRadius.circular(20.0),
              border: Border.all(width: 1.0,),
            ),
          ),
          SizedBox(height: 20,),
          Expanded(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                padding: EdgeInsets.all(10),
                height: 200,
                width: 350,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Colors.black12,
                  border: Border.all(width: 1.0, color: Colors.black87 ),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Icon(Icons.location_on_outlined,   color: Colors.white60),
                        SizedBox(width: 5,),
                        Text("Mumbai Stadium , Mumbai India",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight:FontWeight. bold,
                          color: Colors.white60
                        ),)
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Icon(Icons.location_on_outlined,
                            color: Colors.white60
                        ),
                        SizedBox(width: 5,),
                        Text("03-04-2023, 11:00 AM - 2.00 PM",style: TextStyle(
                            color: Colors.white60,
                          fontSize: 14,
                          fontWeight:FontWeight. bold,
                        ),)
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Icon(Icons.local_offer,
                            color: Colors.white60),
                        SizedBox(width: 5,),
                        Text("Row: 2",style: TextStyle(
                            fontSize: 14,
                            fontWeight:FontWeight. bold,
                            color: Colors.white60
                        ),),
                        SizedBox(width: 40,),
                        Text("Seats: 9,10",style: TextStyle(
                            color: Colors.white60,
                          fontSize: 14,
                          fontWeight:FontWeight. bold,
                        ),)
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Icon(Icons.local_offer,
                            color: Colors.white60),
                        SizedBox(width: 5,),
                        Text("₹10,000",style: TextStyle(
                          fontSize: 20,
                          color: Colors.white60,
                          fontWeight: FontWeight.bold,
                        ),),
                        SizedBox(width: 15,),
                        Text("₹16,000",style: TextStyle(
                          fontSize: 15,
                          color: Colors.white60,
                          decoration: TextDecoration.lineThrough,
                          fontWeight: FontWeight.bold,
                        ),),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Container(
                      child:Image.asset('assets/barcode.png', ),
                      width: 400,
                      height: 40,
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

