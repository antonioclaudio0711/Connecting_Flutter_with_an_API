import 'package:dio/dio.dart';
import 'package:flutter_playground/models/to_do_model.dart';

const url = 'https://jsonplaceholder.typicode.com/todos';

class JsonPlaceholderService {
  final dio = Dio();

  Future<List<ToDoModel>> getTodos() async {
    final response = await dio.get(url);
    final body = response.data as List;
    final to_dos = body.map((map) => ToDoModel.fromJson(map)).toList();

    return to_dos;
  }
}
