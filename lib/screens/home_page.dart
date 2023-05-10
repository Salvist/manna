import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primaryContainer,
        title: const Text('Manna'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(border: Border.all()),
              margin: const EdgeInsets.all(8.0),
              width: double.infinity,
              height: 200.0,
              alignment: Alignment.center,
              child: const Text('Recommended for you'),
            ),
            const SizedBox(height: 8.0),
            Container(
              decoration: BoxDecoration(border: Border.all()),
              margin: const EdgeInsets.all(8.0),
              width: double.infinity,
              height: 120.0,
              alignment: Alignment.center,
              child: const Text('Promotion'),
            ),

            const SizedBox(height: 8.0),
            const Text('Most Valuable Host'),
            SizedBox(
              height: 100.0,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return Icon(
                    Icons.account_circle,
                    size: 80,
                  );
                  // return Container(
                  //   decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.orange),
                  //   width: 80.0,
                  //   margin: const EdgeInsets.all(8.0),
                  // );
                },
              ),
            ),
            const SizedBox(height: 8.0),
            const Text('Upcoming Events'),
            const SizedBox(height: 8.0),

            for (int i = 0; i < 20; i++)
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  tileColor: Colors.green,
                  title: const Text('asdasd'),
                ),
              )
            // Expanded(
            //   child: Material(
            //     child: ListView.builder(itemBuilder: (BuildContext context, int index) {
            //       return Padding(
            //         padding: const EdgeInsets.all(8.0),
            //         child: ListTile(
            //           tileColor: Colors.green,
            //           title: const Text('asdasd'),
            //         ),
            //       );
            //     }),
            //   ),
            // )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add_rounded),
      ),
    );
  }
}
