import 'package:apod_app/helpers/apod.dart';
import 'package:apod_app/providers/apods.dart';
import 'package:mobx/mobx.dart';

part 'apod_store.g.dart';

class ApodStore = _ApodStore with _$ApodStore;

enum ApodState {
  empty,
  initial,
  loading,
  loaded,
}

abstract class _ApodStore with Store {
  final Apods _apodsProvider;

  _ApodStore(this._apodsProvider);

  @observable
  bool hdImage = false;

  @observable
  List<Apod> _apodList = [];

  @observable
  Apod _apodObservable;

  @observable
  ObservableFuture<Apod> _apodFuture;

  @computed
  // ignore: missing_return
  ApodState get apodState {
    if (_apodFuture == null || _apodFuture.status == FutureStatus.rejected) {
      return ApodState.initial;
    }

    if (_apodFuture.status == FutureStatus.pending) return ApodState.loading;

    if (_apodFuture.status == FutureStatus.fulfilled && apods.isEmpty)
      return ApodState.empty;

    if (apods.isNotEmpty && _apodFuture.status == FutureStatus.fulfilled)
      return ApodState.loaded;
  }

  @computed
  List<Apod> get apods {
    return [..._apodList];
  }

  @action
  Future getApod(String date, String hd) async {
    try {
      _apodFuture = ObservableFuture(
        _apodsProvider.getApod(date, hd),
      );
      _apodObservable = await _apodFuture;
      _apodList.add(_apodObservable);
    } catch (e) {
      throw (e);
    }
  }

  @action
  Future getSavedApods() async {
    //   buscandoEstruturas = true;
    //   try {
    //     _estruturasFuture = ObservableFuture(
    //       _estruturaLevantamento
    //           .buscaPorEstrutura(idEstrutura)
    //           .whenComplete(() => buscandoEstruturas = false),
    //     );
    //     _estruturasObservable = await _estruturasFuture;
    //   } catch (e) {
    //     buscandoEstruturas = false;
    //     throw (e);
    //   }
    // }
  }
}
