class PostModel {
  int userID;
  String userName;
  int postID;
  String body;
  bool isImage;
  String imageLink;

  PostModel(
      {this.userID,
      this.userName,
      this.postID,
      this.body,
      this.isImage,
      this.imageLink});

  PostModel.fromJson(Map<String, dynamic> json) {
    userID = json['userID'];
    userName = json['userName'];
    postID = json['postID'];
    body = json['body'];
    isImage = json['isImage'];
    imageLink = json['imageLink'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['userID'] = userID;
    data['userName'] = userName;
    data['postID'] = postID;
    data['body'] = body;
    data['isImage'] = isImage;
    data['imageLink'] = imageLink;
    return data;
  }
}
