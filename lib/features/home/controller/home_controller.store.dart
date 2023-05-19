import 'package:mobx/mobx.dart';

part 'home_controller.store.g.dart';

class HomeControllerStore = _HomeControllerStore with _$HomeControllerStore;

abstract class _HomeControllerStore with Store {
  @observable
  String selectedPlanet = 'earth';

  @action
  void changeSelectedPlanet(String newSelectedPlanet) {
    selectedPlanet = newSelectedPlanet;
  }
}
