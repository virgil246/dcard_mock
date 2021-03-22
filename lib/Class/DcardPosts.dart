// To parse this JSON data, do
//
//     final posts = postsFromJson(jsonString);

import 'dart:convert';

List<Posts> postsFromJson(String str) => List<Posts>.from(json.decode(str).map((x) => Posts.fromJson(x)));

String postsToJson(List<Posts> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Posts {
    Posts({
        this.id,
        this.title,
        this.excerpt,
        this.anonymousSchool,
        this.anonymousDepartment,
        this.pinned,
        this.forumId,
        this.replyId,
        this.createdAt,
        this.updatedAt,
        this.commentCount,
        this.likeCount,
        this.withNickname,
        this.tags,
        this.topics,
        this.meta,
        this.forumName,
        this.forumAlias,
        this.nsfw,
        this.gender,
        this.school,
        this.replyTitle,
        this.mediaMeta,
        this.reactions,
        this.hidden,
        this.customStyle,
        this.isSuspiciousAccount,
        this.isModerator,
        this.layout,
        this.spoilerAlert,
        this.withImages,
        this.withVideos,
        this.media,
        this.reportReasonText,
        this.elapsedTime,
        this.excerptComments,
        this.postAvatar,
        this.verifiedBadge,
        this.identityId,
        this.categories,
        this.department,
        this.link,
    });

    int id;
    String title;
    String excerpt;
    bool anonymousSchool;
    bool anonymousDepartment;
    bool pinned;
    String forumId;
    dynamic replyId;
    DateTime createdAt;
    DateTime updatedAt;
    int commentCount;
    int likeCount;
    bool withNickname;
    List<PostTag> tags;
    List<String> topics;
    Meta meta;
    String forumName;
    String forumAlias;
    bool nsfw;
    Gender gender;
    String school;
    dynamic replyTitle;
    List<MediaMeta> mediaMeta;
    List<Reaction> reactions;
    bool hidden;
    CustomStyle customStyle;
    bool isSuspiciousAccount;
    bool isModerator;
    Layout layout;
    bool spoilerAlert;
    bool withImages;
    bool withVideos;
    List<Media> media;
    String reportReasonText;
    int elapsedTime;
    List<dynamic> excerptComments;
    String postAvatar;
    bool verifiedBadge;
    String identityId;
    List<String> categories;
    String department;
    String link;

    factory Posts.fromJson(Map<String, dynamic> json) => Posts(
        id: json["id"],
        title: json["title"],
        excerpt: json["excerpt"],
        anonymousSchool: json["anonymousSchool"],
        anonymousDepartment: json["anonymousDepartment"],
        pinned: json["pinned"],
        forumId: json["forumId"],
        replyId: json["replyId"],
        createdAt: DateTime.parse(json["createdAt"]),
        updatedAt: DateTime.parse(json["updatedAt"]),
        commentCount: json["commentCount"],
        likeCount: json["likeCount"],
        withNickname: json["withNickname"],
        tags: List<PostTag>.from(json["tags"].map((x) => postTagValues.map[x])),
        topics: List<String>.from(json["topics"].map((x) => x)),
        meta: Meta.fromJson(json["meta"]),
        forumName: json["forumName"],
        forumAlias: json["forumAlias"],
        nsfw: json["nsfw"],
        gender: genderValues.map[json["gender"]],
        school: json["school"] == null ? null : json["school"],
        replyTitle: json["replyTitle"],
        mediaMeta: List<MediaMeta>.from(json["mediaMeta"].map((x) => MediaMeta.fromJson(x))),
        reactions: List<Reaction>.from(json["reactions"].map((x) => Reaction.fromJson(x))),
        hidden: json["hidden"],
        customStyle: json["customStyle"] == null ? null : CustomStyle.fromJson(json["customStyle"]),
        isSuspiciousAccount: json["isSuspiciousAccount"],
        isModerator: json["isModerator"],
        layout: layoutValues.map[json["layout"]],
        spoilerAlert: json["spoilerAlert"],
        withImages: json["withImages"],
        withVideos: json["withVideos"],
        media: List<Media>.from(json["media"].map((x) => Media.fromJson(x))),
        reportReasonText: json["reportReasonText"],
        elapsedTime: json["elapsedTime"],
        excerptComments: List<dynamic>.from(json["excerptComments"].map((x) => x)),
        postAvatar: json["postAvatar"],
        verifiedBadge: json["verifiedBadge"],
        identityId: json["identityId"] == null ? null : json["identityId"],
        categories: json["categories"] == null ? null : List<String>.from(json["categories"].map((x) => x)),
        department: json["department"] == null ? null : json["department"],
        link: json["link"] == null ? null : json["link"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "excerpt": excerpt,
        "anonymousSchool": anonymousSchool,
        "anonymousDepartment": anonymousDepartment,
        "pinned": pinned,
        "forumId": forumId,
        "replyId": replyId,
        "createdAt": createdAt.toIso8601String(),
        "updatedAt": updatedAt.toIso8601String(),
        "commentCount": commentCount,
        "likeCount": likeCount,
        "withNickname": withNickname,
        "tags": List<dynamic>.from(tags.map((x) => postTagValues.reverse[x])),
        "topics": List<dynamic>.from(topics.map((x) => x)),
        "meta": meta.toJson(),
        "forumName": forumName,
        "forumAlias": forumAlias,
        "nsfw": nsfw,
        "gender": genderValues.reverse[gender],
        "school": school == null ? null : school,
        "replyTitle": replyTitle,
        "mediaMeta": List<dynamic>.from(mediaMeta.map((x) => x.toJson())),
        "reactions": List<dynamic>.from(reactions.map((x) => x.toJson())),
        "hidden": hidden,
        "customStyle": customStyle == null ? null : customStyle.toJson(),
        "isSuspiciousAccount": isSuspiciousAccount,
        "isModerator": isModerator,
        "layout": layoutValues.reverse[layout],
        "spoilerAlert": spoilerAlert,
        "withImages": withImages,
        "withVideos": withVideos,
        "media": List<dynamic>.from(media.map((x) => x.toJson())),
        "reportReasonText": reportReasonText,
        "elapsedTime": elapsedTime,
        "excerptComments": List<dynamic>.from(excerptComments.map((x) => x)),
        "postAvatar": postAvatar,
        "verifiedBadge": verifiedBadge,
        "identityId": identityId == null ? null : identityId,
        "categories": categories == null ? null : List<dynamic>.from(categories.map((x) => x)),
        "department": department == null ? null : department,
        "link": link == null ? null : link,
    };
}

class CustomStyle {
    CustomStyle({
        this.label,
    });

    Label label;

    factory CustomStyle.fromJson(Map<String, dynamic> json) => CustomStyle(
        label: Label.fromJson(json["label"]),
    );

    Map<String, dynamic> toJson() => {
        "label": label.toJson(),
    };
}

class Label {
    Label({
        this.bgColor,
        this.text,
    });

    String bgColor;
    String text;

    factory Label.fromJson(Map<String, dynamic> json) => Label(
        bgColor: json["bgColor"],
        text: json["text"],
    );

    Map<String, dynamic> toJson() => {
        "bgColor": bgColor,
        "text": text,
    };
}

enum Gender { F, M }

final genderValues = EnumValues({
    "F": Gender.F,
    "M": Gender.M
});

enum Layout { CLASSIC, LINK }

final layoutValues = EnumValues({
    "classic": Layout.CLASSIC,
    "link": Layout.LINK
});

class Media {
    Media({
        this.url,
    });

    String url;

    factory Media.fromJson(Map<String, dynamic> json) => Media(
        url: json["url"],
    );

    Map<String, dynamic> toJson() => {
        "url": url,
    };
}

class MediaMeta {
    MediaMeta({
        this.id,
        this.url,
        this.normalizedUrl,
        this.thumbnail,
        this.type,
        this.tags,
        this.createdAt,
        this.updatedAt,
        this.width,
        this.height,
        this.croppingWindow,
    });

    String id;
    String url;
    String normalizedUrl;
    String thumbnail;
    Type type;
    List<MediaMetaTag> tags;
    DateTime createdAt;
    DateTime updatedAt;
    int width;
    int height;
    CroppingWindow croppingWindow;

    factory MediaMeta.fromJson(Map<String, dynamic> json) => MediaMeta(
        id: json["id"],
        url: json["url"],
        normalizedUrl: json["normalizedUrl"],
        thumbnail: json["thumbnail"],
        type: typeValues.map[json["type"]],
        tags: List<MediaMetaTag>.from(json["tags"].map((x) => mediaMetaTagValues.map[x])),
        createdAt: DateTime.parse(json["createdAt"]),
        updatedAt: DateTime.parse(json["updatedAt"]),
        width: json["width"] == null ? null : json["width"],
        height: json["height"] == null ? null : json["height"],
        croppingWindow: json["croppingWindow"] == null ? null : CroppingWindow.fromJson(json["croppingWindow"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "url": url,
        "normalizedUrl": normalizedUrl,
        "thumbnail": thumbnail,
        "type": typeValues.reverse[type],
        "tags": List<dynamic>.from(tags.map((x) => mediaMetaTagValues.reverse[x])),
        "createdAt": createdAt.toIso8601String(),
        "updatedAt": updatedAt.toIso8601String(),
        "width": width == null ? null : width,
        "height": height == null ? null : height,
        "croppingWindow": croppingWindow == null ? null : croppingWindow.toJson(),
    };
}

class CroppingWindow {
    CroppingWindow({
        this.anchorX,
        this.anchorY,
        this.width,
        this.height,
    });

    int anchorX;
    int anchorY;
    int width;
    int height;

    factory CroppingWindow.fromJson(Map<String, dynamic> json) => CroppingWindow(
        anchorX: json["anchorX"],
        anchorY: json["anchorY"],
        width: json["width"],
        height: json["height"],
    );

    Map<String, dynamic> toJson() => {
        "anchorX": anchorX,
        "anchorY": anchorY,
        "width": width,
        "height": height,
    };
}

enum MediaMetaTag { ANNOTATED, ANNOTATED_FAILED }

final mediaMetaTagValues = EnumValues({
    "ANNOTATED": MediaMetaTag.ANNOTATED,
    "ANNOTATED_FAILED": MediaMetaTag.ANNOTATED_FAILED
});

enum Type { IMAGE_THUMBNAIL, IMAGE_IMGUR, VIDEO_VIVID, VIDEO_YOUTUBE, IMAGE_MEGAPX }

final typeValues = EnumValues({
    "image/imgur": Type.IMAGE_IMGUR,
    "image/megapx": Type.IMAGE_MEGAPX,
    "image/thumbnail": Type.IMAGE_THUMBNAIL,
    "video/vivid": Type.VIDEO_VIVID,
    "video/youtube": Type.VIDEO_YOUTUBE
});

class Meta {
    Meta({
        this.layout,
    });

    Layout layout;

    factory Meta.fromJson(Map<String, dynamic> json) => Meta(
        layout: layoutValues.map[json["layout"]],
    );

    Map<String, dynamic> toJson() => {
        "layout": layoutValues.reverse[layout],
    };
}

class Reaction {
    Reaction({
        this.id,
        this.count,
    });

    String id;
    int count;

    factory Reaction.fromJson(Map<String, dynamic> json) => Reaction(
        id: json["id"],
        count: json["count"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "count": count,
    };
}

enum PostTag { HIDE_THUMBNAIL }

final postTagValues = EnumValues({
    "HIDE_THUMBNAIL": PostTag.HIDE_THUMBNAIL
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
