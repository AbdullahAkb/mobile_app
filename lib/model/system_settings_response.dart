class SystemSettingsResponse {
  late Message message;

  SystemSettingsResponse({
    required this.message,
  });

  SystemSettingsResponse.fromJson(Map<String, dynamic> json) {
    message = Message.fromJson(json['message']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['message'] = message.toJson();
    return data;
  }
}

class Message {
  late List<String> timezones;
  late Defaults defaults;

  Message({required this.timezones, required this.defaults});

  Message.fromJson(Map<String, dynamic> json) {
    timezones = json['timezones'].cast<String>();
    defaults = Defaults.fromJson(json['defaults']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['timezones'] = timezones;
    data['defaults'] = defaults.toJson();
    return data;
  }
}

class Defaults {
  late String appName;
  late String timeZone;
  late String dateFormat;
  late String timeFormat;
  late String numberFormat;
  late String floatPrecision;
  late String currencyPrecision;
  late String sessionExpiry;
  late String sessionExpiryMobile;
  late String minimumPasswordScore;
  late String twoFactorMethod;
  late String otpIssuerName;

  Defaults({
    required this.appName,
    required this.timeZone,
    required this.dateFormat,
    required this.timeFormat,
    required this.numberFormat,
    required this.floatPrecision,
    required this.currencyPrecision,
    required this.sessionExpiry,
    required this.sessionExpiryMobile,
    required this.minimumPasswordScore,
    required this.twoFactorMethod,
    required this.otpIssuerName,
  });

  Defaults.fromJson(Map<String, dynamic> json) {
    appName = json['app_name'];
    timeZone = json['time_zone'];
    dateFormat = json['date_format'];
    timeFormat = json['time_format'];
    numberFormat = json['number_format'];
    floatPrecision = json['float_precision'];
    currencyPrecision = json['currency_precision'];
    sessionExpiry = json['session_expiry'];
    sessionExpiryMobile = json['session_expiry_mobile'];
    minimumPasswordScore = json['minimum_password_score'];
    twoFactorMethod = json['two_factor_method'];
    otpIssuerName = json['otp_issuer_name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['app_name'] = appName;
    data['time_zone'] = timeZone;
    data['date_format'] = dateFormat;
    data['time_format'] = timeFormat;
    data['number_format'] = numberFormat;
    data['float_precision'] = floatPrecision;
    data['currency_precision'] = currencyPrecision;
    data['session_expiry'] = sessionExpiry;
    data['session_expiry_mobile'] = sessionExpiryMobile;
    data['minimum_password_score'] = minimumPasswordScore;
    data['two_factor_method'] = twoFactorMethod;
    data['otp_issuer_name'] = otpIssuerName;
    return data;
  }
}
