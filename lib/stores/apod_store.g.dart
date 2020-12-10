// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'apod_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ApodStore on _ApodStore, Store {
  Computed<ApodState> _$apodStateComputed;

  @override
  ApodState get apodState =>
      (_$apodStateComputed ??= Computed<ApodState>(() => super.apodState,
              name: '_ApodStore.apodState'))
          .value;
  Computed<ApodState> _$apodSavedStateComputed;

  @override
  ApodState get apodSavedState => (_$apodSavedStateComputed ??=
          Computed<ApodState>(() => super.apodSavedState,
              name: '_ApodStore.apodSavedState'))
      .value;
  Computed<List<Apod>> _$apodsComputed;

  @override
  List<Apod> get apods => (_$apodsComputed ??=
          Computed<List<Apod>>(() => super.apods, name: '_ApodStore.apods'))
      .value;
  Computed<List<Apod>> _$apodsSavedComputed;

  @override
  List<Apod> get apodsSaved =>
      (_$apodsSavedComputed ??= Computed<List<Apod>>(() => super.apodsSaved,
              name: '_ApodStore.apodsSaved'))
          .value;

  final _$hdImageAtom = Atom(name: '_ApodStore.hdImage');

  @override
  bool get hdImage {
    _$hdImageAtom.reportRead();
    return super.hdImage;
  }

  @override
  set hdImage(bool value) {
    _$hdImageAtom.reportWrite(value, super.hdImage, () {
      super.hdImage = value;
    });
  }

  final _$_apodListAtom = Atom(name: '_ApodStore._apodList');

  @override
  List<Apod> get _apodList {
    _$_apodListAtom.reportRead();
    return super._apodList;
  }

  @override
  set _apodList(List<Apod> value) {
    _$_apodListAtom.reportWrite(value, super._apodList, () {
      super._apodList = value;
    });
  }

  final _$_apodFilteredListAtom = Atom(name: '_ApodStore._apodFilteredList');

  @override
  List<Apod> get _apodFilteredList {
    _$_apodFilteredListAtom.reportRead();
    return super._apodFilteredList;
  }

  @override
  set _apodFilteredList(List<Apod> value) {
    _$_apodFilteredListAtom.reportWrite(value, super._apodFilteredList, () {
      super._apodFilteredList = value;
    });
  }

  final _$_apodObservableAtom = Atom(name: '_ApodStore._apodObservable');

  @override
  Apod get _apodObservable {
    _$_apodObservableAtom.reportRead();
    return super._apodObservable;
  }

  @override
  set _apodObservable(Apod value) {
    _$_apodObservableAtom.reportWrite(value, super._apodObservable, () {
      super._apodObservable = value;
    });
  }

  final _$_apodFutureAtom = Atom(name: '_ApodStore._apodFuture');

  @override
  ObservableFuture<Apod> get _apodFuture {
    _$_apodFutureAtom.reportRead();
    return super._apodFuture;
  }

  @override
  set _apodFuture(ObservableFuture<Apod> value) {
    _$_apodFutureAtom.reportWrite(value, super._apodFuture, () {
      super._apodFuture = value;
    });
  }

  final _$_apodsObservableAtom = Atom(name: '_ApodStore._apodsObservable');

  @override
  ObservableList<Apod> get _apodsObservable {
    _$_apodsObservableAtom.reportRead();
    return super._apodsObservable;
  }

  @override
  set _apodsObservable(ObservableList<Apod> value) {
    _$_apodsObservableAtom.reportWrite(value, super._apodsObservable, () {
      super._apodsObservable = value;
    });
  }

  final _$_apodsFilteredObservableAtom =
      Atom(name: '_ApodStore._apodsFilteredObservable');

  @override
  ObservableList<Apod> get _apodsFilteredObservable {
    _$_apodsFilteredObservableAtom.reportRead();
    return super._apodsFilteredObservable;
  }

  @override
  set _apodsFilteredObservable(ObservableList<Apod> value) {
    _$_apodsFilteredObservableAtom
        .reportWrite(value, super._apodsFilteredObservable, () {
      super._apodsFilteredObservable = value;
    });
  }

  final _$_apodsFutureAtom = Atom(name: '_ApodStore._apodsFuture');

  @override
  ObservableFuture<List<Apod>> get _apodsFuture {
    _$_apodsFutureAtom.reportRead();
    return super._apodsFuture;
  }

  @override
  set _apodsFuture(ObservableFuture<List<Apod>> value) {
    _$_apodsFutureAtom.reportWrite(value, super._apodsFuture, () {
      super._apodsFuture = value;
    });
  }

  final _$getApodAsyncAction = AsyncAction('_ApodStore.getApod');

  @override
  Future<dynamic> getApod(String date, String hd) {
    return _$getApodAsyncAction.run(() => super.getApod(date, hd));
  }

  final _$getSavedApodsAsyncAction = AsyncAction('_ApodStore.getSavedApods');

  @override
  Future<dynamic> getSavedApods() {
    return _$getSavedApodsAsyncAction.run(() => super.getSavedApods());
  }

  final _$_ApodStoreActionController = ActionController(name: '_ApodStore');

  @override
  void filterApod(String value) {
    final _$actionInfo =
        _$_ApodStoreActionController.startAction(name: '_ApodStore.filterApod');
    try {
      return super.filterApod(value);
    } finally {
      _$_ApodStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void filterApods(String value) {
    final _$actionInfo = _$_ApodStoreActionController.startAction(
        name: '_ApodStore.filterApods');
    try {
      return super.filterApods(value);
    } finally {
      _$_ApodStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
hdImage: ${hdImage},
apodState: ${apodState},
apodSavedState: ${apodSavedState},
apods: ${apods},
apodsSaved: ${apodsSaved}
    ''';
  }
}
