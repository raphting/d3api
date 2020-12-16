CREATE TABLE nodes (
    id character varying,
    context character varying,
    aspect character varying NOT NULL,
    created timestamp with time zone NOT NULL,
    modified timestamp with time zone,
    "validNotBefore" timestamp with time zone NOT NULL,
    "validNotAfter" timestamp with time zone,
    json jsonb,
    expanded jsonb,
    expire timestamp with time zone,
    CONSTRAINT "primary" PRIMARY KEY (id, context)
);

-- Indices -------------------------------------------------------

CREATE INDEX nodes_id_idx ON nodes(id);
CREATE INDEX ix_nodes_expire ON nodes(expire);
CREATE INDEX nodes_json_idx ON nodes(json);
CREATE INDEX nodes_context_idx ON nodes(context);
CREATE INDEX ix_nodes_aspect ON nodes(aspect);
CREATE INDEX ix_nodes_modified ON nodes(modified);
CREATE INDEX "ix_nodes_validNotAfter" ON nodes("validNotAfter");
CREATE INDEX ix_nodes_created ON nodes(created);
CREATE INDEX "ix_nodes_validNotBefore" ON nodes("validNotBefore");

INSERT INTO "public"."nodes"("id","context","aspect","created","modified","validNotBefore","validNotAfter","json","expanded","expire")
VALUES
(E'http://127.0.0.1:8083/products/6414612d-9841-427b-8aef-0c08b78de486',E'http://127.0.0.1:8081/product.jsonld',E'product',E'2020-11-11 00:42:28+00:00',E'2020-11-11 00:42:28+00:00',E'2020-01-01 00:00:00+00:00',NULL,E'{"@context": "http://127.0.0.1:8081/product.jsonld", "@id": "http://127.0.0.1:8083/products/6414612d-9841-427b-8aef-0c08b78de486", "aspect": "product", "cached": "2020-11-11T00:42:28+00:00", "containedIn": "http://127.0.0.1:8083/locations/039eb9a1-0ef6-5fa1-9f22-25933b8a8a87", "created": "2020-11-11T00:42:28+00:00", "expire": "2020-11-14T02:42:28+00:00", "hasPart": ["http://127.0.0.1:8083/products/7c70cb70-0e4f-484a-ad94-2f6d8a255c0c"], "modified": "2020-11-11T00:42:28+00:00", "name": "Dummy-MPOS-POS 03", "d3_type": "D3/POS_POS", "properties": [], "scope": "dummy; test-data; pos", "serial_number": "123456-333", "uid": "1fc1ad4b-f5b2-4cb3-a531-cef4c6b032a6", "validNotBefore": "2020-01-01T00:00:00+00:00", "vendor": "Acme Corporation"}',E'{"@id": "http://127.0.0.1:8083/products/6414612d-9841-427b-8aef-0c08b78de486", "http://127.0.0.1:8082/product/aspect": [{"@value": "product"}], "http://127.0.0.1:8082/product/cached": [{"@value": "2020-11-11T00:42:28+00:00"}], "http://127.0.0.1:8082/product/containedIn": [{"@value": "http://127.0.0.1:8083/locations/039eb9a1-0ef6-5fa1-9f22-25933b8a8a87"}], "http://127.0.0.1:8082/product/created": [{"@value": "2020-11-11T00:42:28+00:00"}], "http://127.0.0.1:8082/product/expire": [{"@value": "2020-11-14T02:42:28+00:00"}], "http://127.0.0.1:8082/product/hasPart": [{"@value": "http://127.0.0.1:8083/products/7c70cb70-0e4f-484a-ad94-2f6d8a255c0c"}], "http://127.0.0.1:8082/product/modified": [{"@value": "2020-11-11T00:42:28+00:00"}], "http://127.0.0.1:8082/product/name": [{"@value": "Dummy-MPOS-POS 03"}], "http://127.0.0.1:8082/product/d3_type": [{"@value": "D3/POS_POS"}], "http://127.0.0.1:8082/product/properties": [], "http://127.0.0.1:8082/product/scope": [{"@value": "dummy; test-data; pos"}], "http://127.0.0.1:8082/product/serial_number": [{"@value": "123456-333"}], "http://127.0.0.1:8082/product/uid": [{"@value": "1fc1ad4b-f5b2-4cb3-a531-cef4c6b032a6"}], "http://127.0.0.1:8082/product/validNotBefore": [{"@value": "2020-01-01T00:00:00+00:00"}], "http://127.0.0.1:8082/product/vendor": [{"@value": "Acme Corporation"}]}',E'2020-11-14 02:42:28+00:00'),
(E'http://127.0.0.1:8083/products/6414612d-9841-427b-8aef-0c08b78de486',E'http://127.0.0.1:8081/mpos_pos.jsonld',E'product',E'2020-11-11 00:42:28+00:00',E'2020-11-11 00:42:28+00:00',E'2020-01-01 00:00:00+00:00',NULL,E'{"@context": "http://127.0.0.1:8081/mpos_pos.jsonld", "@id": "http://127.0.0.1:8083/products/6414612d-9841-427b-8aef-0c08b78de486", "aspect": "product", "cached": "2020-11-11T00:42:28+00:00", "created": "2020-11-11T00:42:28+00:00", "expire": "2020-11-14T02:42:28+00:00", "modified": "2020-11-11T00:42:28+00:00", "d3_type": "D3/POS_POS", "origin": "", "properties": [{"prop_id": "POS Number", "prop_val": "3", "prop_validity": "dummy"}, {"prop_id": "POS Vendor", "prop_val": "Acme Corporation", "prop_validity": "dummy"}, {"prop_id": "POS Serial", "prop_val": "123456-333", "prop_validity": "dummy"}], "scope": "dummy; test-data; pos", "validNotBefore": "2020-01-01T00:00:00+00:00"}',E'{"@id": "http://127.0.0.1:8083/products/6414612d-9841-427b-8aef-0c08b78de486", "http://127.0.0.1:8082/mpos_pos/aspect": [{"@value": "product"}], "http://127.0.0.1:8082/mpos_pos/cached": [{"@value": "2020-11-11T00:42:28+00:00"}], "http://127.0.0.1:8082/mpos_pos/created": [{"@value": "2020-11-11T00:42:28+00:00"}], "http://127.0.0.1:8082/mpos_pos/expire": [{"@value": "2020-11-14T02:42:28+00:00"}], "http://127.0.0.1:8082/mpos_pos/modified": [{"@value": "2020-11-11T00:42:28+00:00"}], "http://127.0.0.1:8082/mpos_pos/d3_type": [{"@value": "D3/POS_POS"}], "http://127.0.0.1:8082/mpos_pos/origin": [{"@value": ""}], "http://127.0.0.1:8082/mpos_pos/properties": [{"http://127.0.0.1:8082/mpos_pos/prop_id": [{"@value": "POS Number"}], "http://127.0.0.1:8082/mpos_pos/prop_val": [{"@value": "3"}], "http://127.0.0.1:8082/prop_validity": [{"@value": "dummy"}]}, {"http://127.0.0.1:8082/mpos_pos/prop_id": [{"@value": "POS Vendor"}], "http://127.0.0.1:8082/mpos_pos/prop_val": [{"@value": "Acme Corporation"}], "http://127.0.0.1:8082/prop_validity": [{"@value": "dummy"}]}, {"http://127.0.0.1:8082/mpos_pos/prop_id": [{"@value": "POS Serial"}], "http://127.0.0.1:8082/mpos_pos/prop_val": [{"@value": "123456-333"}], "http://127.0.0.1:8082/prop_validity": [{"@value": "dummy"}]}], "http://127.0.0.1:8082/mpos_pos/scope": [{"@value": "dummy; test-data; pos"}], "http://127.0.0.1:8082/mpos_pos/validNotBefore": [{"@value": "2020-01-01T00:00:00+00:00"}]}',E'2020-11-14 02:42:28+00:00'),
(E'http://127.0.0.1:8083/products/6414612d-9841-427b-8aef-0c08b78de486',E'http://127.0.0.1:8081/base.jsonld',E'product',E'2020-11-11 00:42:28+00:00',E'2020-11-11 00:42:28+00:00',E'2020-01-01 00:00:00+00:00',NULL,E'{"@context": "http://127.0.0.1:8081/base.jsonld", "@id": "http://127.0.0.1:8083/products/6414612d-9841-427b-8aef-0c08b78de486", "aspect": "product", "cached": "2020-11-11T00:42:28+00:00", "created": "2020-11-11T00:42:28+00:00", "expire": "2020-11-14T02:42:28+00:00", "modified": "2020-11-11T00:42:28+00:00", "name": "Dummy-MPOS-POS 03", "d3_type": "D3/POS_POS", "scope": "dummy; test-data; pos", "validNotBefore": "2020-01-01T00:00:00+00:00"}',E'{"@id": "http://127.0.0.1:8083/products/6414612d-9841-427b-8aef-0c08b78de486", "http://127.0.0.1:8082/base/aspect": [{"@value": "product"}], "http://127.0.0.1:8082/base/cached": [{"@value": "2020-11-11T00:42:28+00:00"}], "http://127.0.0.1:8082/base/created": [{"@value": "2020-11-11T00:42:28+00:00"}], "http://127.0.0.1:8082/base/expire": [{"@value": "2020-11-14T02:42:28+00:00"}], "http://127.0.0.1:8082/base/modified": [{"@value": "2020-11-11T00:42:28+00:00"}], "http://127.0.0.1:8082/base/name": [{"@value": "Dummy-MPOS-POS 03"}], "http://127.0.0.1:8082/base/d3_type": [{"@value": "D3/POS_POS"}], "http://127.0.0.1:8082/base/scope": [{"@value": "dummy; test-data; pos"}], "http://127.0.0.1:8082/base/validNotBefore": [{"@value": "2020-01-01T00:00:00+00:00"}]}',E'2020-11-14 02:42:28+00:00');