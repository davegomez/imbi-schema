SET search_path=v1;

CREATE TABLE IF NOT EXISTS data_centers (
  "name"             TEXT                      NOT NULL  PRIMARY KEY,
  created_at         TIMESTAMP WITH TIME ZONE  NOT NULL  DEFAULT CURRENT_TIMESTAMP,
  created_by         TEXT                      NOT NULL,
  last_modified_at   TIMESTAMP WITH TIME ZONE,
  last_modified_by   TEXT,
  description        TEXT,
  icon_class         TEXT                      NOT NULL  DEFAULT 'fas fa-globe'
);

COMMENT ON TABLE data_centers IS 'Data Centers';
COMMENT ON COLUMN data_centers.name IS 'Data Center name';
COMMENT ON COLUMN data_centers.created_at IS 'When the record was created at';
COMMENT ON COLUMN data_centers.created_by IS 'The user created the record';
COMMENT ON COLUMN data_centers.last_modified_at IS 'When the record was last modified';
COMMENT ON COLUMN data_centers.last_modified_by IS 'The user that last modified the record';
COMMENT ON COLUMN data_centers.description IS 'Description of the data center';
COMMENT ON COLUMN data_centers.icon_class IS 'Font Awesome UI icon class';

GRANT SELECT ON data_centers TO reader;
GRANT SELECT, INSERT, UPDATE, DELETE ON data_centers TO admin;
