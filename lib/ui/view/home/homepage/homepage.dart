import 'package:flutter/material.dart';

import 'components/posts.dart';
import 'components/stories.dart';

class HomePage extends StatefulWidget {
  const HomePage();

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    //final viewModel = Get.put(HomePageViewModel());
    return SingleChildScrollView(
      child: Column(
        children: [
          const Stories(),
          Divider(
            height: 1,
          ),
          const Posts(),
        ],
      ),
    );
  }
}
