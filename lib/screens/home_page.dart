import 'package:flutter/material.dart';

class HomePage extends StatefulWidget{

  @override
  State<HomePage> createState() => _HomePage();
}

class _HomePage extends State<HomePage>{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primaryContainer,
        title: const Text('Manna'),
      ),
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              border: Border.all()
            ),
            margin: const EdgeInsets.all(8.0),
            width: double.infinity,
            height: 200.0,
            alignment: Alignment.center,
            child: const Text('Insert Picture Here'),
          ),
          const SizedBox(height: 8.0),
          const Text('Most Valuable Person'),
          SizedBox(
            height: 100.0,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index){
                return Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.orange
                  ),
                  width: 80.0,
                  margin: const EdgeInsets.all(8.0),
                );
              }
            ),
          ),

          const SizedBox(height: 8.0),
          const Text('Upcoming Events'),
          const SizedBox(height: 8.0),
          Expanded(
            child: Material(
              child: ListView.builder(
                itemBuilder: (BuildContext context, int index){
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListTile(
                      tileColor: Colors.green,
                      title: const Text('asdasd'),
                    ),
                  );
                }
              ),
            ),
          )
        ],
      ),
    );
  }
}