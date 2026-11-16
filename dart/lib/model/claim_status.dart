//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of kite_contracts;


class ClaimStatus {
  /// Instantiate a new enum with the provided [value].
  const ClaimStatus._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const NEW = ClaimStatus._(r'NEW');
  static const IN_REVIEW = ClaimStatus._(r'IN_REVIEW');
  static const APPROVED = ClaimStatus._(r'APPROVED');
  static const REJECTED = ClaimStatus._(r'REJECTED');
  static const COMPENSATED = ClaimStatus._(r'COMPENSATED');

  /// List of all possible values in this [enum][ClaimStatus].
  static const values = <ClaimStatus>[
    NEW,
    IN_REVIEW,
    APPROVED,
    REJECTED,
    COMPENSATED,
  ];

  static ClaimStatus? fromJson(dynamic value) => ClaimStatusTypeTransformer().decode(value);

  static List<ClaimStatus> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ClaimStatus>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ClaimStatus.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ClaimStatus] to String,
/// and [decode] dynamic data back to [ClaimStatus].
class ClaimStatusTypeTransformer {
  factory ClaimStatusTypeTransformer() => _instance ??= const ClaimStatusTypeTransformer._();

  const ClaimStatusTypeTransformer._();

  String encode(ClaimStatus data) => data.value;

  /// Decodes a [dynamic value][data] to a ClaimStatus.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ClaimStatus? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'NEW': return ClaimStatus.NEW;
        case r'IN_REVIEW': return ClaimStatus.IN_REVIEW;
        case r'APPROVED': return ClaimStatus.APPROVED;
        case r'REJECTED': return ClaimStatus.REJECTED;
        case r'COMPENSATED': return ClaimStatus.COMPENSATED;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ClaimStatusTypeTransformer] instance.
  static ClaimStatusTypeTransformer? _instance;
}

