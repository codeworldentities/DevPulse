-- Auto-generated: schema — database schema definition v5492
-- Created for project optimization

CREATE TABLE IF NOT EXISTS schema_—_database_schema_definition_5492 (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255),
    description TEXT,
    score DECIMAL(10,2),
    status VARCHAR(50) DEFAULT 'active',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX IF NOT EXISTS idx_schema_—_database_schema_definition_5492_name
    ON schema_—_database_schema_definition_5492(name);

CREATE INDEX IF NOT EXISTS idx_schema_—_database_schema_definition_5492_created
    ON schema_—_database_schema_definition_5492(created_at DESC);

-- Seed data
INSERT INTO schema_—_database_schema_definition_5492 (name, email)
VALUES
    ('item_0', 'val_0_5492'),
    ('item_1', 'val_1_5492'),
    ('item_2', 'val_2_5492'),
    ('item_3', 'val_3_5492'),
    ('item_4', 'val_4_5492'),
    ('item_5', 'val_5_5492'),
    ('item_6', 'val_6_5492'),
    ('item_7', 'val_7_5492'),

-- View
CREATE OR REPLACE VIEW v_schema_—_database_schema_definition_5492_summary AS
SELECT name, COUNT(*) as total, MAX(created_at) as last_update
FROM schema_—_database_schema_definition_5492
GROUP BY name
ORDER BY total DESC;
