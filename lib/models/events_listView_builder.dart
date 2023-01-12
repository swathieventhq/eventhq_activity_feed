import 'package:flutter/material.dart';
import 'package:eventhq_activity_feed/models/events_object_list.dart';
import '../screens/events_screen.dart';


class EventsPage extends StatefulWidget {
  @override
  State<EventsPage> createState() => _EventsPageState();
}

class _EventsPageState extends State<EventsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: ListOfObjects.items.length,
          itemBuilder: (context, index) {
            return ShowObjects(
              items: ListOfObjects.items[index],
            );
          },
        ),
      );
  }
}