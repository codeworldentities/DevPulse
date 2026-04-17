-- Auto-generated: index optimization v231
-- Created for project optimization

CREATE TABLE IF NOT EXISTS index_optimization_231 (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    is_active BOOLEAN DEFAULT TRUE,
    metadata JSONB,
    email VARCHAR(255),
    description TEXT,
    counter INTEGER DEFAULT 0,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX IF NOT EXISTS idx_index_optimization_231_name
    ON index_optimization_231(name);

CREATE INDEX IF NOT EXISTS idx_index_optimization_231_created
    ON index_optimization_231(created_at DESC);

-- Seed data
INSERT INTO index_optimization_231 (name, is_active)
VALUES
    ('item_0', 'val_0_231'),
    ('item_1', 'val_1_231'),
    ('item_2', 'val_2_231'),
    ('item_3', 'val_3_231'),
    ('item_4', 'val_4_231'),
    ('item_5', 'val_5_231'),
    ('item_6', 'val_6_231'),
    ('item_7', 'val_7_231'),

-- View
CREATE OR REPLACE VIEW v_index_optimization_231_summary AS
SELECT name, COUNT(*) as total, MAX(created_at) as last_update
FROM index_optimization_231
GROUP BY name
ORDER BY total DESC;
