-- Auto-generated: stored procedure v6258
-- Created for project optimization

CREATE TABLE IF NOT EXISTS stored_procedure_6258 (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    is_active BOOLEAN DEFAULT TRUE,
    priority SMALLINT DEFAULT 0,
    status VARCHAR(50) DEFAULT 'active',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX IF NOT EXISTS idx_stored_procedure_6258_name
    ON stored_procedure_6258(name);

CREATE INDEX IF NOT EXISTS idx_stored_procedure_6258_created
    ON stored_procedure_6258(created_at DESC);

-- Seed data
INSERT INTO stored_procedure_6258 (name, is_active)
VALUES
    ('item_0', 'val_0_6258'),
    ('item_1', 'val_1_6258'),
    ('item_2', 'val_2_6258'),
    ('item_3', 'val_3_6258'),
    ('item_4', 'val_4_6258'),
    ('item_5', 'val_5_6258'),
    ('item_6', 'val_6_6258'),
    ('item_7', 'val_7_6258');

-- View
CREATE OR REPLACE VIEW v_stored_procedure_6258_summary AS
SELECT name, COUNT(*) as total, MAX(created_at) as last_update
FROM stored_procedure_6258
GROUP BY name
ORDER BY total DESC;
