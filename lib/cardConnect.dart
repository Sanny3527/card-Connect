import 'package:flutter/material.dart';

class Cardconnect extends StatelessWidget {
  const Cardconnect({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Card Connect'),
          backgroundColor: Colors.amberAccent,
        ),

        body: Container(
          //Outer Container
          margin: EdgeInsets.all(11), //margin for Outer Container
          width: 370,
          height: 250,

          decoration: BoxDecoration(
            //Decoration for Outer Container
            color: Colors.blueGrey[200],
            borderRadius: BorderRadius.circular(15),

            boxShadow: [
              //boxShadow for Outer Container
              BoxShadow(
                blurRadius: 5,
                spreadRadius: 5,
                color: Colors.blueGrey[300]!,
                offset: Offset(2, 3),
              ),
            ],
          ),

          child: Column(
            //column for whole card
            children: [
              Padding(
                //padding for row for phone number and phone icon
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  //row for phone number and phone icon
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      //padding for phone icon
                      padding: EdgeInsets.only(right: 4),
                      child: Icon(Icons.phone, size: 20),
                    ),
                    Text('+91 123456790'),
                  ],
                ),
              ),

              Row(    //row for avatar and details
                children: [
                  Padding(    //padding for avatar
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Colors.blueGrey[300],
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                        border: Border.all(
                          color: Colors.blueGrey[400]!,
                          width: 2,
                        ),

                        boxShadow: [   //boxShadow for avatar
                          BoxShadow(
                            blurRadius: 5,
                            spreadRadius: 5,
                            color: Colors.blueGrey[400]!,
                          ),
                        ],
                      ),

                      child: ClipRRect(    //ClipRRect for avatar image
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                        child: Image.asset('assets/images/person_image.png'),
                      ),
                    ),
                  ),
                  
                  Column(   //column for details
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(       //row for name
                        children: [
                          Icon(Icons.person, size: 30,),
                          Text('John Doe', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),)
                        ],
                      ),

                      Row(   //row for office name
                        children: [
                          Icon(Icons.home, size: 30),
                          Text('John Corporation',
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                          )
                        ],
                      ),
                      
                      Row(     //row for location
                        children: [
                          Icon(Icons.location_city, size: 30,),
                          Text('Phagwara, Punjab', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),)
                        ],
                      )
                    ],
                  )
                ],
              ),

              Padding(   //padding and container for line--------
                padding: const EdgeInsets.all(14.0),
                child: Container(
                  height: 3,
                  width: double.infinity,
                  color: Colors.black,
                ),
              ),
              
              Row(   //row for website and email deatils
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(    //column for website
                    children: [
                      Icon(Icons.web, size: 25,),
                      Text('www.johncorporation.com'),
                    ],
                  ),
                  
                  Column(    //column for email address
                    children: [
                      Icon(Icons.mail, size: 25,),
                      Text('john123@gmail.com')
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
