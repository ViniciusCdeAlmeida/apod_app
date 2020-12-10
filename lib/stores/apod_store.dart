import 'package:apod_app/helpers/apod.dart';
import 'package:apod_app/providers/apods.dart';
import 'package:mobx/mobx.dart';

part 'apod_store.g.dart';

//I make mobx to control how the aplication reacts with some changes

class ApodStore = _ApodStore with _$ApodStore;
//States for mobx
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
  List<Apod> _apodFilteredList = [];

  @observable
  Apod _apodObservable;

  @observable
  ObservableFuture<Apod> _apodFuture;

  @observable
  ObservableList<Apod> _apodsObservable = ObservableList<Apod>();

  @observable
  ObservableList<Apod> _apodsFilteredObservable = ObservableList<Apod>();

  @observable
  ObservableFuture<List<Apod>> _apodsFuture;

  //Some returns to status
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

  //Some returns to status
  @computed
  // ignore: missing_return
  ApodState get apodSavedState {
    if (_apodsFuture == null || _apodsFuture.status == FutureStatus.rejected) {
      return ApodState.initial;
    }

    if (_apodsFuture.status == FutureStatus.pending) return ApodState.loading;

    if (_apodsFuture.status == FutureStatus.fulfilled &&
        _apodsObservable.isEmpty) return ApodState.empty;

    if (_apodsObservable.isNotEmpty &&
        _apodsFuture.status == FutureStatus.fulfilled) return ApodState.loaded;
  }

  //Return the content filtered or not
  @computed
  List<Apod> get apods {
    return _apodFilteredList.isNotEmpty &&
            _apodFilteredList.length < [..._apodList].length
        ? _apodFilteredList
        : [..._apodList];
  }

  //Return the content filtered or not
  @computed
  List<Apod> get apodsSaved {
    return _apodsFilteredObservable.isNotEmpty &&
            _apodsFilteredObservable.length < [..._apodsObservable].length
        ? _apodsFilteredObservable
        : [..._apodsObservable];
    // return [..._apodsObservable];
  }

  //Filter the content
  @action
  void filterApod(String value) {
    _apodFilteredList = _apodList
        .where(
          (element) {
            return element.date.contains(value) ||
                element.title.contains(value);
          },
        )
        .toList()
        .asObservable();
  }

  //Filter the content
  @action
  void filterApods(String value) {
    _apodsFilteredObservable = _apodsObservable
        .where(
          (element) {
            return element.date.contains(value) ||
                element.title.contains(value);
          },
        )
        .toList()
        .asObservable();
  }

  @action
  void cleanSavedFilterd() {
    _apodsFilteredObservable.clear();
  }

  @action
  void cleanApods() {
    _apodFilteredList.clear();
  }

  //Get APOD from internet
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

  //Save APOD in smartfone
  Future<void> saveApod(Apod apod) async {
    try {
      _apodsProvider.saveApod(apod);
    } catch (e) {
      throw (e);
    }
  }

  //Retrive all APOD saved
  @action
  Future getSavedApods() async {
    try {
      _apodsFuture = ObservableFuture(_apodsProvider.getSavedApod());
      _apodsObservable = (await _apodsFuture).asObservable();
    } catch (e) {
      throw (e);
    }
  }
}
