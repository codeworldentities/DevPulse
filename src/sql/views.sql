-- Auto-generated: views — views v6068
-- Created for project optimization

CREATE TABLE IF NOT EXISTS views_—_views_6068 (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    metadata JSONB,
    status VARCHAR(50) DEFAULT 'active',
    score DECIMAL(10,2),
    is_active BOOLEAN DEFAULT TRUE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX IF NOT EXISTS idx_views_—_views_6068_name
    ON views_—_views_6068(name);

CREATE INDEX IF NOT EXISTS idx_views_—_views_6068_created
    ON views_—_views_6068(created_at DESC);

-- Seed data
INSERT INTO views_—_views_6068 (name, metadata)
VALUES
    ('item_0', 'val_0_6068'),
    ('item_1', 'val_1_6068'),
    ('item_2', 'val_2_6068');

-- View
CREATE OR REPLACE VIEW v_views_—_views_6068_summary AS
SELECT name, COUNT(*) as total, MAX(created_at) as last_update
FROM views_—_views_6068
GROUP BY name
ORDER BY total DESC;
