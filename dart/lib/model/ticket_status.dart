//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of kite_contracts;


class TicketStatus {
  /// Instantiate a new enum with the provided [value].
  const TicketStatus._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const OPEN = TicketStatus._(r'OPEN');
  static const WAITING_CUSTOMER = TicketStatus._(r'WAITING_CUSTOMER');
  static const WAITING_AGENT = TicketStatus._(r'WAITING_AGENT');
  static const CLOSED = TicketStatus._(r'CLOSED');

  /// List of all possible values in this [enum][TicketStatus].
  static const values = <TicketStatus>[
    OPEN,
    WAITING_CUSTOMER,
    WAITING_AGENT,
    CLOSED,
  ];

  static TicketStatus? fromJson(dynamic value) => TicketStatusTypeTransformer().decode(value);

  static List<TicketStatus> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TicketStatus>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TicketStatus.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [TicketStatus] to String,
/// and [decode] dynamic data back to [TicketStatus].
class TicketStatusTypeTransformer {
  factory TicketStatusTypeTransformer() => _instance ??= const TicketStatusTypeTransformer._();

  const TicketStatusTypeTransformer._();

  String encode(TicketStatus data) => data.value;

  /// Decodes a [dynamic value][data] to a TicketStatus.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  TicketStatus? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'OPEN': return TicketStatus.OPEN;
        case r'WAITING_CUSTOMER': return TicketStatus.WAITING_CUSTOMER;
        case r'WAITING_AGENT': return TicketStatus.WAITING_AGENT;
        case r'CLOSED': return TicketStatus.CLOSED;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [TicketStatusTypeTransformer] instance.
  static TicketStatusTypeTransformer? _instance;
}

