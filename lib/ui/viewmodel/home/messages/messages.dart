import 'package:get/get.dart';

class MessagesViewModel extends GetxController {
  final names = List<String>.generate(15, (i) => 'Name Surname $i');
}