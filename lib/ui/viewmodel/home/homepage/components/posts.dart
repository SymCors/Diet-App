import 'package:get/get.dart';

class PostsViewModel extends GetxController {
  final names = List<String>.generate(10, (i) => 'Name Surname $i');
}