//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of kite_contracts;

class LockerParcelCollectedEvent {
  /// Returns a new [LockerParcelCollectedEvent] instance.
  LockerParcelCollectedEvent({
    required this.specversion,
    required this.id,
    required this.source_,
    required this.type,
    this.subject,
    required this.time,
    this.datacontenttype,
    this.dataschema,
    required this.data,
    this.kitereceivedat,
    this.kiterequestid,
    this.kitecausationid,
    this.kitepartitionkey,
  });

  LockerParcelCollectedEventSpecversionEnum specversion;

  /// Ідентифікатор події; ключ таблиці processed_event у споживача (8.3, п. 3)
  String id;

  /// Сервіс-продюсер
  String source_;

  LockerParcelCollectedEventTypeEnum type;

  /// Сутність, якої стосується подія: номер відправлення, код мішка, рейс
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? subject;

  /// occurred_at — момент самої події, первинний час журналу (8.3, п. 4)
  DateTime time;

  LockerParcelCollectedEventDatacontenttypeEnum? datacontenttype;

  /// $id схеми, якій відповідає data
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? dataschema;

  LockerParcelCollectedData data;

  /// received_at — момент запису; тай-брейк порядку і детектор брехливого годинника сканера (8.3, пп. 4-5)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? kitereceivedat;

  /// X-Request-Id запиту, який породив подію (9.1)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? kiterequestid;

  /// Подія-причина: нею зв'язані похідні події після розгортання мішка (8.3, п. 2)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? kitecausationid;

  /// Ключ розділу Kafka; для подій відправлення — shipmentId (8.3, п. 4)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? kitepartitionkey;

  @override
  bool operator ==(Object other) => identical(this, other) || other is LockerParcelCollectedEvent &&
    other.specversion == specversion &&
    other.id == id &&
    other.source_ == source_ &&
    other.type == type &&
    other.subject == subject &&
    other.time == time &&
    other.datacontenttype == datacontenttype &&
    other.dataschema == dataschema &&
    other.data == data &&
    other.kitereceivedat == kitereceivedat &&
    other.kiterequestid == kiterequestid &&
    other.kitecausationid == kitecausationid &&
    other.kitepartitionkey == kitepartitionkey;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (specversion.hashCode) +
    (id.hashCode) +
    (source_.hashCode) +
    (type.hashCode) +
    (subject == null ? 0 : subject!.hashCode) +
    (time.hashCode) +
    (datacontenttype == null ? 0 : datacontenttype!.hashCode) +
    (dataschema == null ? 0 : dataschema!.hashCode) +
    (data.hashCode) +
    (kitereceivedat == null ? 0 : kitereceivedat!.hashCode) +
    (kiterequestid == null ? 0 : kiterequestid!.hashCode) +
    (kitecausationid == null ? 0 : kitecausationid!.hashCode) +
    (kitepartitionkey == null ? 0 : kitepartitionkey!.hashCode);

  @override
  String toString() => 'LockerParcelCollectedEvent[specversion=$specversion, id=$id, source_=$source_, type=$type, subject=$subject, time=$time, datacontenttype=$datacontenttype, dataschema=$dataschema, data=$data, kitereceivedat=$kitereceivedat, kiterequestid=$kiterequestid, kitecausationid=$kitecausationid, kitepartitionkey=$kitepartitionkey]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'specversion'] = this.specversion;
      json[r'id'] = this.id;
      json[r'source'] = this.source_;
      json[r'type'] = this.type;
    if (this.subject != null) {
      json[r'subject'] = this.subject;
    } else {
      json[r'subject'] = null;
    }
      json[r'time'] = this.time.toUtc().toIso8601String();
    if (this.datacontenttype != null) {
      json[r'datacontenttype'] = this.datacontenttype;
    } else {
      json[r'datacontenttype'] = null;
    }
    if (this.dataschema != null) {
      json[r'dataschema'] = this.dataschema;
    } else {
      json[r'dataschema'] = null;
    }
      json[r'data'] = this.data;
    if (this.kitereceivedat != null) {
      json[r'kitereceivedat'] = this.kitereceivedat!.toUtc().toIso8601String();
    } else {
      json[r'kitereceivedat'] = null;
    }
    if (this.kiterequestid != null) {
      json[r'kiterequestid'] = this.kiterequestid;
    } else {
      json[r'kiterequestid'] = null;
    }
    if (this.kitecausationid != null) {
      json[r'kitecausationid'] = this.kitecausationid;
    } else {
      json[r'kitecausationid'] = null;
    }
    if (this.kitepartitionkey != null) {
      json[r'kitepartitionkey'] = this.kitepartitionkey;
    } else {
      json[r'kitepartitionkey'] = null;
    }
    return json;
  }

  /// Returns a new [LockerParcelCollectedEvent] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static LockerParcelCollectedEvent? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "LockerParcelCollectedEvent[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "LockerParcelCollectedEvent[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return LockerParcelCollectedEvent(
        specversion: LockerParcelCollectedEventSpecversionEnum.fromJson(json[r'specversion'])!,
        id: mapValueOfType<String>(json, r'id')!,
        source_: mapValueOfType<String>(json, r'source')!,
        type: LockerParcelCollectedEventTypeEnum.fromJson(json[r'type'])!,
        subject: mapValueOfType<String>(json, r'subject'),
        time: mapDateTime(json, r'time', r'')!,
        datacontenttype: LockerParcelCollectedEventDatacontenttypeEnum.fromJson(json[r'datacontenttype']),
        dataschema: mapValueOfType<String>(json, r'dataschema'),
        data: LockerParcelCollectedData.fromJson(json[r'data'])!,
        kitereceivedat: mapDateTime(json, r'kitereceivedat', r''),
        kiterequestid: mapValueOfType<String>(json, r'kiterequestid'),
        kitecausationid: mapValueOfType<String>(json, r'kitecausationid'),
        kitepartitionkey: mapValueOfType<String>(json, r'kitepartitionkey'),
      );
    }
    return null;
  }

  static List<LockerParcelCollectedEvent> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <LockerParcelCollectedEvent>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = LockerParcelCollectedEvent.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, LockerParcelCollectedEvent> mapFromJson(dynamic json) {
    final map = <String, LockerParcelCollectedEvent>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = LockerParcelCollectedEvent.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of LockerParcelCollectedEvent-objects as value to a dart map
  static Map<String, List<LockerParcelCollectedEvent>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<LockerParcelCollectedEvent>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = LockerParcelCollectedEvent.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'specversion',
    'id',
    'source',
    'type',
    'time',
    'data',
  };
}


class LockerParcelCollectedEventSpecversionEnum {
  /// Instantiate a new enum with the provided [value].
  const LockerParcelCollectedEventSpecversionEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const n1period0 = LockerParcelCollectedEventSpecversionEnum._(r'1.0');

  /// List of all possible values in this [enum][LockerParcelCollectedEventSpecversionEnum].
  static const values = <LockerParcelCollectedEventSpecversionEnum>[
    n1period0,
  ];

  static LockerParcelCollectedEventSpecversionEnum? fromJson(dynamic value) => LockerParcelCollectedEventSpecversionEnumTypeTransformer().decode(value);

  static List<LockerParcelCollectedEventSpecversionEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <LockerParcelCollectedEventSpecversionEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = LockerParcelCollectedEventSpecversionEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [LockerParcelCollectedEventSpecversionEnum] to String,
/// and [decode] dynamic data back to [LockerParcelCollectedEventSpecversionEnum].
class LockerParcelCollectedEventSpecversionEnumTypeTransformer {
  factory LockerParcelCollectedEventSpecversionEnumTypeTransformer() => _instance ??= const LockerParcelCollectedEventSpecversionEnumTypeTransformer._();

  const LockerParcelCollectedEventSpecversionEnumTypeTransformer._();

  String encode(LockerParcelCollectedEventSpecversionEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a LockerParcelCollectedEventSpecversionEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  LockerParcelCollectedEventSpecversionEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'1.0': return LockerParcelCollectedEventSpecversionEnum.n1period0;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [LockerParcelCollectedEventSpecversionEnumTypeTransformer] instance.
  static LockerParcelCollectedEventSpecversionEnumTypeTransformer? _instance;
}



class LockerParcelCollectedEventTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const LockerParcelCollectedEventTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const kitePeriodLockerPeriodParcelCollectedPeriodV1 = LockerParcelCollectedEventTypeEnum._(r'kite.locker.parcel-collected.v1');

  /// List of all possible values in this [enum][LockerParcelCollectedEventTypeEnum].
  static const values = <LockerParcelCollectedEventTypeEnum>[
    kitePeriodLockerPeriodParcelCollectedPeriodV1,
  ];

  static LockerParcelCollectedEventTypeEnum? fromJson(dynamic value) => LockerParcelCollectedEventTypeEnumTypeTransformer().decode(value);

  static List<LockerParcelCollectedEventTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <LockerParcelCollectedEventTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = LockerParcelCollectedEventTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [LockerParcelCollectedEventTypeEnum] to String,
/// and [decode] dynamic data back to [LockerParcelCollectedEventTypeEnum].
class LockerParcelCollectedEventTypeEnumTypeTransformer {
  factory LockerParcelCollectedEventTypeEnumTypeTransformer() => _instance ??= const LockerParcelCollectedEventTypeEnumTypeTransformer._();

  const LockerParcelCollectedEventTypeEnumTypeTransformer._();

  String encode(LockerParcelCollectedEventTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a LockerParcelCollectedEventTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  LockerParcelCollectedEventTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'kite.locker.parcel-collected.v1': return LockerParcelCollectedEventTypeEnum.kitePeriodLockerPeriodParcelCollectedPeriodV1;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [LockerParcelCollectedEventTypeEnumTypeTransformer] instance.
  static LockerParcelCollectedEventTypeEnumTypeTransformer? _instance;
}



class LockerParcelCollectedEventDatacontenttypeEnum {
  /// Instantiate a new enum with the provided [value].
  const LockerParcelCollectedEventDatacontenttypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const applicationSlashJson = LockerParcelCollectedEventDatacontenttypeEnum._(r'application/json');

  /// List of all possible values in this [enum][LockerParcelCollectedEventDatacontenttypeEnum].
  static const values = <LockerParcelCollectedEventDatacontenttypeEnum>[
    applicationSlashJson,
  ];

  static LockerParcelCollectedEventDatacontenttypeEnum? fromJson(dynamic value) => LockerParcelCollectedEventDatacontenttypeEnumTypeTransformer().decode(value);

  static List<LockerParcelCollectedEventDatacontenttypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <LockerParcelCollectedEventDatacontenttypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = LockerParcelCollectedEventDatacontenttypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [LockerParcelCollectedEventDatacontenttypeEnum] to String,
/// and [decode] dynamic data back to [LockerParcelCollectedEventDatacontenttypeEnum].
class LockerParcelCollectedEventDatacontenttypeEnumTypeTransformer {
  factory LockerParcelCollectedEventDatacontenttypeEnumTypeTransformer() => _instance ??= const LockerParcelCollectedEventDatacontenttypeEnumTypeTransformer._();

  const LockerParcelCollectedEventDatacontenttypeEnumTypeTransformer._();

  String encode(LockerParcelCollectedEventDatacontenttypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a LockerParcelCollectedEventDatacontenttypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  LockerParcelCollectedEventDatacontenttypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'application/json': return LockerParcelCollectedEventDatacontenttypeEnum.applicationSlashJson;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [LockerParcelCollectedEventDatacontenttypeEnumTypeTransformer] instance.
  static LockerParcelCollectedEventDatacontenttypeEnumTypeTransformer? _instance;
}


