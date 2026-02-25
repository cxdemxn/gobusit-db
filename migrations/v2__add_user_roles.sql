-- =========================
-- ROLES TABLE
-- =========================
CREATE TABLE roles (
    id VARCHAR(50) PRIMARY KEY,
    name VARCHAR(50) NOT NULL UNIQUE
);

-- =========================
-- USER ROLES (many-to-many)
-- =========================
CREATE TABLE user_roles (
    user_id VARCHAR(50) NOT NULL,
    role_id VARCHAR(50) NOT NULL,

    PRIMARY KEY (user_id, role_id),

    CONSTRAINT fk_userroles_user
        FOREIGN KEY (user_id)
        REFERENCES users(id)
        ON DELETE CASCADE,

    CONSTRAINT fk_userroles_role
        FOREIGN KEY (role_id)
        REFERENCES roles(id)
        ON DELETE CASCADE
);

-- =========================
-- INDEXES
-- =========================
CREATE INDEX idx_userroles_user ON user_roles(user_id);
CREATE INDEX idx_userroles_role ON user_roles(role_id);