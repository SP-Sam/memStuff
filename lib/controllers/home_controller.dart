import '../models/stuff_model.dart';
import '../repositories/stuff_repository.dart';

class HomeController {
  final StuffRepository _repository;

  HomeController(this._repository);

  List<StuffModel> stuffs = <StuffModel>[];

  int get length => stuffs?.length ?? 0;

  bool loading = false;

  Future<void> readAll() async {
    loading = true;
    stuffs = await _repository.readAll();
    loading = false;
  }

  Future<void> delete(StuffModel stuff) async {
    loading = true;
    await _repository.delete(stuff);
    loading = false;
  }

  Future undo(StuffModel stuff) async {
    await _repository.create(stuff);
  }
}
