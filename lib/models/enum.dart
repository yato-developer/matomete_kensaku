enum UpdateRequestType {
  not,
  cancelable,
  forcibly,
}

enum CategoryType {
  shop,
  sns,
  trip,
  news,
  job;

  String displayStatus() {
    switch (this) {
      case shop:
        return 'ショッピング';
      case sns:
        return 'SNS';
      case trip:
        return '旅';
      case news:
        return 'ニュース';
      case job:
        return '求人';
    }
  }
}
