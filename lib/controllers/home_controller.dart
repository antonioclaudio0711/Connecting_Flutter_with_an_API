import 'package:flutter/cupertino.dart';
import 'package:flutter_playground/models/to_do_model.dart';
import 'package:flutter_playground/services/json_placeholder_service.dart';

class HomeController extends ChangeNotifier {
  final _service = JsonPlaceholderService();
  var to_dos = <ToDoModel>[];

  HomeController(JsonPlaceholderService jsonPlaceholderService);

  Future<void> fetchAllToDo() async {
    to_dos = await _service.getTodos();
    notifyListeners();
  }
}
