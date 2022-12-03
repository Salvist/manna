import 'package:flutter/material.dart';

enum TimeSlot{
  fiveToSeven('5AM to 7AM'),
  sevenToNine('7AM to 9AM'),
  nineToEleven('9AM to 11AM'),
  elevenToOne('11AM to 1PM'),
  oneToThree('1PM to 3PM'),
  threeToFive('3PM to 5PM');

  final String name;
  const TimeSlot(this.name);
}

enum Activity{
  basketball(Icons.sports_basketball),
  soccer(Icons.sports_soccer),
  tennis(Icons.sports_tennis),
  football(Icons.sports_football),
  golf(Icons.sports_golf);

  final IconData iconData;
  const Activity(this.iconData);
}