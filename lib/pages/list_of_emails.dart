import 'package:flutter/material.dart';

class ListOfEmails extends StatelessWidget {
  const ListOfEmails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.grey[100],
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25,vertical: 20),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hint: Text('Search',style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                    ),),
                    suffixIcon: Icon(Icons.search_rounded,color: Colors.grey,),
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(12),
                    )
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 25,right: 25,top: 20,bottom: 30),
                child: Row(
                  children: [
                    Icon(Icons.add,size: 15,),
                    Text('Sort by date',style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[700],
                    ),),
                    Spacer(),
                    Icon(Icons.ac_unit_outlined,color: Colors.grey[700],),
                  ],
                ),
              ),

              my_card(
                title: 'Tesla',
                subtitle: 'New product here..',
                img: 'asset/mark.png',
                date: '2 june',
                description: 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, ',
              ),
              my_card(
                title: 'Microsoft',
                subtitle: 'our business manager',
                img: 'asset/microsoft.png',
                date: '7 september',
                description: 'randomised words which dont look . If you are going to use a passage of Lorem Ipsum, you need to be sure there isd to repeat predefined chunk '
              ),
              my_card(
                title: 'Time Spend',
                subtitle: 'we follow consistency',
                img: 'asset/business.png',
                date: '14 october',
                description: 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, ',
              ),
              my_card(
                title: 'Nike',
                subtitle: 'you can fly..',
                img: 'asset/nike.png',
                date: '22 August',
                description: 'we are a dremer make it happen for the best time ever assagestion in some form, by injected humour, ',
              ),
              my_card(
                title: 'Micro edge',
                subtitle: 'write clean code',
                img: 'asset/office.png',
                date: '23 june',
                description: 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, ',
              ),



            ],
          ),
        ),
      ),
    );
  }
}



class my_card extends StatelessWidget {
  final String title;
  final String subtitle;
  final String img;
  final String description;
  final String date;
  const my_card({
    super.key,
    required this.title,
    required this.subtitle,
    required this.img,
    required this.description,
    required this.date,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 35,vertical: 10),
      child: Container(
        height: 110,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade200,
              offset: Offset(3, 3),
              spreadRadius: 19,
            )
          ]
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                   Container(
                     decoration: BoxDecoration(
                       color: Colors.grey[100],
                       borderRadius: BorderRadius.circular(5),
                     ),
                     padding: EdgeInsets.all(4),
                     child: SizedBox(
                       height: 35,
                         child: Image.asset(img)),
                   ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(title,style: TextStyle(
                        //  color: Colors.grey[600],
                          fontWeight: FontWeight.bold,
                        ),),
                        Text(subtitle,style: TextStyle(
                          color: Colors.grey[600],
                        ),)
                      ],
                    ),
                  ),
                  Spacer(),
                  Text(date.toString(),style: TextStyle(
                    color: Colors.grey[600],
                  ),),

                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10,right: 10,bottom: 3),
              child: Text(description,style: TextStyle(
                fontSize: 12,
                color: Colors.grey,
              ),),
            ),
          ],
        ),
      ),
    );
  }
}
