import 'package:get/get.dart';

class MyPostsViewModel extends GetxController {
  final names = List<String>.generate(3, (i) => 'Name Surname $i');
}