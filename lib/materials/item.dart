// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class ItemModel {
  static List<Component> items = ItemModel.items;
}

class Component {
  final String url;
  final String MobileNo;
  final String name;
  final String date;
  final String message;
  Component({
    required this.url,
    required this.MobileNo,
    required this.name,
    required this.date,
    required this.message,
  });

  Component copyWith({
    String? url,
    String? MobileNo,
    String? name,
    String? date,
    String? message,
  }) {
    return Component(
      url: url ?? this.url,
      MobileNo: MobileNo ?? this.MobileNo,
      name: name ?? this.name,
      date: date ?? this.date,
      message: message ?? this.message,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'url': url,
      'MobileNo': MobileNo,
      'name': name,
      'date': date,
      'message': message,
    };
  }

  factory Component.fromMap(Map<String, dynamic> map) {
    return Component(
      url: map['url'] as String,
      MobileNo: map['MobileNo'] as String,
      name: map['name'] as String,
      date: map['date'] as String,
      message: map['message'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Component.fromJson(String source) =>
      Component.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Component(url: $url, MobileNo: $MobileNo, name: $name, date: $date, message: $message)';
  }

  @override
  bool operator ==(covariant Component other) {
    if (identical(this, other)) return true;

    return other.url == url &&
        other.MobileNo == MobileNo &&
        other.name == name &&
        other.date == date &&
        other.message == message;
  }

  @override
  int get hashCode {
    return url.hashCode ^
        MobileNo.hashCode ^
        name.hashCode ^
        date.hashCode ^
        message.hashCode;
  }
}
