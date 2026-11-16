//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of kite_contracts;


class NotificationChannel {
  /// Instantiate a new enum with the provided [value].
  const NotificationChannel._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const PUSH = NotificationChannel._(r'PUSH');
  static const EMAIL = NotificationChannel._(r'EMAIL');
  static const SMS = NotificationChannel._(r'SMS');

  /// List of all possible values in this [enum][NotificationChannel].
  static const values = <NotificationChannel>[
    PUSH,
    EMAIL,
    SMS,
  ];

  static NotificationChannel? fromJson(dynamic value) => NotificationChannelTypeTransformer().decode(value);

  static List<NotificationChannel> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <NotificationChannel>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = NotificationChannel.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [NotificationChannel] to String,
/// and [decode] dynamic data back to [NotificationChannel].
class NotificationChannelTypeTransformer {
  factory NotificationChannelTypeTransformer() => _instance ??= const NotificationChannelTypeTransformer._();

  const NotificationChannelTypeTransformer._();

  String encode(NotificationChannel data) => data.value;

  /// Decodes a [dynamic value][data] to a NotificationChannel.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  NotificationChannel? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'PUSH': return NotificationChannel.PUSH;
        case r'EMAIL': return NotificationChannel.EMAIL;
        case r'SMS': return NotificationChannel.SMS;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [NotificationChannelTypeTransformer] instance.
  static NotificationChannelTypeTransformer? _instance;
}

