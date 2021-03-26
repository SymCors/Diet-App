import 'package:diet_app/core/base/view/base_view.dart';
import 'package:flutter/material.dart';

class MyDietLists extends StatefulWidget {
  const MyDietLists();

  @override
  _MyDietListsState createState() => _MyDietListsState();
}

class _MyDietListsState extends State<MyDietLists> {
  @override
  Widget build(BuildContext context) {
    return BaseView(
      viewModel: null,
      appBar: AppBar(
      ),
      onPageBuilder: (context, value) => const body(),
    );
  }
}

class body extends StatelessWidget {
  const body();

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
