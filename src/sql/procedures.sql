-- Auto-generated: procedures — procedures v8754
-- Created for project optimization

CREATE TABLE IF NOT EXISTS procedures_—_procedures_8754 (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    metadata JSONB,
    email VARCHAR(255),
    score DECIMAL(10,2),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX IF NOT EXISTS idx_procedures_—_procedures_8754_name
    ON procedures_—_procedures_8754(name);

CREATE INDEX IF NOT EXISTS idx_procedures_—_procedures_8754_created
    ON procedures_—_procedures_8754(created_at DESC);

-- Seed data
INSERT INTO procedures_—_procedures_8754 (name, metadata)
VALUES
    ('item_0', 'val_0_8754'),
    ('item_1', 'val_1_8754');

-- View
CREATE OR REPLACE VIEW v_procedures_—_procedures_8754_summary AS
SELECT name, COUNT(*) as total, MAX(created_at) as last_update
FROM procedures_—_procedures_8754
GROUP BY name
ORDER BY total DESC;
