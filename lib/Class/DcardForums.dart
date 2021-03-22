// To parse this JSON data, do
//
//     final forums = forumsFromJson(jsonString);

import 'dart:convert';

List<Forums> forumsFromJson(String str) => List<Forums>.from(json.decode(str).map((x) => Forums.fromJson(x)));

String forumsToJson(List<Forums> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Forums {
    Forums({
        this.id,
        this.alias,
        this.name,
        this.description,
        this.subscriptionCount,
        this.subscribed,
        this.read,
        this.createdAt,
        this.updatedAt,
        this.canPost,
        this.ignorePost,
        this.invisible,
        this.isSchool,
        this.fullyAnonymous,
        this.canUseNickname,
        this.postThumbnail,
        this.shouldCategorized,
        this.shouldPostCategorized,
        this.hasPostCategories,
        this.titlePlaceholder,
        this.postTitlePlaceholder,
        this.ipCountryCondition,
        this.subcategories,
        this.topics,
        this.nsfw,
        this.mediaThreshold,
        this.limitCountries,
        this.limitStage,
        this.availableLayouts,
        this.postCount,
        this.favorite,
        this.heroImage,
        this.logo,
    });

    String id;
    String alias;
    String name;
    String description;
    int subscriptionCount;
    bool subscribed;
    bool read;
    DateTime createdAt;
    DateTime updatedAt;
    bool canPost;
    bool ignorePost;
    bool invisible;
    bool isSchool;
    bool fullyAnonymous;
    bool canUseNickname;
    PostThumbnail postThumbnail;
    bool shouldCategorized;
    bool shouldPostCategorized;
    bool hasPostCategories;
    TitlePlaceholder titlePlaceholder;
    String postTitlePlaceholder;
    IpCountryCondition ipCountryCondition;
    List<String> subcategories;
    List<String> topics;
    bool nsfw;
    MediaThreshold mediaThreshold;
    List<LimitCountry> limitCountries;
    int limitStage;
    List<AvailableLayout> availableLayouts;
    PostCount postCount;
    bool favorite;
    HeroImage heroImage;
    HeroImage logo;

    factory Forums.fromJson(Map<String, dynamic> json) => Forums(
        id: json["id"],
        alias: json["alias"],
        name: json["name"],
        description: json["description"],
        subscriptionCount: json["subscriptionCount"],
        subscribed: json["subscribed"],
        read: json["read"],
        createdAt: DateTime.parse(json["createdAt"]),
        updatedAt: DateTime.parse(json["updatedAt"]),
        canPost: json["canPost"],
        ignorePost: json["ignorePost"],
        invisible: json["invisible"],
        isSchool: json["isSchool"],
        fullyAnonymous: json["fullyAnonymous"],
        canUseNickname: json["canUseNickname"],
        postThumbnail: PostThumbnail.fromJson(json["postThumbnail"]),
        shouldCategorized: json["shouldCategorized"],
        shouldPostCategorized: json["shouldPostCategorized"],
        hasPostCategories: json["hasPostCategories"],
        titlePlaceholder: titlePlaceholderValues.map[json["titlePlaceholder"]],
        postTitlePlaceholder: json["postTitlePlaceholder"],
        ipCountryCondition: IpCountryCondition.fromJson(json["ipCountryCondition"]),
        subcategories: List<String>.from(json["subcategories"].map((x) => x)),
        topics: List<String>.from(json["topics"].map((x) => x)),
        nsfw: json["nsfw"],
        mediaThreshold: MediaThreshold.fromJson(json["mediaThreshold"]),
        limitCountries: List<LimitCountry>.from(json["limitCountries"].map((x) => limitCountryValues.map[x])),
        limitStage: json["limitStage"],
        availableLayouts: List<AvailableLayout>.from(json["availableLayouts"].map((x) => availableLayoutValues.map[x])),
        postCount: PostCount.fromJson(json["postCount"]),
        favorite: json["favorite"],
        heroImage: json["heroImage"] == null ? null : HeroImage.fromJson(json["heroImage"]),
        logo: json["logo"] == null ? null : HeroImage.fromJson(json["logo"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "alias": alias,
        "name": name,
        "description": description,
        "subscriptionCount": subscriptionCount,
        "subscribed": subscribed,
        "read": read,
        "createdAt": createdAt.toIso8601String(),
        "updatedAt": updatedAt.toIso8601String(),
        "canPost": canPost,
        "ignorePost": ignorePost,
        "invisible": invisible,
        "isSchool": isSchool,
        "fullyAnonymous": fullyAnonymous,
        "canUseNickname": canUseNickname,
        "postThumbnail": postThumbnail.toJson(),
        "shouldCategorized": shouldCategorized,
        "shouldPostCategorized": shouldPostCategorized,
        "hasPostCategories": hasPostCategories,
        "titlePlaceholder": titlePlaceholderValues.reverse[titlePlaceholder],
        "postTitlePlaceholder": postTitlePlaceholder,
        "ipCountryCondition": ipCountryCondition.toJson(),
        "subcategories": List<dynamic>.from(subcategories.map((x) => x)),
        "topics": List<dynamic>.from(topics.map((x) => x)),
        "nsfw": nsfw,
        "mediaThreshold": mediaThreshold.toJson(),
        "limitCountries": List<dynamic>.from(limitCountries.map((x) => limitCountryValues.reverse[x])),
        "limitStage": limitStage,
        "availableLayouts": List<dynamic>.from(availableLayouts.map((x) => availableLayoutValues.reverse[x])),
        "postCount": postCount.toJson(),
        "favorite": favorite,
        "heroImage": heroImage == null ? null : heroImage.toJson(),
        "logo": logo == null ? null : logo.toJson(),
    };
}

enum AvailableLayout { CLASSIC, LINK, IMAGE, VIDEO }

final availableLayoutValues = EnumValues({
    "classic": AvailableLayout.CLASSIC,
    "image": AvailableLayout.IMAGE,
    "link": AvailableLayout.LINK,
    "video": AvailableLayout.VIDEO
});

class HeroImage {
    HeroImage({
        this.url,
        this.type,
        this.width,
        this.height,
    });

    String url;
    Type type;
    int width;
    int height;

    factory HeroImage.fromJson(Map<String, dynamic> json) => HeroImage(
        url: json["url"],
        type: typeValues.map[json["type"]],
        width: json["width"],
        height: json["height"],
    );

    Map<String, dynamic> toJson() => {
        "url": url,
        "type": typeValues.reverse[type],
        "width": width,
        "height": height,
    };
}

enum Type { IMAGE_JPEG }

final typeValues = EnumValues({
    "image/jpeg": Type.IMAGE_JPEG
});

class IpCountryCondition {
    IpCountryCondition({
        this.exclude,
        this.include,
    });

    List<dynamic> exclude;
    List<LimitCountry> include;

    factory IpCountryCondition.fromJson(Map<String, dynamic> json) => IpCountryCondition(
        exclude: json["exclude"] == null ? null : List<dynamic>.from(json["exclude"].map((x) => x)),
        include: json["include"] == null ? null : List<LimitCountry>.from(json["include"].map((x) => limitCountryValues.map[x])),
    );

    Map<String, dynamic> toJson() => {
        "exclude": exclude == null ? null : List<dynamic>.from(exclude.map((x) => x)),
        "include": include == null ? null : List<dynamic>.from(include.map((x) => limitCountryValues.reverse[x])),
    };
}

enum LimitCountry { HK, MO }

final limitCountryValues = EnumValues({
    "HK": LimitCountry.HK,
    "MO": LimitCountry.MO
});

class MediaThreshold {
    MediaThreshold({
        this.racy,
        this.adult,
        this.violence,
    });

    int racy;
    int adult;
    int violence;

    factory MediaThreshold.fromJson(Map<String, dynamic> json) => MediaThreshold(
        racy: json["RACY"] == null ? null : json["RACY"],
        adult: json["ADULT"] == null ? null : json["ADULT"],
        violence: json["VIOLENCE"] == null ? null : json["VIOLENCE"],
    );

    Map<String, dynamic> toJson() => {
        "RACY": racy == null ? null : racy,
        "ADULT": adult == null ? null : adult,
        "VIOLENCE": violence == null ? null : violence,
    };
}

class PostCount {
    PostCount({
        this.last30Days,
    });

    int last30Days;

    factory PostCount.fromJson(Map<String, dynamic> json) => PostCount(
        last30Days: json["last30Days"],
    );

    Map<String, dynamic> toJson() => {
        "last30Days": last30Days,
    };
}

class PostThumbnail {
    PostThumbnail({
        this.size,
    });

    Size size;

    factory PostThumbnail.fromJson(Map<String, dynamic> json) => PostThumbnail(
        size: sizeValues.map[json["size"]],
    );

    Map<String, dynamic> toJson() => {
        "size": sizeValues.reverse[size],
    };
}

enum Size { SMALL, LARGE }

final sizeValues = EnumValues({
    "large": Size.LARGE,
    "small": Size.SMALL
});

enum TitlePlaceholder { EMPTY, TITLE_PLACEHOLDER, PURPLE, FLUFFY, TENTACLED, STICKY, INDIGO, INDECENT, HILARIOUS, THE_123_GO, AMBITIOUS, CUNNING, MAGENTA, FRISKY, MISCHIEVOUS, BRAGGADOCIOUS, THE_1, THE_2, THE_3, THE_4, THE_5 }

final titlePlaceholderValues = EnumValues({
    "請記得在話題加入「遊戲名稱」或其他相關分類喲！": TitlePlaceholder.AMBITIOUS,
    "標題記得加入「分類標籤」喲！# # #": TitlePlaceholder.BRAGGADOCIOUS,
    "請記得在話題加入「作品名稱」或其他相關分類喲！": TitlePlaceholder.CUNNING,
    "": TitlePlaceholder.EMPTY,
    "發文記得加入「話題」分類喲！！": TitlePlaceholder.FLUFFY,
    "發文請記得在下一步驟加入話題或其他相關分類喲！": TitlePlaceholder.FRISKY,
    "請記得在話題加入「音樂名稱」或其他相關分類喲！": TitlePlaceholder.HILARIOUS,
    "請記得在話題加入「戲劇名稱」或其他相關分類喲！": TitlePlaceholder.INDECENT,
    "請記得話題加入「電影名稱」或其他相關分類喲！": TitlePlaceholder.INDIGO,
    "發文請記得在下一頁加入其他相關分類話題喲！": TitlePlaceholder.MAGENTA,
    "板規": TitlePlaceholder.MISCHIEVOUS,
    "發文請記得在下一步驟加入「相關話題」或其他相關分類喲！": TitlePlaceholder.PURPLE,
    "發文記得加入「話題」分類喔！": TitlePlaceholder.STICKY,
    "這裡是文具板的標題 (๑•̀ω•́)ノ": TitlePlaceholder.TENTACLED,
    "發文標題請分類：#詢問、#討論、#心得、#情報、#優惠": TitlePlaceholder.THE_1,
    "123 go": TitlePlaceholder.THE_123_GO,
    "如需刊登職缺請至「置頂文」尋找表格填寫！": TitlePlaceholder.THE_2,
    "研究所板規": TitlePlaceholder.THE_3,
    "發文請記得在下一頁加入話題或其他相關分類喲！": TitlePlaceholder.THE_4,
    "如果內容可能令人不適，請於標題加上 #可能不適 提醒": TitlePlaceholder.THE_5,
    "發文記得加入「話題」分類喲！": TitlePlaceholder.TITLE_PLACEHOLDER
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
