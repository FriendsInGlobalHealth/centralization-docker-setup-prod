USE openmrs_fgh_central;

DELETE FROM global_property WHERE property in('debezium.engine.enabled', 'debezium.mysql.history.file.filename', 'debezium.offset.storage.file.filename', 'debezium.database.user', 'debezium.database.password', 'mpi.server.base.url', 'mpi.keystore.path', 'mpi.keystore.password', 'mpi.keystore.type' );

INSERT INTO global_property (property,property_value,uuid)
VALUES ('debezium.engine.enabled', 'true', 'ace8f66d-98b8-4829-a5af-d063376cd5c1'),
       ('debezium.mysql.history.file.filename', '/root/.OpenMRS/config/debezium/history.txt', 'bce8f66d-98b8-4829-a5af-d063376cd5c1'),
       ('debezium.offset.storage.file.filename', '/root/.OpenMRS/config/debezium/offset.txt', 'cce8f66d-98b8-4829-a5af-d063376cd5c1'),
       ('debezium.database.user', 'root', 'dce8f66d-98b8-4829-a5af-d063376cd5c1'),
       ('debezium.database.password', 'root', 'ece8f66d-98b8-4829-a5af-d063376cd5c1'),
       ('mpi.server.base.url', 'https://opencr:3000', '1be8f66d-98b8-4829-a5af-d063376cd5c1'),
       ('mpi.keystore.path', '/root/.OpenMRS/mpi/config/openmrs.p12', '2be8f66d-98b8-4829-a5af-d063376cd5c1'),
       ('mpi.keystore.password', 'changeit', '3be8f66d-98b8-4829-a5af-d063376cd5c1'),
       ('mpi.keystore.type', 'PKCS12', '4be8f66d-98b8-4829-a5af-d063376cd5c1');

UPDATE global_property SET property_value = 'org.openmrs.api:info,org.openmrs.module.debezium:debug,org.openmrs.module.fgh.mpi:debug,io.debezium:info' WHERE property = 'log.level';
