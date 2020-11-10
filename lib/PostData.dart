class PostData {
  String name;
  String phohtUrl;
  int timesTamp;
  String postMsg;
  int type;
  String communication;

  PostData(
      {this.name,
        this.phohtUrl,
        this.timesTamp,
        this.postMsg,
        this.type,
        this.communication});

  PostData.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    phohtUrl = json['phohtUrl'];
    timesTamp = json['timesTamp'];
    postMsg = json['postMsg'];
    type = json['type'];
    communication = json['communication'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['phohtUrl'] = this.phohtUrl;
    data['timesTamp'] = this.timesTamp;
    data['postMsg'] = this.postMsg;
    data['type'] = this.type;
    data['communication'] = this.communication;
    return data;
  }
}