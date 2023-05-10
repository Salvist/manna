import 'package:flutter/material.dart';

class UserProfilePage extends StatefulWidget {
  const UserProfilePage({Key? key}) : super(key: key);

  @override
  State<UserProfilePage> createState() => _UserProfilePageState();
}

class _UserProfilePageState extends State<UserProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Text('This is User Profile Page'),
            Container(
              width: double.infinity,
              height: 300.0,
              color: Colors.blue,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(),
                  const Text('Manna Project'),
                  const SizedBox(height: 8.0,),
                  const Text('Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.'),
                  const SizedBox(height: 50.0,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Text('Followers'),
                      const Text('Following'),
                      const Text('Activities')
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(height: 16.0,),
            // SizedBox(
            //   width: 200.0,
            //   child: TextField(
            //     decoration: InputDecoration(
            //       border: OutlineInputBorder()
            //     ),
            //   ),
            // ),

            ListTile(
              leading: Icon(Icons.star),
              title: const Text('Hobby'),
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.star),
              title: const Text('Interest'),
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.star),
              title: const Text('Dislike'),
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.directions),
              title: const Text('Neighborhood'),
            ),

            const SizedBox(height: 16.0,),
            SizedBox(
              width: 300.0,
              height: 200.0,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text('Safety 3/5'),
                          const Text('Safety 3/5'),
                          const Text('Safety 3/5'),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text('Safety 3/5'),
                          const Text('Safety 3/5'),
                          const Text('Safety 3/5'),
                        ],
                      ),
                    ],
                  ),
                  Container(
                    width: 150,
                    height: 150.0,
                    decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      border: Border.all(),
                      shape: BoxShape.circle,
                    ),
                    alignment: Alignment.center,
                    child: const Text('Overall rating 4.5/5'),
                  )
                ],
              ),
            ),
            Row(
              children: [
                const Text('Past Activities'),

                const Spacer(),
                TextButton(
                  onPressed: (){},
                  child: const Text('See All'),
                )
              ],
            ),
            ListView.builder(
              shrinkWrap: true,
              itemCount: 5,
              itemBuilder: (BuildContext context, int index){

                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    color: Colors.blue,
                    height: 80.0,
                    // child: child,
                  ),
                );
              }
            ),
            ListTile(
              leading: Icon(Icons.report),
              title: const Text('Report User'),
            ),
          ],
        ),
      )
    );
  }
}
