class ComponentsInputCounts {
  int adl = 0;
  int adx = 0;
  int bollinger = 0;
  int bop = 0;
}

class ComponentInputCountsInstance {
  static ComponentsInputCounts components = ComponentsInputCounts();

  static void clearInputCountsInstance() {
    components = ComponentsInputCounts();
  }
}
