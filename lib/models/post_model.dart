class PostModel {
  final int postId;
  final int userId;
  final int typeId;
  final int payType;
  final int price;
  final String currency;
  final int status;
  final String? website;
  final int isPromote;
  final int promotDuration;
  final String campaignType;
  final String? campDate;
  final String? campTime;
  final String description;
  final String postVideo;
  final String hashtags;
  final String hashtagTitles;
  final String? postType;
  final String profileImage;
  final String name;
  final int countryId;
  final String? country;
  final String? flag;
  final String? currencyFlag;
  final int laqtaCoins;
  final String postTitle;
  final int displaySaltaries;
  final String content;
  final List<PostImage> images;
  final int likes;
  final int shares;
  final int comments;
  final int offers;
  final String type;

  PostModel({
    required this.postId,
    required this.userId,
    required this.typeId,
    required this.payType,
    required this.price,
    required this.currency,
    required this.status,
    required this.website,
    required this.isPromote,
    required this.promotDuration,
    required this.campaignType,
    required this.campDate,
    required this.campTime,
    required this.description,
    required this.postVideo,
    required this.hashtags,
    required this.hashtagTitles,
    required this.postType,
    required this.profileImage,
    required this.name,
    required this.countryId,
    required this.country,
    required this.flag,
    required this.currencyFlag,
    required this.laqtaCoins,
    required this.postTitle,
    required this.displaySaltaries,
    required this.content,
    required this.images,
    required this.likes,
    required this.shares,
    required this.comments,
    required this.offers,
    required this.type,

  });

  factory PostModel.fromJson(Map<String, dynamic> json) {
    return PostModel(
      postId: json['post_id'],
      userId: json['user_id'],
      typeId: json['type_id'],
      payType: json['pay_type'],
      price: json['price'],
      currency: json['currency'].toString(),
      status: json['status'],
      website: json['website'],
      isPromote: json['is_promote'],
      promotDuration: json['promot_duration'],
      campaignType: json['campaign_type'].toString(),
      campDate: json['camp_date'],
      campTime: json['camp_time'],
      description: json['description'],
      postVideo: json['post_video'],
      hashtags: json['hashtags'],
      hashtagTitles: json['hashtag_titles'],
      postType: json['post_type'],
      profileImage: json['profile_image'],
      name: json['name'],
      countryId: json['country_id'],
      country: json['country'],
      flag: json['flag'],
      currencyFlag: json['currency_flag'],
      laqtaCoins: json['laqta_coins'],
      postTitle: json['post_title'],
      displaySaltaries: json['display_saltaries'],
      content: json['content'].toString(),
      images: List<PostImage>.from(
          json['images'].map((image) => PostImage.fromJson(image))),
      likes: json['likes'],
      shares: json['shares'],
      comments: json['comments'],
      offers: json['offers'],
      type: json['type'],

    );
  }
}

class PostImage {
  final String image;
  final int isFirstPic;

  PostImage({
    required this.image,
    required this.isFirstPic,
  });

  factory PostImage.fromJson(Map<String, dynamic> json) {
    return PostImage(
      image: json['image'],
      isFirstPic: json['is_first_pic'],
    );
  }
}
