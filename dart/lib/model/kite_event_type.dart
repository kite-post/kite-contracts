//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of kite_contracts;

/// Усі типи доменних подій Kite з events/registry.json
class KiteEventType {
  /// Instantiate a new enum with the provided [value].
  const KiteEventType._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const kitePeriodShipmentPeriodCreatedPeriodV1 = KiteEventType._(r'kite.shipment.created.v1');
  static const kitePeriodShipmentPeriodConfirmedPeriodV1 = KiteEventType._(r'kite.shipment.confirmed.v1');
  static const kitePeriodShipmentPeriodCancelledPeriodV1 = KiteEventType._(r'kite.shipment.cancelled.v1');
  static const kitePeriodShipmentPeriodStatusChangedPeriodV1 = KiteEventType._(r'kite.shipment.status-changed.v1');
  static const kitePeriodShipmentPeriodRedirectedPeriodV1 = KiteEventType._(r'kite.shipment.redirected.v1');
  static const kitePeriodShipmentPeriodRecipientChangedPeriodV1 = KiteEventType._(r'kite.shipment.recipient-changed.v1');
  static const kitePeriodShipmentPeriodHoldSetPeriodV1 = KiteEventType._(r'kite.shipment.hold-set.v1');
  static const kitePeriodShipmentPeriodReturnCreatedPeriodV1 = KiteEventType._(r'kite.shipment.return-created.v1');
  static const kitePeriodScanPeriodRecordedPeriodV1 = KiteEventType._(r'kite.scan.recorded.v1');
  static const kitePeriodScanPeriodUnitScannedPeriodV1 = KiteEventType._(r'kite.scan.unit-scanned.v1');
  static const kitePeriodScanPeriodVoidedPeriodV1 = KiteEventType._(r'kite.scan.voided.v1');
  static const kitePeriodLogisticsPeriodUnitClosedPeriodV1 = KiteEventType._(r'kite.logistics.unit-closed.v1');
  static const kitePeriodLogisticsPeriodTripDepartedPeriodV1 = KiteEventType._(r'kite.logistics.trip-departed.v1');
  static const kitePeriodLogisticsPeriodTripArrivedPeriodV1 = KiteEventType._(r'kite.logistics.trip-arrived.v1');
  static const kitePeriodLogisticsPeriodDiscrepancyOpenedPeriodV1 = KiteEventType._(r'kite.logistics.discrepancy-opened.v1');
  static const kitePeriodLockerPeriodCellReservedPeriodV1 = KiteEventType._(r'kite.locker.cell-reserved.v1');
  static const kitePeriodLockerPeriodParcelDepositedPeriodV1 = KiteEventType._(r'kite.locker.parcel-deposited.v1');
  static const kitePeriodLockerPeriodParcelCollectedPeriodV1 = KiteEventType._(r'kite.locker.parcel-collected.v1');
  static const kitePeriodLockerPeriodStorageExpiredPeriodV1 = KiteEventType._(r'kite.locker.storage-expired.v1');
  static const kitePeriodPaymentPeriodSucceededPeriodV1 = KiteEventType._(r'kite.payment.succeeded.v1');
  static const kitePeriodPaymentPeriodFailedPeriodV1 = KiteEventType._(r'kite.payment.failed.v1');
  static const kitePeriodPaymentPeriodRefundCompletedPeriodV1 = KiteEventType._(r'kite.payment.refund-completed.v1');
  static const kitePeriodPaymentPeriodCodCollectedPeriodV1 = KiteEventType._(r'kite.payment.cod-collected.v1');
  static const kitePeriodPaymentPeriodPayoutCompletedPeriodV1 = KiteEventType._(r'kite.payment.payout-completed.v1');
  static const kitePeriodCustomerPeriodPhoneVerifiedPeriodV1 = KiteEventType._(r'kite.customer.phone-verified.v1');
  static const kitePeriodCustomerPeriodPhoneRemovedPeriodV1 = KiteEventType._(r'kite.customer.phone-removed.v1');
  static const kitePeriodCustomerPeriodTrustedPersonChangedPeriodV1 = KiteEventType._(r'kite.customer.trusted-person-changed.v1');
  static const kitePeriodAiPeriodEtaPredictedPeriodV1 = KiteEventType._(r'kite.ai.eta-predicted.v1');
  static const kitePeriodAiPeriodRiskScoredPeriodV1 = KiteEventType._(r'kite.ai.risk-scored.v1');
  static const kitePeriodCarePeriodClaimCreatedPeriodV1 = KiteEventType._(r'kite.care.claim-created.v1');
  static const kitePeriodCarePeriodClaimResolvedPeriodV1 = KiteEventType._(r'kite.care.claim-resolved.v1');
  static const kitePeriodCarePeriodTicketUpdatedPeriodV1 = KiteEventType._(r'kite.care.ticket-updated.v1');
  static const kitePeriodAuditPeriodStaffActionPeriodV1 = KiteEventType._(r'kite.audit.staff-action.v1');
  static const kitePeriodAuditPeriodPiiAccessedPeriodV1 = KiteEventType._(r'kite.audit.pii-accessed.v1');

  /// List of all possible values in this [enum][KiteEventType].
  static const values = <KiteEventType>[
    kitePeriodShipmentPeriodCreatedPeriodV1,
    kitePeriodShipmentPeriodConfirmedPeriodV1,
    kitePeriodShipmentPeriodCancelledPeriodV1,
    kitePeriodShipmentPeriodStatusChangedPeriodV1,
    kitePeriodShipmentPeriodRedirectedPeriodV1,
    kitePeriodShipmentPeriodRecipientChangedPeriodV1,
    kitePeriodShipmentPeriodHoldSetPeriodV1,
    kitePeriodShipmentPeriodReturnCreatedPeriodV1,
    kitePeriodScanPeriodRecordedPeriodV1,
    kitePeriodScanPeriodUnitScannedPeriodV1,
    kitePeriodScanPeriodVoidedPeriodV1,
    kitePeriodLogisticsPeriodUnitClosedPeriodV1,
    kitePeriodLogisticsPeriodTripDepartedPeriodV1,
    kitePeriodLogisticsPeriodTripArrivedPeriodV1,
    kitePeriodLogisticsPeriodDiscrepancyOpenedPeriodV1,
    kitePeriodLockerPeriodCellReservedPeriodV1,
    kitePeriodLockerPeriodParcelDepositedPeriodV1,
    kitePeriodLockerPeriodParcelCollectedPeriodV1,
    kitePeriodLockerPeriodStorageExpiredPeriodV1,
    kitePeriodPaymentPeriodSucceededPeriodV1,
    kitePeriodPaymentPeriodFailedPeriodV1,
    kitePeriodPaymentPeriodRefundCompletedPeriodV1,
    kitePeriodPaymentPeriodCodCollectedPeriodV1,
    kitePeriodPaymentPeriodPayoutCompletedPeriodV1,
    kitePeriodCustomerPeriodPhoneVerifiedPeriodV1,
    kitePeriodCustomerPeriodPhoneRemovedPeriodV1,
    kitePeriodCustomerPeriodTrustedPersonChangedPeriodV1,
    kitePeriodAiPeriodEtaPredictedPeriodV1,
    kitePeriodAiPeriodRiskScoredPeriodV1,
    kitePeriodCarePeriodClaimCreatedPeriodV1,
    kitePeriodCarePeriodClaimResolvedPeriodV1,
    kitePeriodCarePeriodTicketUpdatedPeriodV1,
    kitePeriodAuditPeriodStaffActionPeriodV1,
    kitePeriodAuditPeriodPiiAccessedPeriodV1,
  ];

  static KiteEventType? fromJson(dynamic value) => KiteEventTypeTypeTransformer().decode(value);

  static List<KiteEventType> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <KiteEventType>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = KiteEventType.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [KiteEventType] to String,
/// and [decode] dynamic data back to [KiteEventType].
class KiteEventTypeTypeTransformer {
  factory KiteEventTypeTypeTransformer() => _instance ??= const KiteEventTypeTypeTransformer._();

  const KiteEventTypeTypeTransformer._();

  String encode(KiteEventType data) => data.value;

  /// Decodes a [dynamic value][data] to a KiteEventType.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  KiteEventType? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'kite.shipment.created.v1': return KiteEventType.kitePeriodShipmentPeriodCreatedPeriodV1;
        case r'kite.shipment.confirmed.v1': return KiteEventType.kitePeriodShipmentPeriodConfirmedPeriodV1;
        case r'kite.shipment.cancelled.v1': return KiteEventType.kitePeriodShipmentPeriodCancelledPeriodV1;
        case r'kite.shipment.status-changed.v1': return KiteEventType.kitePeriodShipmentPeriodStatusChangedPeriodV1;
        case r'kite.shipment.redirected.v1': return KiteEventType.kitePeriodShipmentPeriodRedirectedPeriodV1;
        case r'kite.shipment.recipient-changed.v1': return KiteEventType.kitePeriodShipmentPeriodRecipientChangedPeriodV1;
        case r'kite.shipment.hold-set.v1': return KiteEventType.kitePeriodShipmentPeriodHoldSetPeriodV1;
        case r'kite.shipment.return-created.v1': return KiteEventType.kitePeriodShipmentPeriodReturnCreatedPeriodV1;
        case r'kite.scan.recorded.v1': return KiteEventType.kitePeriodScanPeriodRecordedPeriodV1;
        case r'kite.scan.unit-scanned.v1': return KiteEventType.kitePeriodScanPeriodUnitScannedPeriodV1;
        case r'kite.scan.voided.v1': return KiteEventType.kitePeriodScanPeriodVoidedPeriodV1;
        case r'kite.logistics.unit-closed.v1': return KiteEventType.kitePeriodLogisticsPeriodUnitClosedPeriodV1;
        case r'kite.logistics.trip-departed.v1': return KiteEventType.kitePeriodLogisticsPeriodTripDepartedPeriodV1;
        case r'kite.logistics.trip-arrived.v1': return KiteEventType.kitePeriodLogisticsPeriodTripArrivedPeriodV1;
        case r'kite.logistics.discrepancy-opened.v1': return KiteEventType.kitePeriodLogisticsPeriodDiscrepancyOpenedPeriodV1;
        case r'kite.locker.cell-reserved.v1': return KiteEventType.kitePeriodLockerPeriodCellReservedPeriodV1;
        case r'kite.locker.parcel-deposited.v1': return KiteEventType.kitePeriodLockerPeriodParcelDepositedPeriodV1;
        case r'kite.locker.parcel-collected.v1': return KiteEventType.kitePeriodLockerPeriodParcelCollectedPeriodV1;
        case r'kite.locker.storage-expired.v1': return KiteEventType.kitePeriodLockerPeriodStorageExpiredPeriodV1;
        case r'kite.payment.succeeded.v1': return KiteEventType.kitePeriodPaymentPeriodSucceededPeriodV1;
        case r'kite.payment.failed.v1': return KiteEventType.kitePeriodPaymentPeriodFailedPeriodV1;
        case r'kite.payment.refund-completed.v1': return KiteEventType.kitePeriodPaymentPeriodRefundCompletedPeriodV1;
        case r'kite.payment.cod-collected.v1': return KiteEventType.kitePeriodPaymentPeriodCodCollectedPeriodV1;
        case r'kite.payment.payout-completed.v1': return KiteEventType.kitePeriodPaymentPeriodPayoutCompletedPeriodV1;
        case r'kite.customer.phone-verified.v1': return KiteEventType.kitePeriodCustomerPeriodPhoneVerifiedPeriodV1;
        case r'kite.customer.phone-removed.v1': return KiteEventType.kitePeriodCustomerPeriodPhoneRemovedPeriodV1;
        case r'kite.customer.trusted-person-changed.v1': return KiteEventType.kitePeriodCustomerPeriodTrustedPersonChangedPeriodV1;
        case r'kite.ai.eta-predicted.v1': return KiteEventType.kitePeriodAiPeriodEtaPredictedPeriodV1;
        case r'kite.ai.risk-scored.v1': return KiteEventType.kitePeriodAiPeriodRiskScoredPeriodV1;
        case r'kite.care.claim-created.v1': return KiteEventType.kitePeriodCarePeriodClaimCreatedPeriodV1;
        case r'kite.care.claim-resolved.v1': return KiteEventType.kitePeriodCarePeriodClaimResolvedPeriodV1;
        case r'kite.care.ticket-updated.v1': return KiteEventType.kitePeriodCarePeriodTicketUpdatedPeriodV1;
        case r'kite.audit.staff-action.v1': return KiteEventType.kitePeriodAuditPeriodStaffActionPeriodV1;
        case r'kite.audit.pii-accessed.v1': return KiteEventType.kitePeriodAuditPeriodPiiAccessedPeriodV1;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [KiteEventTypeTypeTransformer] instance.
  static KiteEventTypeTypeTransformer? _instance;
}

