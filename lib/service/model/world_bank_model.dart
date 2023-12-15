class WorldBankModel {
  int? rows;
  int? os;
  int? page;
  int? total;
  Documents? documents;

  WorldBankModel({this.rows, this.os, this.page, this.total, this.documents});

  WorldBankModel.fromJson(Map<String, dynamic> json) {
    rows = json['rows'];
    os = json['os'];
    page = json['page'];
    total = json['total'];
    documents = json['documents'] != null ? Documents.fromJson(json['documents']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['rows'] = rows;
    data['os'] = os;
    data['page'] = page;
    data['total'] = total;
    if (documents != null) {
      data['documents'] = documents!.toJson();
    }
    return data;
  }
}

class Documents {
  D11831032? d11831032;
  D11831032? d29900830;
  D11831032? d15615154;
  D11831032? d19544300;
  D11831032? d31211834;
  D11831032? d19030958;
  D11831032? d31211780;
  D11831032? d26951778;
  D5704111? d5704111;
  D5704111? d698043;
  Facets? facets;

  Documents({this.d11831032, this.d29900830, this.d15615154, this.d19544300, this.d31211834, this.d19030958, this.d31211780, this.d26951778, this.d5704111, this.d698043, this.facets});

  Documents.fromJson(Map<String, dynamic> json) {
    d11831032 = json['D11831032'] != null ? D11831032.fromJson(json['D11831032']) : null;
    d29900830 = json['D29900830'] != null ? D11831032.fromJson(json['D29900830']) : null;
    d15615154 = json['D15615154'] != null ? D11831032.fromJson(json['D15615154']) : null;
    d19544300 = json['D19544300'] != null ? D11831032.fromJson(json['D19544300']) : null;
    d31211834 = json['D31211834'] != null ? D11831032.fromJson(json['D31211834']) : null;
    d19030958 = json['D19030958'] != null ? D11831032.fromJson(json['D19030958']) : null;
    d31211780 = json['D31211780'] != null ? D11831032.fromJson(json['D31211780']) : null;
    d26951778 = json['D26951778'] != null ? D11831032.fromJson(json['D26951778']) : null;
    d5704111 = json['D5704111'] != null ? D5704111.fromJson(json['D5704111']) : null;
    d698043 = json['D698043'] != null ? D5704111.fromJson(json['D698043']) : null;
    facets = json['facets'] != null ? Facets.fromJson(json['facets']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (d11831032 != null) {
      data['D11831032'] = d11831032!.toJson();
    }
    if (d29900830 != null) {
      data['D29900830'] = d29900830!.toJson();
    }
    if (d15615154 != null) {
      data['D15615154'] = d15615154!.toJson();
    }
    if (d19544300 != null) {
      data['D19544300'] = d19544300!.toJson();
    }
    if (d31211834 != null) {
    data['D31211834'] = d31211834!.toJson();
    }
    if (d19030958 != null) {
      data['D19030958'] = d19030958!.toJson();
    }
    if (d31211780 != null) {
      data['D31211780'] = d31211780!.toJson();
    }
    if (d26951778 != null) {
      data['D26951778'] = d26951778!.toJson();
    }
    if (d5704111 != null) {
      data['D5704111'] = d5704111!.toJson();
    }
    if (d698043 != null) {
      data['D698043'] = d698043!.toJson();
    }
    if (facets != null) {
      data['facets'] = facets!.toJson();
    }
    return data;
  }
}

class D11831032 {
  String? id;
  String? count;
  Entityids? entityids;
  String? docdt;
  Abstracts? abstracts;
  String? displayTitle;
  String? pdfurl;
  String? listingRelativeUrl;
  String? urlFriendlyTitle;
  String? newUrl;
  String? guid;
  String? url;

  D11831032({this.id, this.count, this.entityids, this.docdt, this.abstracts, this.displayTitle, this.pdfurl, this.listingRelativeUrl, this.urlFriendlyTitle, this.newUrl, this.guid, this.url});

  D11831032.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    count = json['count'];
    entityids = json['entityids'] != null ? Entityids.fromJson(json['entityids']) : null;
    docdt = json['docdt'];
    abstracts = json['abstracts'] != null ? Abstracts.fromJson(json['abstracts']) : null;
    displayTitle = json['display_title'];
    pdfurl = json['pdfurl'];
    listingRelativeUrl = json['listing_relative_url'];
    urlFriendlyTitle = json['url_friendly_title'];
    newUrl = json['new_url'];
    guid = json['guid'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['count'] = count;
    if (entityids != null) {
      data['entityids'] = entityids!.toJson();
    }
    data['docdt'] = docdt;
    if (abstracts != null) {
      data['abstracts'] = abstracts!.toJson();
    }
    data['display_title'] = displayTitle;
    data['pdfurl'] = pdfurl;
    data['listing_relative_url'] = listingRelativeUrl;
    data['url_friendly_title'] = urlFriendlyTitle;
    data['new_url'] = newUrl;
    data['guid'] = guid;
    data['url'] = url;
    return data;
  }
}

class Entityids {
  String? entityid;

  Entityids({this.entityid});

  Entityids.fromJson(Map<String, dynamic> json) {
    entityid = json['entityid'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['entityid'] = entityid;
    return data;
  }
}

class Abstracts {
  String? cdata;

  Abstracts({this.cdata});

  Abstracts.fromJson(Map<String, dynamic> json) {
    cdata = json['cdata'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['cdata'] = cdata;
    return data;
  }
}

class D5704111 {
  String? id;
  String? count;
  Entityids? entityids;
  String? docdt;
  Abstracts? abstracts;
  String? displayTitle;
  String? listingRelativeUrl;
  String? urlFriendlyTitle;
  String? newUrl;
  String? guid;
  String? url;

  D5704111({this.id, this.count, this.entityids, this.docdt, this.abstracts, this.displayTitle, this.listingRelativeUrl, this.urlFriendlyTitle, this.newUrl, this.guid, this.url});

  D5704111.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    count = json['count'];
    entityids = json['entityids'] != null ? Entityids.fromJson(json['entityids']) : null;
    docdt = json['docdt'];
    abstracts = json['abstracts'] != null ? Abstracts.fromJson(json['abstracts']) : null;
    displayTitle = json['display_title'];
    listingRelativeUrl = json['listing_relative_url'];
    urlFriendlyTitle = json['url_friendly_title'];
    newUrl = json['new_url'];
    guid = json['guid'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['count'] = count;
    if (entityids != null) {
      data['entityids'] = entityids!.toJson();
    }
    data['docdt'] = docdt;
    if (abstracts != null) {
      data['abstracts'] = abstracts!.toJson();
    }
    data['display_title'] = displayTitle;
    data['listing_relative_url'] = listingRelativeUrl;
    data['url_friendly_title'] = urlFriendlyTitle;
    data['new_url'] = newUrl;
    data['guid'] = guid;
    data['url'] = url;
    return data;
  }
}

class Facets {
  Facets();

  Facets.fromJson(Map<String, dynamic> json) {}

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    return data;
  }
}
