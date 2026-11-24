package ua.kite.contracts;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNotNull;
import static org.junit.jupiter.api.Assertions.assertTrue;

import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.datatype.jsr310.JavaTimeModule;
import java.io.InputStream;
import java.nio.file.Files;
import java.nio.file.Path;
import org.junit.jupiter.api.Test;
import ua.kite.contracts.model.KiteEventType;
import ua.kite.contracts.model.ScanUnitScannedEvent;
import ua.kite.contracts.model.ShipmentStatus;
import ua.kite.contracts.model.ShipmentStatusChangedEvent;

/** Згенерованому коду теж потрібен хоч один тест: він ловить розʼїзд схем і моделей. */
class ContractsTest {

  private final ObjectMapper mapper = new ObjectMapper().registerModule(new JavaTimeModule());

  private String example(String name) throws Exception {
    return Files.readString(Path.of("..", "examples", name));
  }

  @Test
  void readsStatusChangedEvent() throws Exception {
    ShipmentStatusChangedEvent event =
        mapper.readValue(example("shipment.status-changed.json"), ShipmentStatusChangedEvent.class);

    assertEquals("kite.shipment.status-changed.v1", event.getType().getValue());
    assertEquals("KT123456785UA", event.getData().getTrackingNumber());
    assertEquals(ShipmentStatus.READY_FOR_PICKUP, event.getData().getStatusAfter());
    assertEquals("KT30", event.getData().getEventCode());
    assertEquals("T7", event.getData().getTransition());
    assertNotNull(event.getTime());
    assertNotNull(event.getKitereceivedat(), "received_at — тай-брейк порядку (8.3, п. 4)");
  }

  @Test
  void readsUnitScannedEventWithShipmentList() throws Exception {
    ScanUnitScannedEvent event =
        mapper.readValue(example("scan.unit-scanned.json"), ScanUnitScannedEvent.class);

    assertEquals("BG0000000417", event.getData().getUnitCode());
    assertEquals(2, event.getData().getShipmentIds().size(), "список вмісту мішка їде всередині події");
  }

  @Test
  void eventTypeEnumMatchesRegistry() throws Exception {
    try (InputStream in = getClass().getResourceAsStream("/kite/contracts/events/registry.json")) {
      assertNotNull(in, "схеми і реєстр мають лежати в jar — сервіс не тримає копій");
      JsonNode registry = mapper.readTree(in);
      assertEquals(registry.get("events").size(), KiteEventType.values().length);
      for (JsonNode entry : registry.get("events")) {
        String type = entry.get("type").asText();
        assertNotNull(KiteEventType.fromValue(type), "у перелік не потрапив тип " + type);
      }
    }
  }

  @Test
  void bundledSpecIsInJar() throws Exception {
    try (InputStream in =
        getClass().getResourceAsStream("/kite/contracts/kite-contracts.openapi.json")) {
      assertNotNull(in, "зведений контракт має лежати в jar");
      JsonNode spec = mapper.readTree(in);
      assertTrue(spec.get("paths").size() > 0);
      assertEquals(34, spec.get("x-kite-events").size());
      assertEquals(
          spec.get("components").get("schemas").get("Role").get("enum").size(),
          spec.get("x-kite-role-permissions").size(),
          "кожна роль realm має запис у мапі дозволів");
    }
  }
}
