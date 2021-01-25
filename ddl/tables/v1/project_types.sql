SET search_path=v1;

CREATE TABLE IF NOT EXISTS project_types (
  "name"             TEXT                      NOT NULL  PRIMARY KEY,
  created_at         TIMESTAMP WITH TIME ZONE  NOT NULL  DEFAULT CURRENT_TIMESTAMP,
  created_by         TEXT                      NOT NULL,
  last_modified_at   TIMESTAMP WITH TIME ZONE,
  last_modified_by   TEXT,
  description        TEXT,
  slug               TEXT                      NOT NULL,
  icon_class         TEXT                                DEFAULT 'fas fa-box'
);

COMMENT ON TABLE project_types IS 'Project Types';
COMMENT ON COLUMN project_types.name IS 'The project type (API, Consumer, Database, etc)';
COMMENT ON COLUMN project_types.created_at IS 'When the record was created at';
COMMENT ON COLUMN project_types.created_by IS 'The user created the record';
COMMENT ON COLUMN project_types.last_modified_at IS 'When the record was last modified';
COMMENT ON COLUMN project_types.last_modified_by IS 'The user that last modified the record';
COMMENT ON COLUMN project_types.description IS 'Project Type Description';
COMMENT ON COLUMN project_types.slug IS 'Slug used when creating namespace URLs';
COMMENT ON COLUMN project_types.icon_class IS 'Font Awesome UI icon class';

GRANT SELECT ON project_types TO reader;
GRANT SELECT, INSERT, UPDATE, DELETE ON project_types TO admin;
