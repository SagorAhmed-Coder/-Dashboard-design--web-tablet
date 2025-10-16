import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class EmailScreen extends StatelessWidget {
  const EmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25,vertical: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(Icons.delete_outline,color: Colors.grey,),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(Icons.share_rounded,color: Colors.grey,),
                ),
                Icon(Icons.home_repair_service,color: Colors.grey,),
                Spacer(),
                Icon(Icons.print,color: Colors.grey,),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(Icons.bookmark,color: Colors.grey,),
                ),
                Icon(Icons.label,color: Colors.grey,),
              ],
            ),
            const SizedBox(height: 50,),
             Divider(),
            const SizedBox(height: 34,),

            Row(
              children: [
                CircleAvatar(
                  child: Image(image: NetworkImage('https://cdn.pixabay.com/photo/2022/08/20/11/59/african-man-7398921_1280.jpg')),
                ),
                SizedBox(width: 12,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Sagor Ahmed',style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),),
                    Text('Hard work Never failed',style: TextStyle(
                         color: Colors.grey,
                         fontSize: 15,
                             ),),
                  ],
                ),
                Spacer(),
                Text('4 January 2025',style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                ),),
              ],
            ),

            SizedBox(
              height: 30,
            ),
            Text('Dear Nirupoma',style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),),
            SizedBox(
              height: 25,
            ),
            Text('It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using Content here, content here, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and ',style: TextStyle(
              color: Colors.grey,
            ),),
            SizedBox(
              height: 30,
            ),
             Row(
               children: [
                 Column(
                   children: [
                     Text('Love you',style: TextStyle(
                       color: Colors.grey,
                     ),),
                     SizedBox(
                       height: 15,
                     ),
                     Text('Elivia',style: TextStyle(
                       color: Colors.grey,
                     ),),
                   ],
                 ),
                 Spacer(),
                 Text('Thank You Man..',style: TextStyle(
                   color: Colors.grey[600],
                 ), ),
               ],
             ),

            const SizedBox(height: 20,),

            Row(
              children: [
                Text('6 Attachments',style: TextStyle(
                  color: Colors.grey,
                ),),
                Spacer(),
                Row(
                  children: [
                    Text('Download All',style: TextStyle(
                      color: Colors.grey,
                    ),),
                    SizedBox(width: 5,),
                    Icon(Icons.sailing,color: Colors.grey,),
                  ],
                ),
              ],
            ),

            const SizedBox(height: 10,),

            Expanded(
              child: MasonryGridView.builder(
                  itemCount: 6,
                  gridDelegate: SliverSimpleGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2),
                 itemBuilder: (context, index) => Padding(
                   padding: const EdgeInsets.all(4.0),
                   child: ClipRRect(
                     borderRadius: BorderRadius.circular(12),
                       child: Image.asset('images/image${index+1}.jpg')),
                 )
              ),
            ),




          ],
        ),
      ),
    );
  }
}
