class ComponentsInputCounts {
  int adl = 0;
  int adx = 0;
  int bollinger = 0;
  int bop = 0;
  int chaikinOscillator = 0;
  int chaikinVolatility = 0;
  int currentDayOHL = 0;
  int dema = 0;
  int doubleStochastics = 0;
  int ema = 0;
  int fibonacciPivots = 0;
  int keltnerChannel = 0;
  int macd = 0;
  int max = 0;
  int min = 0;
  int pivots = 0;
  int priorDayOHLC = 0;
  int rsi = 0;
  int sma = 0;
  int standardDeviation = 0;
  int stochastics = 0;
  int stochasticsFast = 0;
  int swing = 0;
  int ultimateOscillator = 0;
  int vol = 0;
  int zigzag = 0;
}

class ComponentInputCountsInstance {
  static ComponentsInputCounts components = ComponentsInputCounts();

  static void clearInputCountsInstance() {
    components = ComponentsInputCounts();
  }
}
