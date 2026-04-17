-- Auto-generated: index optimization v3238
-- Created for project optimization

CREATE TABLE IF NOT EXISTS index_optimization_3238 (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    description TEXT,
    metadata JSONB,
    counter INTEGER DEFAULT 0,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX IF NOT EXISTS idx_index_optimization_3238_name
    ON index_optimization_3238(name);

CREATE INDEX IF NOT EXISTS idx_index_optimization_3238_created
    ON index_optimization_3238(created_at DESC);

-- Seed data
INSERT INTO index_optimization_3238 (name, description)
VALUES
    ('item_0', 'val_0_3238'),
    ('item_1', 'val_1_3238'),
    ('item_2', 'val_2_3238'),
    ('item_3', 'val_3_3238'),
    ('item_4', 'val_4_3238'),
    ('item_5', 'val_5_3238'),
    ('item_6', 'val_6_3238'),
    ('item_7', 'val_7_3238'),

-- View
CREATE OR REPLACE VIEW v_index_optimization_3238_summary AS
SELECT name, COUNT(*) as total, MAX(created_at) as last_update
FROM index_optimization_3238
GROUP BY name
ORDER BY total DESC;
