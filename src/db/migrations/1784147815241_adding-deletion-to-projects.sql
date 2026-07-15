-- Up Migration
ALTER TABLE projects
ADD COLUMN is_deleted BOOLEAN DEFAULT false;

-- Down Migration
ALTER TABLE projects
DROP COLUMN is_deleted;