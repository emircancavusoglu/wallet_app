class CurrencyModel {
  String? allow;
  String? contentType;
  String? date;
  String? server;
  String? vary;
  String? via;
  String? xFrameOptions;
  String? xRapidapiRegion;
  String? xRapidapiVersion;
  String? contentLength;
  String? connection;

  CurrencyModel(
      {this.allow,
        this.contentType,
        this.date,
        this.server,
        this.vary,
        this.via,
        this.xFrameOptions,
        this.xRapidapiRegion,
        this.xRapidapiVersion,
        this.contentLength,
        this.connection});

  CurrencyModel.fromJson(Map<String, dynamic> json) {
    allow = json['allow'];
    contentType = json['content-type'];
    date = json['date'];
    server = json['server'];
    vary = json['vary'];
    via = json['via'];
    xFrameOptions = json['x-frame-options'];
    xRapidapiRegion = json['x-rapidapi-region'];
    xRapidapiVersion = json['x-rapidapi-version'];
    contentLength = json['content-length'];
    connection = json['connection'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['allow'] = allow;
    data['content-type'] = contentType;
    data['date'] = date;
    data['server'] = server;
    data['vary'] = vary;
    data['via'] = via;
    data['x-frame-options'] = xFrameOptions;
    data['x-rapidapi-region'] = xRapidapiRegion;
    data['x-rapidapi-version'] = xRapidapiVersion;
    data['content-length'] = contentLength;
    data['connection'] = connection;
    return data;
  }
}
