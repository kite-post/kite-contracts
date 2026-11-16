//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of kite_contracts;

class TicketMessage {
  /// Returns a new [TicketMessage] instance.
  TicketMessage({
    required this.id,
    required this.author,
    required this.message,
    required this.createdAt,
  });

  String id;

  TicketMessageAuthorEnum author;

  String message;

  DateTime createdAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TicketMessage &&
    other.id == id &&
    other.author == author &&
    other.message == message &&
    other.createdAt == createdAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (author.hashCode) +
    (message.hashCode) +
    (createdAt.hashCode);

  @override
  String toString() => 'TicketMessage[id=$id, author=$author, message=$message, createdAt=$createdAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'author'] = this.author;
      json[r'message'] = this.message;
      json[r'createdAt'] = this.createdAt.toUtc().toIso8601String();
    return json;
  }

  /// Returns a new [TicketMessage] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TicketMessage? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TicketMessage[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TicketMessage[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TicketMessage(
        id: mapValueOfType<String>(json, r'id')!,
        author: TicketMessageAuthorEnum.fromJson(json[r'author'])!,
        message: mapValueOfType<String>(json, r'message')!,
        createdAt: mapDateTime(json, r'createdAt', r'')!,
      );
    }
    return null;
  }

  static List<TicketMessage> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TicketMessage>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TicketMessage.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TicketMessage> mapFromJson(dynamic json) {
    final map = <String, TicketMessage>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TicketMessage.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TicketMessage-objects as value to a dart map
  static Map<String, List<TicketMessage>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TicketMessage>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TicketMessage.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'author',
    'message',
    'createdAt',
  };
}


class TicketMessageAuthorEnum {
  /// Instantiate a new enum with the provided [value].
  const TicketMessageAuthorEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const CUSTOMER = TicketMessageAuthorEnum._(r'CUSTOMER');
  static const AGENT = TicketMessageAuthorEnum._(r'AGENT');
  static const SYSTEM = TicketMessageAuthorEnum._(r'SYSTEM');

  /// List of all possible values in this [enum][TicketMessageAuthorEnum].
  static const values = <TicketMessageAuthorEnum>[
    CUSTOMER,
    AGENT,
    SYSTEM,
  ];

  static TicketMessageAuthorEnum? fromJson(dynamic value) => TicketMessageAuthorEnumTypeTransformer().decode(value);

  static List<TicketMessageAuthorEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TicketMessageAuthorEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TicketMessageAuthorEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [TicketMessageAuthorEnum] to String,
/// and [decode] dynamic data back to [TicketMessageAuthorEnum].
class TicketMessageAuthorEnumTypeTransformer {
  factory TicketMessageAuthorEnumTypeTransformer() => _instance ??= const TicketMessageAuthorEnumTypeTransformer._();

  const TicketMessageAuthorEnumTypeTransformer._();

  String encode(TicketMessageAuthorEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a TicketMessageAuthorEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  TicketMessageAuthorEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'CUSTOMER': return TicketMessageAuthorEnum.CUSTOMER;
        case r'AGENT': return TicketMessageAuthorEnum.AGENT;
        case r'SYSTEM': return TicketMessageAuthorEnum.SYSTEM;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [TicketMessageAuthorEnumTypeTransformer] instance.
  static TicketMessageAuthorEnumTypeTransformer? _instance;
}


