class RouterPath{
  static RouterPath? _instance;

  static RouterPath get instance {
    _instance ??= RouterPath._init();
    return _instance!;
  }

  RouterPath._init();

    String characters = "/characters";
    String characterDetail = "characterDetail";
    String spells = "/spells";
    String setting = "/settings";
}