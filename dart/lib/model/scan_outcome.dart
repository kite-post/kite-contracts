//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of kite_contracts;


class ScanOutcome {
  /// Instantiate a new enum with the provided [value].
  const ScanOutcome._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const OK = ScanOutcome._(r'OK');
  static const WARNING = ScanOutcome._(r'WARNING');
  static const ERROR = ScanOutcome._(r'ERROR');

  /// List of all possible values in this [enum][ScanOutcome].
  static const values = <ScanOutcome>[
    OK,
    WARNING,
    ERROR,
  ];

  static ScanOutcome? fromJson(dynamic value) => ScanOutcomeTypeTransformer().decode(value);

  static List<ScanOutcome> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ScanOutcome>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ScanOutcome.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ScanOutcome] to String,
/// and [decode] dynamic data back to [ScanOutcome].
class ScanOutcomeTypeTransformer {
  factory ScanOutcomeTypeTransformer() => _instance ??= const ScanOutcomeTypeTransformer._();

  const ScanOutcomeTypeTransformer._();

  String encode(ScanOutcome data) => data.value;

  /// Decodes a [dynamic value][data] to a ScanOutcome.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ScanOutcome? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'OK': return ScanOutcome.OK;
        case r'WARNING': return ScanOutcome.WARNING;
        case r'ERROR': return ScanOutcome.ERROR;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ScanOutcomeTypeTransformer] instance.
  static ScanOutcomeTypeTransformer? _instance;
}

