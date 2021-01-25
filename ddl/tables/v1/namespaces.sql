SET search_path=v1, public, pg_catalog;

CREATE TABLE IF NOT EXISTS namespaces (
  "name"            TEXT                      NOT NULL  PRIMARY KEY,
  created_at        TIMESTAMP WITH TIME ZONE  NOT NULL  DEFAULT CURRENT_TIMESTAMP,
  created_by        TEXT                      NOT NULL,
  last_modified_at  TIMESTAMP WITH TIME ZONE,
  last_modified_by  TEXT,
  slug              TEXT                      NOT NULL UNIQUE,
  icon_class        TEXT                      NOT NULL,
  maintained_by     TEXT[]);

COMMENT ON TABLE namespaces IS 'Organizational Teams';
COMMENT ON COLUMN namespaces.name IS 'Team name';
COMMENT ON COLUMN namespaces.created_at IS 'When the record was created at';
COMMENT ON COLUMN namespaces.created_by IS 'The user created the record';
COMMENT ON COLUMN namespaces.last_modified_at IS 'When the record was last modified';
COMMENT ON COLUMN namespaces.last_modified_by IS 'The user that last modified the record';
COMMENT ON COLUMN namespaces.slug IS 'Team path slug / abbreviation';
COMMENT ON COLUMN namespaces.icon_class IS 'Font Awesome UI icon class';
COMMENT ON COLUMN namespaces.maintained_by IS 'Optional groups that have access to modify projects in the namespace';

GRANT SELECT ON namespaces TO reader;
GRANT SELECT, INSERT, UPDATE, DELETE ON namespaces TO admin;
