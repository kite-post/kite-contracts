//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of kite_contracts;


class ShipmentDirection {
  /// Instantiate a new enum with the provided [value].
  const ShipmentDirection._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const incoming = ShipmentDirection._(r'incoming');
  static const outgoing = ShipmentDirection._(r'outgoing');
  static const archive = ShipmentDirection._(r'archive');

  /// List of all possible values in this [enum][ShipmentDirection].
  static const values = <ShipmentDirection>[
    incoming,
    outgoing,
    archive,
  ];

  static ShipmentDirection? fromJson(dynamic value) => ShipmentDirectionTypeTransformer().decode(value);

  static List<ShipmentDirection> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ShipmentDirection>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ShipmentDirection.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ShipmentDirection] to String,
/// and [decode] dynamic data back to [ShipmentDirection].
class ShipmentDirectionTypeTransformer {
  factory ShipmentDirectionTypeTransformer() => _instance ??= const ShipmentDirectionTypeTransformer._();

  const ShipmentDirectionTypeTransformer._();

  String encode(ShipmentDirection data) => data.value;

  /// Decodes a [dynamic value][data] to a ShipmentDirection.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ShipmentDirection? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'incoming': return ShipmentDirection.incoming;
        case r'outgoing': return ShipmentDirection.outgoing;
        case r'archive': return ShipmentDirection.archive;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ShipmentDirectionTypeTransformer] instance.
  static ShipmentDirectionTypeTransformer? _instance;
}

