import 'package:get/get.dart';

class ProgramsViewModel extends GetxController {
  final names = List<String>.generate(10, (i) => 'Name Surname $i');
}