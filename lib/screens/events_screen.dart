import 'package:flutter/material.dart';
import 'package:eventhq_activity_feed/models/events_object_list.dart';

class ShowObjects extends StatefulWidget {
  ShowObjects({required this.items});
  final ObjectList items;

  @override
  State<ShowObjects> createState() => _ShowObjectsState();
}

class _ShowObjectsState extends State<ShowObjects> {

  bool isRegistered = false;
  bool isSwitched = false;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Row(
            children: [
              Container(
                margin: EdgeInsets.all(10),
                child: Image(
                  image: NetworkImage(widget.items.logo),
                  height: 80,
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.items.heading,
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                      ),
                    ),
                    Text(
                      widget.items.subHeading,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 11,
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Text(
                      widget.items.eventDate,
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        color: Colors.green.shade800,
                        fontWeight: FontWeight.w500,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 25),
                child:OutlinedButton(
                  onPressed: () {
                    setState(() {
                      isRegistered = !isRegistered;
                    });
                  },
                  child: !isRegistered ? Text('Register',style: TextStyle(color: Colors.black),) : Text('Registered',style: TextStyle(color: Colors.white),),
                  style: OutlinedButton.styleFrom(
                    backgroundColor:!isRegistered ? Colors.white :Colors.black,
                    side: BorderSide(width: 3),
                    foregroundColor: Colors.black,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}








