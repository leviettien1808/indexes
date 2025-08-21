CREATE INDEX salaryidx ON users (salary);

DROP INDEX salaryidx;

-- Hoặc tạo index ngay khi tạo bảng
CREATE TABLE <table_name> (
    ... column definitions,
    INDEX <index_name> (<column>)
);