//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of kite_contracts;

class ShipmentHoldSetEvent {
  /// Returns a new [ShipmentHoldSetEvent] instance.
  ShipmentHoldSetEvent({
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

  ShipmentHoldSetEventSpecversionEnum specversion;

  /// Ідентифікатор події; ключ таблиці processed_event у споживача (8.3, п. 3)
  String id;

  /// Сервіс-продюсер
  String source_;

  ShipmentHoldSetEventTypeEnum type;

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

  ShipmentHoldSetEventDatacontenttypeEnum? datacontenttype;

  /// $id схеми, якій відповідає data
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? dataschema;

  ShipmentHoldSetData data;

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
  bool operator ==(Object other) => identical(this, other) || other is ShipmentHoldSetEvent &&
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
  String toString() => 'ShipmentHoldSetEvent[specversion=$specversion, id=$id, source_=$source_, type=$type, subject=$subject, time=$time, datacontenttype=$datacontenttype, dataschema=$dataschema, data=$data, kitereceivedat=$kitereceivedat, kiterequestid=$kiterequestid, kitecausationid=$kitecausationid, kitepartitionkey=$kitepartitionkey]';

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

  /// Returns a new [ShipmentHoldSetEvent] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ShipmentHoldSetEvent? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ShipmentHoldSetEvent[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ShipmentHoldSetEvent[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ShipmentHoldSetEvent(
        specversion: ShipmentHoldSetEventSpecversionEnum.fromJson(json[r'specversion'])!,
        id: mapValueOfType<String>(json, r'id')!,
        source_: mapValueOfType<String>(json, r'source')!,
        type: ShipmentHoldSetEventTypeEnum.fromJson(json[r'type'])!,
        subject: mapValueOfType<String>(json, r'subject'),
        time: mapDateTime(json, r'time', r'')!,
        datacontenttype: ShipmentHoldSetEventDatacontenttypeEnum.fromJson(json[r'datacontenttype']),
        dataschema: mapValueOfType<String>(json, r'dataschema'),
        data: ShipmentHoldSetData.fromJson(json[r'data'])!,
        kitereceivedat: mapDateTime(json, r'kitereceivedat', r''),
        kiterequestid: mapValueOfType<String>(json, r'kiterequestid'),
        kitecausationid: mapValueOfType<String>(json, r'kitecausationid'),
        kitepartitionkey: mapValueOfType<String>(json, r'kitepartitionkey'),
      );
    }
    return null;
  }

  static List<ShipmentHoldSetEvent> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ShipmentHoldSetEvent>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ShipmentHoldSetEvent.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ShipmentHoldSetEvent> mapFromJson(dynamic json) {
    final map = <String, ShipmentHoldSetEvent>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ShipmentHoldSetEvent.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ShipmentHoldSetEvent-objects as value to a dart map
  static Map<String, List<ShipmentHoldSetEvent>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ShipmentHoldSetEvent>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ShipmentHoldSetEvent.listFromJson(entry.value, growable: growable,);
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


class ShipmentHoldSetEventSpecversionEnum {
  /// Instantiate a new enum with the provided [value].
  const ShipmentHoldSetEventSpecversionEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const n1period0 = ShipmentHoldSetEventSpecversionEnum._(r'1.0');

  /// List of all possible values in this [enum][ShipmentHoldSetEventSpecversionEnum].
  static const values = <ShipmentHoldSetEventSpecversionEnum>[
    n1period0,
  ];

  static ShipmentHoldSetEventSpecversionEnum? fromJson(dynamic value) => ShipmentHoldSetEventSpecversionEnumTypeTransformer().decode(value);

  static List<ShipmentHoldSetEventSpecversionEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ShipmentHoldSetEventSpecversionEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ShipmentHoldSetEventSpecversionEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ShipmentHoldSetEventSpecversionEnum] to String,
/// and [decode] dynamic data back to [ShipmentHoldSetEventSpecversionEnum].
class ShipmentHoldSetEventSpecversionEnumTypeTransformer {
  factory ShipmentHoldSetEventSpecversionEnumTypeTransformer() => _instance ??= const ShipmentHoldSetEventSpecversionEnumTypeTransformer._();

  const ShipmentHoldSetEventSpecversionEnumTypeTransformer._();

  String encode(ShipmentHoldSetEventSpecversionEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ShipmentHoldSetEventSpecversionEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ShipmentHoldSetEventSpecversionEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'1.0': return ShipmentHoldSetEventSpecversionEnum.n1period0;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ShipmentHoldSetEventSpecversionEnumTypeTransformer] instance.
  static ShipmentHoldSetEventSpecversionEnumTypeTransformer? _instance;
}



class ShipmentHoldSetEventTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const ShipmentHoldSetEventTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const kitePeriodShipmentPeriodHoldSetPeriodV1 = ShipmentHoldSetEventTypeEnum._(r'kite.shipment.hold-set.v1');

  /// List of all possible values in this [enum][ShipmentHoldSetEventTypeEnum].
  static const values = <ShipmentHoldSetEventTypeEnum>[
    kitePeriodShipmentPeriodHoldSetPeriodV1,
  ];

  static ShipmentHoldSetEventTypeEnum? fromJson(dynamic value) => ShipmentHoldSetEventTypeEnumTypeTransformer().decode(value);

  static List<ShipmentHoldSetEventTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ShipmentHoldSetEventTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ShipmentHoldSetEventTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ShipmentHoldSetEventTypeEnum] to String,
/// and [decode] dynamic data back to [ShipmentHoldSetEventTypeEnum].
class ShipmentHoldSetEventTypeEnumTypeTransformer {
  factory ShipmentHoldSetEventTypeEnumTypeTransformer() => _instance ??= const ShipmentHoldSetEventTypeEnumTypeTransformer._();

  const ShipmentHoldSetEventTypeEnumTypeTransformer._();

  String encode(ShipmentHoldSetEventTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ShipmentHoldSetEventTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ShipmentHoldSetEventTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'kite.shipment.hold-set.v1': return ShipmentHoldSetEventTypeEnum.kitePeriodShipmentPeriodHoldSetPeriodV1;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ShipmentHoldSetEventTypeEnumTypeTransformer] instance.
  static ShipmentHoldSetEventTypeEnumTypeTransformer? _instance;
}



class ShipmentHoldSetEventDatacontenttypeEnum {
  /// Instantiate a new enum with the provided [value].
  const ShipmentHoldSetEventDatacontenttypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const applicationSlashJson = ShipmentHoldSetEventDatacontenttypeEnum._(r'application/json');

  /// List of all possible values in this [enum][ShipmentHoldSetEventDatacontenttypeEnum].
  static const values = <ShipmentHoldSetEventDatacontenttypeEnum>[
    applicationSlashJson,
  ];

  static ShipmentHoldSetEventDatacontenttypeEnum? fromJson(dynamic value) => ShipmentHoldSetEventDatacontenttypeEnumTypeTransformer().decode(value);

  static List<ShipmentHoldSetEventDatacontenttypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ShipmentHoldSetEventDatacontenttypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ShipmentHoldSetEventDatacontenttypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ShipmentHoldSetEventDatacontenttypeEnum] to String,
/// and [decode] dynamic data back to [ShipmentHoldSetEventDatacontenttypeEnum].
class ShipmentHoldSetEventDatacontenttypeEnumTypeTransformer {
  factory ShipmentHoldSetEventDatacontenttypeEnumTypeTransformer() => _instance ??= const ShipmentHoldSetEventDatacontenttypeEnumTypeTransformer._();

  const ShipmentHoldSetEventDatacontenttypeEnumTypeTransformer._();

  String encode(ShipmentHoldSetEventDatacontenttypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ShipmentHoldSetEventDatacontenttypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ShipmentHoldSetEventDatacontenttypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'application/json': return ShipmentHoldSetEventDatacontenttypeEnum.applicationSlashJson;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ShipmentHoldSetEventDatacontenttypeEnumTypeTransformer] instance.
  static ShipmentHoldSetEventDatacontenttypeEnumTypeTransformer? _instance;
}


