class LoginRequest {
  late String? usr;
  late String? pwd;
  late String? cmd;
  late String? otp;
  late String? tmpId;
  late String device;

  LoginRequest({
    this.usr,
    this.pwd,
    this.cmd,
    this.otp,
    this.tmpId,
    this.device = "mobile",
  }) : assert(
          (usr != null && pwd != null) ||
              (cmd != null && otp != null && tmpId != null),
        );

  LoginRequest.fromJson(Map<String, dynamic> json) {
    usr = json['usr'];
    pwd = json['pwd'];
    cmd = json['cmd'];
    otp = json['otp'];
    tmpId = json['tmp_id'];
    device = json['device'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['usr'] = usr;
    data['pwd'] = pwd;
    data['cmd'] = cmd;
    data['otp'] = otp;
    data['tmp_id'] = tmpId;
    data['device'] = device;
    return data;
  }
}
