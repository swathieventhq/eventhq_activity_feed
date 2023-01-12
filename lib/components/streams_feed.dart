import 'package:flutter/material.dart';
import 'package:stream_feed_flutter_core/stream_feed_flutter_core.dart';
import 'package:eventhq_activity_feed/screens/select_user_page.dart';


/*Future<void> main() async {
  // const apiKey = 'q29npdvqjr99';  //TODO: Replace with your key
  const apiKey = 'jeek3463ua3s';
  const secret = '85sx56zwzhasd3jj3mann6yt7yzurn3wvmmzd9mcwdfqpcxsbb6bvhuffbbebmsr';

  final client = StreamFeedClient(apiKey);

  runApp(
    MyApp(client: client),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({
    Key? key,
    required this.client,
  }) : super(key: key);

  final StreamFeedClient client;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: (context, child) => FeedProvider(
        bloc: FeedBloc(
          client: client,
        ),
        child: child!,
      ),
      home: const SelectUserPage(),
    );
  }
}
*/

class StreamFeeds extends StatelessWidget {
  final client =
  StreamFeedClient('jeek3463ua3s');
 // const apiKey = 'jeek3463ua3s'; //  TODO: Add Stream API Token
  late final feedBloc = FeedBloc(client: client);

  @override
  Widget build(BuildContext context) {
     return MaterialApp(
      builder: (context, child) => FeedProvider(
        bloc: FeedBloc(
          client: client,
        ),
        child: child!,
      ),
      home: const SelectUserPage(),
    );
  }
}



