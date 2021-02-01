// To parse this JSON data, do
//
//     final barang = barangFromJson(jsonString);

import 'dart:convert';
import 'package:http/http.dart' as http;

class Barang {
    Barang({
        this.name,
        this.job,
        this.id,
        this.createdAt,
    });

    String name;
    String job;
    String id;
    DateTime createdAt;

    factory Barang.fromRawJson(String str) => Barang.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory Barang.fromJson(Map<String, dynamic> json) => Barang(
        name: json["name"],
        job: json["job"],
        id: json["id"],
        createdAt: DateTime.parse(json["createdAt"]),
    );

    Map<String, dynamic> toJson() => {
        "name": name,
        "job": job,
        "id": id,
        "createdAt": createdAt.toIso8601String(),
    };

    static Future<Barang> connectToApi(String name, String job) async {
       String url = "https://reqres.in/api/users";
       var apiResult = await http.post(url, body: {
         "name" : name,
         "job" : job
       });
       var jsonObj = json.decode(apiResult.body);

       return Barang.fromJson(jsonObj);
    }
}

class ModelBarang {
    ModelBarang({
        this.id,
        this.catId,
        this.subCatId,
        this.itemTypeId,
        this.itemPriceTypeId,
        this.itemCurrencyId,
        this.itemLocationId,
        this.conditionOfItemId,
        this.dealOptionRemark,
        this.description,
        this.highlightInfo,
        this.price,
        this.dealOptionId,
        this.brand,
        this.businessMode,
        this.isSoldOut,
        this.title,
        this.address,
        this.lat,
        this.lng,
        this.status,
        this.addedDate,
        this.addedUserId,
        this.addedUserName,
        this.updatedDate,
        this.updatedUserId,
        this.updatedFlag,
        this.touchCount,
        this.favouriteCount,
        this.isPaid,
        this.isAvailable,
        this.isPreOrder,
        this.poStart,
        this.poEnd,
        this.poSlot,
        this.poDelivery,
        this.isHalal,
        this.weight,
        this.locationId,
        this.locationName,
        this.locationType,
        this.addedDateStr,
        this.paidStatus,
        this.photoCount,
        this.defaultPhoto,
        this.category,
        this.subCategory,
        this.itemType,
        this.itemPriceType,
        this.itemCurrency,
        this.itemLocation,
        this.conditionOfItem,
        this.dealOption,
        this.user,
        this.isFavourited,
        this.isOwner,
        this.getAddress,
        this.getDelivery,
    });

    String id;
    String catId;
    String subCatId;
    String itemTypeId;
    String itemPriceTypeId;
    String itemCurrencyId;
    String itemLocationId;
    String conditionOfItemId;
    String dealOptionRemark;
    String description;
    String highlightInfo;
    String price;
    String dealOptionId;
    Brand brand;
    String businessMode;
    String isSoldOut;
    String title;
    Address address;
    String lat;
    String lng;
    String status;
    DateTime addedDate;
    String addedUserId;
    String addedUserName;
    DateTime updatedDate;
    EdUserId updatedUserId;
    String updatedFlag;
    String touchCount;
    String favouriteCount;
    String isPaid;
    String isAvailable;
    String isPreOrder;
    dynamic poStart;
    dynamic poEnd;
    String poSlot;
    dynamic poDelivery;
    String isHalal;
    String weight;
    String locationId;
    String locationName;
    LocationType locationType;
    AddedDateStr addedDateStr;
    PaidStatus paidStatus;
    String photoCount;
    Default defaultPhoto;
    Category category;
    SubCategory subCategory;
    ConditionOfItem itemType;
    ConditionOfItem itemPriceType;
    ItemCurrency itemCurrency;
    ItemLocation itemLocation;
    ConditionOfItem conditionOfItem;
    ConditionOfItem dealOption;
    User user;
    String isFavourited;
    String isOwner;
    dynamic getAddress;
    dynamic getDelivery;

    factory ModelBarang.fromRawJson(String str) => ModelBarang.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory ModelBarang.fromJson(Map<String, dynamic> json) => ModelBarang(
        id: json["id"],
        catId: json["cat_id"],
        subCatId: json["sub_cat_id"],
        itemTypeId: json["item_type_id"],
        itemPriceTypeId: json["item_price_type_id"],
        itemCurrencyId: json["item_currency_id"],
        itemLocationId: json["item_location_id"],
        conditionOfItemId: json["condition_of_item_id"],
        dealOptionRemark: json["deal_option_remark"],
        description: json["description"],
        highlightInfo: json["highlight_info"],
        price: json["price"],
        dealOptionId: json["deal_option_id"],
        brand: brandValues.map[json["brand"]],
        businessMode: json["business_mode"],
        isSoldOut: json["is_sold_out"],
        title: json["title"],
        address: addressValues.map[json["address"]],
        lat: json["lat"],
        lng: json["lng"],
        status: json["status"],
        addedDate: DateTime.parse(json["added_date"]),
        addedUserId: json["added_user_id"],
        addedUserName: json["added_user_name"],
        updatedDate: DateTime.parse(json["updated_date"]),
        updatedUserId: edUserIdValues.map[json["updated_user_id"]],
        updatedFlag: json["updated_flag"],
        touchCount: json["touch_count"],
        favouriteCount: json["favourite_count"],
        isPaid: json["is_paid"],
        isAvailable: json["is_available"],
        isPreOrder: json["is_pre_order"],
        poStart: json["po_start"],
        poEnd: json["po_end"],
        poSlot: json["po_slot"],
        poDelivery: json["po_delivery"],
        isHalal: json["is_halal"],
        weight: json["weight"],
        locationId: json["location_id"],
        locationName: json["location_name"],
        locationType: locationTypeValues.map[json["location_type"]],
        addedDateStr: addedDateStrValues.map[json["added_date_str"]],
        paidStatus: paidStatusValues.map[json["paid_status"]],
        photoCount: json["photo_count"],
        defaultPhoto: Default.fromJson(json["default_photo"]),
        category: Category.fromJson(json["category"]),
        subCategory: SubCategory.fromJson(json["sub_category"]),
        itemType: ConditionOfItem.fromJson(json["item_type"]),
        itemPriceType: ConditionOfItem.fromJson(json["item_price_type"]),
        itemCurrency: ItemCurrency.fromJson(json["item_currency"]),
        itemLocation: ItemLocation.fromJson(json["item_location"]),
        conditionOfItem: ConditionOfItem.fromJson(json["condition_of_item"]),
        dealOption: ConditionOfItem.fromJson(json["deal_option"]),
        user: User.fromJson(json["user"]),
        isFavourited: json["is_favourited"],
        isOwner: json["is_owner"],
        getAddress: json["get_address"],
        getDelivery: json["get_delivery"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "cat_id": catId,
        "sub_cat_id": subCatId,
        "item_type_id": itemTypeId,
        "item_price_type_id": itemPriceTypeId,
        "item_currency_id": itemCurrencyId,
        "item_location_id": itemLocationId,
        "condition_of_item_id": conditionOfItemId,
        "deal_option_remark": dealOptionRemark,
        "description": description,
        "highlight_info": highlightInfo,
        "price": price,
        "deal_option_id": dealOptionId,
        "brand": brandValues.reverse[brand],
        "business_mode": businessMode,
        "is_sold_out": isSoldOut,
        "title": title,
        "address": addressValues.reverse[address],
        "lat": lat,
        "lng": lng,
        "status": status,
        "added_date": addedDate.toIso8601String(),
        "added_user_id": addedUserId,
        "added_user_name": addedUserName,
        "updated_date": updatedDate.toIso8601String(),
        "updated_user_id": edUserIdValues.reverse[updatedUserId],
        "updated_flag": updatedFlag,
        "touch_count": touchCount,
        "favourite_count": favouriteCount,
        "is_paid": isPaid,
        "is_available": isAvailable,
        "is_pre_order": isPreOrder,
        "po_start": poStart,
        "po_end": poEnd,
        "po_slot": poSlot,
        "po_delivery": poDelivery,
        "is_halal": isHalal,
        "weight": weight,
        "location_id": locationId,
        "location_name": locationName,
        "location_type": locationTypeValues.reverse[locationType],
        "added_date_str": addedDateStrValues.reverse[addedDateStr],
        "paid_status": paidStatusValues.reverse[paidStatus],
        "photo_count": photoCount,
        "default_photo": defaultPhoto.toJson(),
        "category": category.toJson(),
        "sub_category": subCategory.toJson(),
        "item_type": itemType.toJson(),
        "item_price_type": itemPriceType.toJson(),
        "item_currency": itemCurrency.toJson(),
        "item_location": itemLocation.toJson(),
        "condition_of_item": conditionOfItem.toJson(),
        "deal_option": dealOption.toJson(),
        "user": user.toJson(),
        "is_favourited": isFavourited,
        "is_owner": isOwner,
        "get_address": getAddress,
        "get_delivery": getDelivery,
    };

    static Future<ModelBarang> connectToApi() async {
       String url = "https://ranting.twisdev.com/index.php/rest/items/search/api_key/teampsisthebest/";
       var apiResult = await http.post(url);
       var jsonObj = json.decode(apiResult.body);

       return ModelBarang.fromJson(jsonObj[0]);
    }
}

enum AddedDateStr { THE_2_MONTHS_AGO, THE_3_MONTHS_AGO }

final addedDateStrValues = EnumValues({
    "2 months ago": AddedDateStr.THE_2_MONTHS_AGO,
    "3 months ago": AddedDateStr.THE_3_MONTHS_AGO
});

enum Address { EMPTY, JL_KAYOON }

final addressValues = EnumValues({
    "": Address.EMPTY,
    "Jl. Kayoon": Address.JL_KAYOON
});

enum Brand { EMPTY, TANGO }

final brandValues = EnumValues({
    "": Brand.EMPTY,
    "Tango": Brand.TANGO
});

class Category {
    Category({
        this.catId,
        this.catName,
        this.catOrdering,
        this.status,
        this.addedDate,
        this.defaultPhoto,
        this.defaultIcon,
    });

    String catId;
    String catName;
    String catOrdering;
    String status;
    DateTime addedDate;
    Default defaultPhoto;
    Default defaultIcon;

    factory Category.fromRawJson(String str) => Category.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory Category.fromJson(Map<String, dynamic> json) => Category(
        catId: json["cat_id"],
        catName: json["cat_name"],
        catOrdering: json["cat_ordering"],
        status: json["status"],
        addedDate: DateTime.parse(json["added_date"]),
        defaultPhoto: Default.fromJson(json["default_photo"]),
        defaultIcon: Default.fromJson(json["default_icon"]),
    );

    Map<String, dynamic> toJson() => {
        "cat_id": catId,
        "cat_name": catName,
        "cat_ordering": catOrdering,
        "status": status,
        "added_date": addedDate.toIso8601String(),
        "default_photo": defaultPhoto.toJson(),
        "default_icon": defaultIcon.toJson(),
    };
}

class Default {
    Default({
        this.imgId,
        this.imgParentId,
        this.imgType,
        this.imgPath,
        this.imgWidth,
        this.imgHeight,
        this.imgDesc,
        this.isEmptyObject,
    });

    String imgId;
    String imgParentId;
    ImgType imgType;
    String imgPath;
    String imgWidth;
    String imgHeight;
    String imgDesc;
    String isEmptyObject;

    factory Default.fromRawJson(String str) => Default.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory Default.fromJson(Map<String, dynamic> json) => Default(
        imgId: json["img_id"],
        imgParentId: json["img_parent_id"],
        imgType: imgTypeValues.map[json["img_type"]],
        imgPath: json["img_path"],
        imgWidth: json["img_width"],
        imgHeight: json["img_height"],
        imgDesc: json["img_desc"],
        isEmptyObject: json["is_empty_object"] == null ? null : json["is_empty_object"],
    );

    Map<String, dynamic> toJson() => {
        "img_id": imgId,
        "img_parent_id": imgParentId,
        "img_type": imgTypeValues.reverse[imgType],
        "img_path": imgPath,
        "img_width": imgWidth,
        "img_height": imgHeight,
        "img_desc": imgDesc,
        "is_empty_object": isEmptyObject == null ? null : isEmptyObject,
    };
}

enum ImgType { CATEGORY_ICON, CATEGORY, ITEM, EMPTY, SUB_CATEGORY }

final imgTypeValues = EnumValues({
    "category": ImgType.CATEGORY,
    "category-icon": ImgType.CATEGORY_ICON,
    "": ImgType.EMPTY,
    "item": ImgType.ITEM,
    "sub_category": ImgType.SUB_CATEGORY
});

class ConditionOfItem {
    ConditionOfItem({
        this.id,
        this.name,
        this.status,
        this.addedDate,
        this.isEmptyObject,
    });

    String id;
    ConditionOfItemName name;
    String status;
    String addedDate;
    String isEmptyObject;

    factory ConditionOfItem.fromRawJson(String str) => ConditionOfItem.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory ConditionOfItem.fromJson(Map<String, dynamic> json) => ConditionOfItem(
        id: json["id"],
        name: conditionOfItemNameValues.map[json["name"]],
        status: json["status"],
        addedDate: json["added_date"],
        isEmptyObject: json["is_empty_object"] == null ? null : json["is_empty_object"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": conditionOfItemNameValues.reverse[name],
        "status": status,
        "added_date": addedDate,
        "is_empty_object": isEmptyObject == null ? null : isEmptyObject,
    };
}

enum ConditionOfItemName { BARU, PICKUP_X, EMPTY, TIDAK_BISA_DITAWAR }

final conditionOfItemNameValues = EnumValues({
    "Baru": ConditionOfItemName.BARU,
    "": ConditionOfItemName.EMPTY,
    "Pickup X": ConditionOfItemName.PICKUP_X,
    "Tidak Bisa Ditawar": ConditionOfItemName.TIDAK_BISA_DITAWAR
});

class GetAddressClass {
    GetAddressClass({
        this.id,
        this.bsItemsId,
        this.provinceId,
        this.province,
        this.cityId,
        this.city,
        this.districtId,
        this.district,
        this.zipCode,
        this.longitude,
        this.latitude,
        this.fullAddress,
        this.contactPerson,
        this.nameAddress,
        this.createdAt,
        this.updatedAt,
        this.deletedAt,
    });

    String id;
    String bsItemsId;
    String provinceId;
    Province province;
    String cityId;
    City city;
    String districtId;
    String district;
    String zipCode;
    String longitude;
    String latitude;
    String fullAddress;
    String contactPerson;
    String nameAddress;
    DateTime createdAt;
    DateTime updatedAt;
    String deletedAt;

    factory GetAddressClass.fromRawJson(String str) => GetAddressClass.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory GetAddressClass.fromJson(Map<String, dynamic> json) => GetAddressClass(
        id: json["id"],
        bsItemsId: json["bs_items_id"],
        provinceId: json["province_id"],
        province: provinceValues.map[json["province"]],
        cityId: json["city_id"],
        city: cityValues.map[json["city"]],
        districtId: json["district_id"],
        district: json["district"],
        zipCode: json["zip_code"],
        longitude: json["longitude"],
        latitude: json["latitude"],
        fullAddress: json["full_address"],
        contactPerson: json["contact_person"],
        nameAddress: json["name_address"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        deletedAt: json["deleted_at"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "bs_items_id": bsItemsId,
        "province_id": provinceId,
        "province": provinceValues.reverse[province],
        "city_id": cityId,
        "city": cityValues.reverse[city],
        "district_id": districtId,
        "district": district,
        "zip_code": zipCode,
        "longitude": longitude,
        "latitude": latitude,
        "full_address": fullAddress,
        "contact_person": contactPerson,
        "name_address": nameAddress,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "deleted_at": deletedAt,
    };
}

enum City { KABUPATEN_GRESIK, KOTA_SURABAYA, KABUPATEN_MOJOKERTO }

final cityValues = EnumValues({
    "Kabupaten Gresik": City.KABUPATEN_GRESIK,
    "Kabupaten Mojokerto": City.KABUPATEN_MOJOKERTO,
    "Kota Surabaya": City.KOTA_SURABAYA
});

enum Province { JAWA_TIMUR }

final provinceValues = EnumValues({
    "Jawa Timur": Province.JAWA_TIMUR
});

class GetDeliveryElement {
    GetDeliveryElement({
        this.id,
        this.bsItemsId,
        this.deliveryName,
        this.createdAt,
        this.updatedAt,
        this.deletedAt,
    });

    String id;
    String bsItemsId;
    String deliveryName;
    DateTime createdAt;
    DateTime updatedAt;
    String deletedAt;

    factory GetDeliveryElement.fromRawJson(String str) => GetDeliveryElement.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory GetDeliveryElement.fromJson(Map<String, dynamic> json) => GetDeliveryElement(
        id: json["id"],
        bsItemsId: json["bs_items_id"],
        deliveryName: json["delivery_name"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        deletedAt: json["deleted_at"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "bs_items_id": bsItemsId,
        "delivery_name": deliveryName,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "deleted_at": deletedAt,
    };
}

class ItemCurrency {
    ItemCurrency({
        this.id,
        this.currencyShortForm,
        this.currencySymbol,
        this.status,
        this.addedDate,
        this.isEmptyObject,
    });

    String id;
    String currencyShortForm;
    String currencySymbol;
    String status;
    String addedDate;
    String isEmptyObject;

    factory ItemCurrency.fromRawJson(String str) => ItemCurrency.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory ItemCurrency.fromJson(Map<String, dynamic> json) => ItemCurrency(
        id: json["id"],
        currencyShortForm: json["currency_short_form"],
        currencySymbol: json["currency_symbol"],
        status: json["status"],
        addedDate: json["added_date"],
        isEmptyObject: json["is_empty_object"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "currency_short_form": currencyShortForm,
        "currency_symbol": currencySymbol,
        "status": status,
        "added_date": addedDate,
        "is_empty_object": isEmptyObject,
    };
}

class ItemLocation {
    ItemLocation({
        this.id,
        this.name,
        this.lat,
        this.lng,
        this.status,
        this.addedDate,
        this.isEmptyObject,
    });

    Id id;
    ItemLocationName name;
    Lat lat;
    Lng lng;
    String status;
    String addedDate;
    String isEmptyObject;

    factory ItemLocation.fromRawJson(String str) => ItemLocation.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory ItemLocation.fromJson(Map<String, dynamic> json) => ItemLocation(
        id: idValues.map[json["id"]],
        name: itemLocationNameValues.map[json["name"]],
        lat: latValues.map[json["lat"]],
        lng: lngValues.map[json["lng"]],
        status: json["status"],
        addedDate: json["added_date"],
        isEmptyObject: json["is_empty_object"] == null ? null : json["is_empty_object"],
    );

    Map<String, dynamic> toJson() => {
        "id": idValues.reverse[id],
        "name": itemLocationNameValues.reverse[name],
        "lat": latValues.reverse[lat],
        "lng": lngValues.reverse[lng],
        "status": status,
        "added_date": addedDate,
        "is_empty_object": isEmptyObject == null ? null : isEmptyObject,
    };
}

enum Id { EMPTY, ITM_LOCC91_E7_FD5_FFC739_B26951228_B0_A564569, ITM_LOC413981_C0_F76_AD269307_AAEE5_EFF59517 }

final idValues = EnumValues({
    "": Id.EMPTY,
    "itm_loc413981c0f76ad269307aaee5eff59517": Id.ITM_LOC413981_C0_F76_AD269307_AAEE5_EFF59517,
    "itm_locc91e7fd5ffc739b26951228b0a564569": Id.ITM_LOCC91_E7_FD5_FFC739_B26951228_B0_A564569
});

enum Lat { EMPTY, THE_1354200, THE_6208763 }

final latValues = EnumValues({
    "": Lat.EMPTY,
    "1.354200": Lat.THE_1354200,
    "-6.208763": Lat.THE_6208763
});

enum Lng { EMPTY, THE_103819839, THE_106845596 }

final lngValues = EnumValues({
    "": Lng.EMPTY,
    "103.819839": Lng.THE_103819839,
    "106.845596": Lng.THE_106845596
});

enum ItemLocationName { EMPTY, JAKARTA_BARAT, KOTA_BEKASI }

final itemLocationNameValues = EnumValues({
    "": ItemLocationName.EMPTY,
    "Jakarta Barat": ItemLocationName.JAKARTA_BARAT,
    "Kota Bekasi": ItemLocationName.KOTA_BEKASI
});

enum LocationType { CITY, EMPTY }

final locationTypeValues = EnumValues({
    "city": LocationType.CITY,
    "": LocationType.EMPTY
});

enum PaidStatus { NOT_AVAILABLE }

final paidStatusValues = EnumValues({
    "not_available": PaidStatus.NOT_AVAILABLE
});

enum PoDeliveryEnum { THE_00000000000000 }

final poDeliveryEnumValues = EnumValues({
    "0000-00-00 00:00:00": PoDeliveryEnum.THE_00000000000000
});

class SubCategory {
    SubCategory({
        this.id,
        this.catId,
        this.name,
        this.status,
        this.addedDate,
        this.addedUserId,
        this.updatedDate,
        this.updatedUserId,
        this.updatedFlag,
        this.defaultPhoto,
        this.isEmptyObject,
    });

    String id;
    String catId;
    String name;
    String status;
    String addedDate;
    EdUserId addedUserId;
    String updatedDate;
    EdUserId updatedUserId;
    String updatedFlag;
    Default defaultPhoto;
    String isEmptyObject;

    factory SubCategory.fromRawJson(String str) => SubCategory.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory SubCategory.fromJson(Map<String, dynamic> json) => SubCategory(
        id: json["id"],
        catId: json["cat_id"],
        name: json["name"],
        status: json["status"],
        addedDate: json["added_date"],
        addedUserId: edUserIdValues.map[json["added_user_id"]],
        updatedDate: json["updated_date"],
        updatedUserId: edUserIdValues.map[json["updated_user_id"]],
        updatedFlag: json["updated_flag"],
        defaultPhoto: Default.fromJson(json["default_photo"]),
        isEmptyObject: json["is_empty_object"] == null ? null : json["is_empty_object"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "cat_id": catId,
        "name": name,
        "status": status,
        "added_date": addedDate,
        "added_user_id": edUserIdValues.reverse[addedUserId],
        "updated_date": updatedDate,
        "updated_user_id": edUserIdValues.reverse[updatedUserId],
        "updated_flag": updatedFlag,
        "default_photo": defaultPhoto.toJson(),
        "is_empty_object": isEmptyObject == null ? null : isEmptyObject,
    };
}

enum EdUserId { C4_CA4238_A0_B923820_DCC509_A6_F75849_B, EMPTY }

final edUserIdValues = EnumValues({
    "c4ca4238a0b923820dcc509a6f75849b": EdUserId.C4_CA4238_A0_B923820_DCC509_A6_F75849_B,
    "": EdUserId.EMPTY
});

class User {
    User({
        this.userId,
        this.userIsSysAdmin,
        this.facebookId,
        this.googleId,
        this.phoneId,
        this.appleId,
        this.userName,
        this.userEmail,
        this.userPhone,
        this.userAddress,
        this.city,
        this.userAboutMe,
        this.userCoverPhoto,
        this.userProfilePhoto,
        this.roleId,
        this.status,
        this.isBanned,
        this.addedDate,
        this.deviceToken,
        this.code,
        this.overallRating,
        this.whatsapp,
        this.messenger,
        this.followerCount,
        this.followingCount,
        this.emailVerify,
        this.facebookVerify,
        this.googleVerify,
        this.phoneVerify,
        this.appleVerify,
        this.ratingCount,
        this.isFollowed,
        this.ratingDetails,
    });

    String userId;
    String userIsSysAdmin;
    String facebookId;
    String googleId;
    String phoneId;
    String appleId;
    String userName;
    String userEmail;
    UserPhone userPhone;
    String userAddress;
    String city;
    String userAboutMe;
    String userCoverPhoto;
    String userProfilePhoto;
    String roleId;
    String status;
    String isBanned;
    DateTime addedDate;
    String deviceToken;
    Code code;
    String overallRating;
    String whatsapp;
    String messenger;
    String followerCount;
    String followingCount;
    String emailVerify;
    String facebookVerify;
    String googleVerify;
    String phoneVerify;
    String appleVerify;
    String ratingCount;
    String isFollowed;
    RatingDetails ratingDetails;

    factory User.fromRawJson(String str) => User.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory User.fromJson(Map<String, dynamic> json) => User(
        userId: json["user_id"],
        userIsSysAdmin: json["user_is_sys_admin"],
        facebookId: json["facebook_id"],
        googleId: json["google_id"],
        phoneId: json["phone_id"],
        appleId: json["apple_id"],
        userName: json["user_name"],
        userEmail: json["user_email"],
        userPhone: userPhoneValues.map[json["user_phone"]],
        userAddress: json["user_address"],
        city: json["city"],
        userAboutMe: json["user_about_me"],
        userCoverPhoto: json["user_cover_photo"],
        userProfilePhoto: json["user_profile_photo"],
        roleId: json["role_id"],
        status: json["status"],
        isBanned: json["is_banned"],
        addedDate: DateTime.parse(json["added_date"]),
        deviceToken: json["device_token"],
        code: codeValues.map[json["code"]],
        overallRating: json["overall_rating"],
        whatsapp: json["whatsapp"],
        messenger: json["messenger"],
        followerCount: json["follower_count"],
        followingCount: json["following_count"],
        emailVerify: json["email_verify"],
        facebookVerify: json["facebook_verify"],
        googleVerify: json["google_verify"],
        phoneVerify: json["phone_verify"],
        appleVerify: json["apple_verify"],
        ratingCount: json["rating_count"],
        isFollowed: json["is_followed"],
        ratingDetails: RatingDetails.fromJson(json["rating_details"]),
    );

    Map<String, dynamic> toJson() => {
        "user_id": userId,
        "user_is_sys_admin": userIsSysAdmin,
        "facebook_id": facebookId,
        "google_id": googleId,
        "phone_id": phoneId,
        "apple_id": appleId,
        "user_name": userName,
        "user_email": userEmail,
        "user_phone": userPhoneValues.reverse[userPhone],
        "user_address": userAddress,
        "city": city,
        "user_about_me": userAboutMe,
        "user_cover_photo": userCoverPhoto,
        "user_profile_photo": userProfilePhoto,
        "role_id": roleId,
        "status": status,
        "is_banned": isBanned,
        "added_date": addedDate.toIso8601String(),
        "device_token": deviceToken,
        "code": codeValues.reverse[code],
        "overall_rating": overallRating,
        "whatsapp": whatsapp,
        "messenger": messenger,
        "follower_count": followerCount,
        "following_count": followingCount,
        "email_verify": emailVerify,
        "facebook_verify": facebookVerify,
        "google_verify": googleVerify,
        "phone_verify": phoneVerify,
        "apple_verify": appleVerify,
        "rating_count": ratingCount,
        "is_followed": isFollowed,
        "rating_details": ratingDetails.toJson(),
    };
}

enum Code { EMPTY }

final codeValues = EnumValues({
    " ": Code.EMPTY
});

class RatingDetails {
    RatingDetails({
        this.fiveStarCount,
        this.fiveStarPercent,
        this.fourStarCount,
        this.fourStarPercent,
        this.threeStarCount,
        this.threeStarPercent,
        this.twoStarCount,
        this.twoStarPercent,
        this.oneStarCount,
        this.oneStarPercent,
        this.totalRatingCount,
        this.totalRatingValue,
    });

    String fiveStarCount;
    String fiveStarPercent;
    String fourStarCount;
    String fourStarPercent;
    String threeStarCount;
    String threeStarPercent;
    String twoStarCount;
    String twoStarPercent;
    String oneStarCount;
    String oneStarPercent;
    String totalRatingCount;
    String totalRatingValue;

    factory RatingDetails.fromRawJson(String str) => RatingDetails.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory RatingDetails.fromJson(Map<String, dynamic> json) => RatingDetails(
        fiveStarCount: json["five_star_count"],
        fiveStarPercent: json["five_star_percent"],
        fourStarCount: json["four_star_count"],
        fourStarPercent: json["four_star_percent"],
        threeStarCount: json["three_star_count"],
        threeStarPercent: json["three_star_percent"],
        twoStarCount: json["two_star_count"],
        twoStarPercent: json["two_star_percent"],
        oneStarCount: json["one_star_count"],
        oneStarPercent: json["one_star_percent"],
        totalRatingCount: json["total_rating_count"],
        totalRatingValue: json["total_rating_value"],
    );

    Map<String, dynamic> toJson() => {
        "five_star_count": fiveStarCount,
        "five_star_percent": fiveStarPercent,
        "four_star_count": fourStarCount,
        "four_star_percent": fourStarPercent,
        "three_star_count": threeStarCount,
        "three_star_percent": threeStarPercent,
        "two_star_count": twoStarCount,
        "two_star_percent": twoStarPercent,
        "one_star_count": oneStarCount,
        "one_star_percent": oneStarPercent,
        "total_rating_count": totalRatingCount,
        "total_rating_value": totalRatingValue,
    };
}

enum UserPhone { THE_085707871657, THE_082233334444, THE_2456886542, EMPTY, THE_082233025539 }

final userPhoneValues = EnumValues({
    "": UserPhone.EMPTY,
    "082233025539": UserPhone.THE_082233025539,
    "082233334444": UserPhone.THE_082233334444,
    "085707871657": UserPhone.THE_085707871657,
    "2456886542": UserPhone.THE_2456886542
});

class EnumValues<T> {
    Map<String, T> map;
    Map<T, String> reverseMap;

    EnumValues(this.map);

    Map<T, String> get reverse {
        if (reverseMap == null) {
            reverseMap = map.map((k, v) => new MapEntry(v, k));
        }
        return reverseMap;
    }
}
