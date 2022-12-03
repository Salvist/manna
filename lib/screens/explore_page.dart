import 'dart:math';

import 'package:flutter/material.dart';
import 'package:manna/utils/constants.dart';

class ExplorePage extends StatefulWidget {
  const ExplorePage({Key? key}) : super(key: key);

  @override
  State<ExplorePage> createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {
  static const activities =[
    'All',
    'Basketball',
    'Soccer',
    'Tennis',
    'Ping-pong',
    'Rugby'
  ];

  List<String> get actualActivities => activities.sublist(1);

  Random rand = Random();
  String get randomTimeSlot => TimeSlot.values[rand.nextInt(TimeSlot.values.length)].name;
  Activity get randomActivity => Activity.values[rand.nextInt(Activity.values.length)];

  static const boldTitle = TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Time', style: boldTitle,),
          SizedBox(
            height: 40.0,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: TimeSlot.values.length,
              itemBuilder: (BuildContext context, int index){
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4.0),
                  child: FilterChip(
                    label: Text(TimeSlot.values[index].name),
                    onSelected: (value) {},
                  ),
                );
              }
            ),
          ),
          const SizedBox(height: 16.0,),
          const Text('Activity', style: boldTitle,),
          SizedBox(
            height: 40.0,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: Activity.values.length,
              itemBuilder: (BuildContext context, int index){
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4.0),
                  child: FilterChip(
                    label: Text(Activity.values[index].name),
                    onSelected: (value) {

                    },
                  ),
                );
              }
            ),
          ),
          const SizedBox(height: 8.0,),
          Expanded(
            child: ListView.builder(
              itemBuilder: (BuildContext context, int index){
                final activity = randomActivity;

                return Container(
                  decoration: BoxDecoration(
                    // border: Border.all(),
                    borderRadius: const BorderRadius.all(Radius.circular(8.0)),
                    color: Theme.of(context).colorScheme.primaryContainer,
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 2.0,
                        offset: Offset(2,2),
                      )
                    ]
                  ),
                  margin: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
                  padding: const EdgeInsets.all(8.0),
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children:[
                          Container(
                            decoration: BoxDecoration(
                                border: Border.all()
                            ),
                            width: 120.0,
                            height: 80.0,
                            alignment: Alignment.center,
                            child: const Text('Insert Thumbnail'),
                          ),
                          const SizedBox(width: 16.0,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Host: Host Name'),
                              Text('Event Name: Event Name'),
                              Row(
                                children: [
                                  Text('Activity: ${activity.name}'),
                                  const SizedBox(width: 4.0,),
                                  Icon(activity.iconData)
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                      const SizedBox(height: 4.0,),
                      Row(
                        children: [
                          const Icon(Icons.schedule),
                          const SizedBox(width: 4.0,),
                          Text('Time: $randomTimeSlot'),
                          const SizedBox(width: 16.0,),
                          Icon(Icons.location_on),
                          const SizedBox(width: 4.0,),
                          Text('Location TBD')
                        ],
                      ),
                      const SizedBox(height: 4.0,),
                      Text('Description: Event description goes here')

                    ],
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
