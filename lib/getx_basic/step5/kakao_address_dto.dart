class KakaoAddressDto {
  KakaoAddressDto({
    this.documents,
    this.meta,
  });

  KakaoAddressDto.fromJson(dynamic json) {
    if (json['documents'] != null) {
      documents = [];
      json['documents'].forEach((v) {
        documents?.add(DocumentDto.fromJson(v));
      });
    }
    meta = json['meta'] != null ? Meta.fromJson(json['meta']) : null;
  }

  List<DocumentDto>? documents;
  Meta? meta;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (documents != null) {
      map['documents'] = documents?.map((v) => v.toJson()).toList();
    }
    if (meta != null) {
      map['meta'] = meta?.toJson();
    }
    return map;
  }
}

class Meta {
  Meta({
    this.isEnd,
    this.pageableCount,
    this.totalCount,
  });

  Meta.fromJson(dynamic json) {
    isEnd = json['is_end'];
    pageableCount = json['pageable_count'];
    totalCount = json['total_count'];
  }

  bool? isEnd;
  num? pageableCount;
  num? totalCount;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['is_end'] = isEnd;
    map['pageable_count'] = pageableCount;
    map['total_count'] = totalCount;
    return map;
  }
}

class DocumentDto {
  DocumentDto({
    this.address,
    this.addressName,
    this.addressType,
    this.roadAddress,
    this.x,
    this.y,
  });

  DocumentDto.fromJson(dynamic json) {
    address = json['address'] != null
        ? AddressDto.fromJson(json['address'])
        : null;
    addressName = json['address_name'];
    addressType = json['address_type'];
    roadAddress = json['road_address'];
    x = json['x'];
    y = json['y'];
  }

  AddressDto? address;
  String? addressName;
  String? addressType;
  dynamic roadAddress;
  String? x;
  String? y;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (address != null) {
      map['address'] = address?.toJson();
    }
    map['address_name'] = addressName;
    map['address_type'] = addressType;
    map['road_address'] = roadAddress;
    map['x'] = x;
    map['y'] = y;
    return map;
  }
}

class AddressDto {
  AddressDto({
    this.addressName,
    this.bCode,
    this.hCode,
    this.mainAddressNo,
    this.mountainYn,
    this.region1depthName,
    this.region2depthName,
    this.region3depthHName,
    this.region3depthName,
    this.subAddressNo,
    this.x,
    this.y,
  });

  AddressDto.fromJson(dynamic json) {
    addressName = json['address_name'];
    bCode = json['b_code'];
    hCode = json['h_code'];
    mainAddressNo = json['main_address_no'];
    mountainYn = json['mountain_yn'];
    region1depthName = json['region_1depth_name'];
    region2depthName = json['region_2depth_name'];
    region3depthHName = json['region_3depth_h_name'];
    region3depthName = json['region_3depth_name'];
    subAddressNo = json['sub_address_no'];
    x = json['x'];
    y = json['y'];
  }

  String? addressName;
  String? bCode;
  String? hCode;
  String? mainAddressNo;
  String? mountainYn;
  String? region1depthName;
  String? region2depthName;
  String? region3depthHName;
  String? region3depthName;
  String? subAddressNo;
  String? x;
  String? y;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['address_name'] = addressName;
    map['b_code'] = bCode;
    map['h_code'] = hCode;
    map['main_address_no'] = mainAddressNo;
    map['mountain_yn'] = mountainYn;
    map['region_1depth_name'] = region1depthName;
    map['region_2depth_name'] = region2depthName;
    map['region_3depth_h_name'] = region3depthHName;
    map['region_3depth_name'] = region3depthName;
    map['sub_address_no'] = subAddressNo;
    map['x'] = x;
    map['y'] = y;
    return map;
  }
}
