import 'package:apod_app/providers/apods.dart';
import 'package:mobx/mobx.dart';

part 'apod_store.g.dart';

class ApodStore = _ApodStore with _$ApodStore;

enum ApodState {
  inicial,
  carregando,
  carregado,
}

abstract class _ApodStore with Store {
  final Apods _apodsProvider;

  _ApodStore(this._apodsProvider);
}
