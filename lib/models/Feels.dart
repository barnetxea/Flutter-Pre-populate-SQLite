class Feels {
  int _feeID;
  String _feeName;

  Feels(this._feeName);

  Feels.fromMap(dynamic obj) {
    this._feeName = obj['fee_name'];
  }
  String get name => _feeName;
  Map<String, dynamic> toMap() {
    var map = new Map<String, dynamic>();
    map["fee_name"] = _feeName;
    return map;
  }
}
