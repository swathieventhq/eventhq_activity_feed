
import 'package:stream_feed_flutter_core/stream_feed_flutter_core.dart';

class DemoUser {
  final User user;
  final Token token;

  const DemoUser({
    required this.user,
    required this.token,
  });
}

// TODO: Replace tokens and users with your values.
const demoUsers = [
  DemoUser(
    user: User(
      id: 'swathigowda',
      data: {
        'handle': '@swathigowda',
        'first_name': 'Swathi',
        'last_name': 'Gowda',
        'full_name': 'Swathi Gowda',
        'profile_image': 'https://media.licdn.com/dms/image/D5603AQGXNlmTijA4AQ/profile-displayphoto-shrink_200_200/0/1673260550411?e=1678924800&v=beta&t=ZMYPZ6KqpCMC09GcRg5QF6J9R1FW9JVBy0ac5ujEpVw',
      },
    ),
    token: Token(
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjoic3dhdGhpZ293ZGEifQ.4s0gpDZnTIpsF4vd9XPw67CjfTYdIp_IGXefYTd5PsI'),
  ),
  DemoUser(
    user: User(
      id: 'Sahanachandrashekar',
      data: {
        'handle': '@SahanaChandrashekar',
        'first_name': 'Sahana',
        'last_name': 'Chandrashekar',
        'full_name': 'Sahana Chandrashekar',
        'profile_image': 'https://avatars.githubusercontent.com/u/4250470?v=4',
      },
    ),
    token: Token(
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjoic2FoYW5hY2hhbmRyYXNoZWthciJ9.2AougBBQNOnbKsjHLRf2zwWy6ibbgVw2PUoku-I71oQ'),
  ),
  DemoUser(
    user: User(
      id: 'nithyakumar',
      data: {
        'handle': '@nithyakumar',
        'first_name': 'Nithya',
        'last_name': 'Kumar',
        'full_name': 'Nithya Kumar',
        'profile_image': 'https://avatars.githubusercontent.com/u/13705472?v=4',
      },
    ),
    token: Token(
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjoibml0aHlha3VtYXIifQ.D_9061YxHTDj_vWuEKqnoNzoeceWoJ54PtGKZADi5WM'),
  ),
];


/// Extension method on Stream's [User] class - to easily access user data
/// properties used in this sample application.
extension UserData on User {
  String get handle => data?['handle'] as String? ?? '';
  String get firstName => data?['first_name'] as String? ?? '';
  String get lastName => data?['last_name'] as String? ?? '';
  String get fullName => data?['full_name'] as String? ?? '';
  String get profileImage => data?['profile_image'] as String? ?? '';
}
