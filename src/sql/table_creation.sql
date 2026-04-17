-- Auto-generated: table creation v5342
-- Created for project optimization

CREATE TABLE IF NOT EXISTS table_creation_5342 (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    is_active BOOLEAN DEFAULT TRUE,
    status VARCHAR(50) DEFAULT 'active',
    metadata JSONB,
    counter INTEGER DEFAULT 0,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX IF NOT EXISTS idx_table_creation_5342_name
    ON table_creation_5342(name);

CREATE INDEX IF NOT EXISTS idx_table_creation_5342_created
    ON table_creation_5342(created_at DESC);

-- Seed data
INSERT INTO table_creation_5342 (name, is_active)
VALUES
    ('item_0', 'val_0_5342'),
    ('item_1', 'val_1_5342'),
    ('item_2', 'val_2_5342'),
    ('item_3', 'val_3_5342'),
    ('item_4', 'val_4_5342'),
    ('item_5', 'val_5_5342'),
    ('item_6', 'val_6_5342'),
    ('item_7', 'val_7_5342'),

-- View
CREATE OR REPLACE VIEW v_table_creation_5342_summary AS
SELECT name, COUNT(*) as total, MAX(created_at) as last_update
FROM table_creation_5342
GROUP BY name
ORDER BY total DESC;
