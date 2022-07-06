import 'package:flutter/material.dart';
import 'package:instagram_aulas/feed/presentation/appbar/app_bar_widget.dart';

class FeedPage extends StatefulWidget {
  const FeedPage({Key? key}) : super(key: key);

  @override
  State<FeedPage> createState() => _FeedPageState();
}

class _FeedPageState extends State<FeedPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarWidget(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 100,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: 20,
              separatorBuilder: (_, index) =>
                  const Padding(padding: EdgeInsets.only(left: 7)),
              itemBuilder: (context, index) {
                return buildAvatar();
              },
            ),
          ),
          Text(
            'Posts',
            style: TextStyle(color: Colors.white),
          )
        ],
      ),
    );
  }

  Widget buildAvatar() {
    return Column(
      children: [
        _buildCircle(),
        _buildUsername(),
      ],
    );
  }

  Widget _buildCircle() {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [
            Colors.red,
            Colors.yellow[200]!,
            Colors.purple,
            Colors.red,
          ],
        ),
      ),
      child: const Padding(
        padding: EdgeInsets.all(1.5),
        child: CircleAvatar(
          backgroundColor: Colors.black,
          radius: 38,
          child: CircleAvatar(
            radius: 35,
            backgroundImage: AssetImage('assets/images/perfil-instagram.png'),
          ),
        ),
      ),
    );
  }

  Widget _buildUsername() {
    return const Padding(
      padding: EdgeInsets.only(left: 5.0, right: 5.0),
      child: Text(
        'thiago.desales',
        style: TextStyle(color: Colors.white, fontSize: 12),
      ),
    );
  }
}
