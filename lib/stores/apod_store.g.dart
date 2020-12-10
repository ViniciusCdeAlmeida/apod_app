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
  Computed<List<Apod>> _$apodsComputed;

  @override
  List<Apod> get apods => (_$apodsComputed ??=
          Computed<List<Apod>>(() => super.apods, name: '_ApodStore.apods'))
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

  @override
  String toString() {
    return '''
hdImage: ${hdImage},
apodState: ${apodState},
apods: ${apods}
    ''';
  }
}
