// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$HomeControllerStore on _HomeControllerStore, Store {
  late final _$selectedPlanetAtom =
      Atom(name: '_HomeControllerStore.selectedPlanet', context: context);

  @override
  String get selectedPlanet {
    _$selectedPlanetAtom.reportRead();
    return super.selectedPlanet;
  }

  @override
  set selectedPlanet(String value) {
    _$selectedPlanetAtom.reportWrite(value, super.selectedPlanet, () {
      super.selectedPlanet = value;
    });
  }

  late final _$_HomeControllerStoreActionController =
      ActionController(name: '_HomeControllerStore', context: context);

  @override
  void changeSelectedPlanet(String newSelectedPlanet) {
    final _$actionInfo = _$_HomeControllerStoreActionController.startAction(
        name: '_HomeControllerStore.changeSelectedPlanet');
    try {
      return super.changeSelectedPlanet(newSelectedPlanet);
    } finally {
      _$_HomeControllerStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
selectedPlanet: ${selectedPlanet}
    ''';
  }
}
