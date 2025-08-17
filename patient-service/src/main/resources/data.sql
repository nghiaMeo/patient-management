-- Ensure the 'patient' table exists
DROP TABLE IF EXISTS patient;
CREATE TABLE patient
(
    id              UUID PRIMARY KEY,
    name            VARCHAR(255)        NOT NULL,
    username        VARCHAR(100) UNIQUE NOT NULL,
    password        VARCHAR(255)        NOT NULL,
    email           VARCHAR(255) UNIQUE NOT NULL,
    phone           VARCHAR(20) UNIQUE  NOT NULL,
    address         VARCHAR(255)        NOT NULL,
    date_of_birth   DATE                NOT NULL,
    registered_date DATE                NOT NULL
);

-- Insert patients with username, password, phone
INSERT INTO patient (id, name, username, password, email, phone, address, date_of_birth, registered_date)
SELECT '123e4567-e89b-12d3-a456-426614174000',
       'John Doe',
       'johndoe',
       '123456',
       'john.doe@example.com',
       '0900000000',
       '123 Main St, Springfield',
       '1985-06-15',
       '2024-01-10'
    WHERE NOT EXISTS (SELECT 1 FROM patient WHERE id = '123e4567-e89b-12d3-a456-426614174000');

INSERT INTO patient (id, name, username, password, email, phone, address, date_of_birth, registered_date)
SELECT '123e4567-e89b-12d3-a456-426614174001',
       'Jane Smith',
       'janesmith',
       '123456',
       'jane.smith@example.com',
       '0900000001',
       '456 Elm St, Shelbyville',
       '1990-09-23',
       '2023-12-01'
    WHERE NOT EXISTS (SELECT 1 FROM patient WHERE id = '123e4567-e89b-12d3-a456-426614174001');

INSERT INTO patient (id, name, username, password, email, phone, address, date_of_birth, registered_date)
SELECT '123e4567-e89b-12d3-a456-426614174002',
       'Alice Johnson',
       'alicej',
       '123456',
       'alice.johnson@example.com',
       '0900000002',
       '789 Oak St, Capital City',
       '1978-03-12',
       '2022-06-20'
    WHERE NOT EXISTS (SELECT 1 FROM patient WHERE id = '123e4567-e89b-12d3-a456-426614174002');

INSERT INTO patient (id, name, username, password, email, phone, address, date_of_birth, registered_date)
SELECT '123e4567-e89b-12d3-a456-426614174003',
       'Bob Brown',
       'bobb',
       '123456',
       'bob.brown@example.com',
       '0900000003',
       '321 Pine St, Springfield',
       '1982-11-30',
       '2023-05-14'
    WHERE NOT EXISTS (SELECT 1 FROM patient WHERE id = '123e4567-e89b-12d3-a456-426614174003');

INSERT INTO patient (id, name, username, password, email, phone, address, date_of_birth, registered_date)
SELECT '123e4567-e89b-12d3-a456-426614174004',
       'Emily Davis',
       'emilyd',
       '123456',
       'emily.davis@example.com',
       '0900000004',
       '654 Maple St, Shelbyville',
       '1995-02-05',
       '2024-03-01'
    WHERE NOT EXISTS (SELECT 1 FROM patient WHERE id = '123e4567-e89b-12d3-a456-426614174004');

INSERT INTO patient (id, name, username, password, email, phone, address, date_of_birth, registered_date)
SELECT '223e4567-e89b-12d3-a456-426614174005',
       'Michael Green',
       'michaelg',
       '123456',
       'michael.green@example.com',
       '0900000005',
       '987 Cedar St, Springfield',
       '1988-07-25',
       '2024-02-15'
    WHERE NOT EXISTS (SELECT 1 FROM patient WHERE id = '223e4567-e89b-12d3-a456-426614174005');

INSERT INTO patient (id, name, username, password, email, phone, address, date_of_birth, registered_date)
SELECT '223e4567-e89b-12d3-a456-426614174006',
       'Sarah Taylor',
       'saraht',
       '123456',
       'sarah.taylor@example.com',
       '0900000006',
       '123 Birch St, Shelbyville',
       '1992-04-18',
       '2023-08-25'
    WHERE NOT EXISTS (SELECT 1 FROM patient WHERE id = '223e4567-e89b-12d3-a456-426614174006');

INSERT INTO patient (id, name, username, password, email, phone, address, date_of_birth, registered_date)
SELECT '223e4567-e89b-12d3-a456-426614174007',
       'David Wilson',
       'davidw',
       '123456',
       'david.wilson@example.com',
       '0900000007',
       '456 Ash St, Capital City',
       '1975-01-11',
       '2022-10-10'
    WHERE NOT EXISTS (SELECT 1 FROM patient WHERE id = '223e4567-e89b-12d3-a456-426614174007');

INSERT INTO patient (id, name, username, password, email, phone, address, date_of_birth, registered_date)
SELECT '223e4567-e89b-12d3-a456-426614174008',
       'Laura White',
       'lauraw',
       '123456',
       'laura.white@example.com',
       '0900000008',
       '789 Palm St, Springfield',
       '1989-09-02',
       '2024-04-20'
    WHERE NOT EXISTS (SELECT 1 FROM patient WHERE id = '223e4567-e89b-12d3-a456-426614174008');

INSERT INTO patient (id, name, username, password, email, phone, address, date_of_birth, registered_date)
SELECT '223e4567-e89b-12d3-a456-426614174009',
       'James Harris',
       'jamesh',
       '123456',
       'james.harris@example.com',
       '0900000009',
       '321 Cherry St, Shelbyville',
       '1993-11-15',
       '2023-06-30'
    WHERE NOT EXISTS (SELECT 1 FROM patient WHERE id = '223e4567-e89b-12d3-a456-426614174009');

INSERT INTO patient (id, name, username, password, email, phone, address, date_of_birth, registered_date)
SELECT '223e4567-e89b-12d3-a456-426614174010',
       'Emma Moore',
       'emmam',
       '123456',
       'emma.moore@example.com',
       '0900000010',
       '654 Spruce St, Capital City',
       '1980-08-09',
       '2023-01-22'
    WHERE NOT EXISTS (SELECT 1 FROM patient WHERE id = '223e4567-e89b-12d3-a456-426614174010');

INSERT INTO patient (id, name, username, password, email, phone, address, date_of_birth, registered_date)
SELECT '223e4567-e89b-12d3-a456-426614174011',
       'Ethan Martinez',
       'ethanm',
       '123456',
       'ethan.martinez@example.com',
       '0900000011',
       '987 Redwood St, Springfield',
       '1984-05-03',
       '2024-05-12'
    WHERE NOT EXISTS (SELECT 1 FROM patient WHERE id = '223e4567-e89b-12d3-a456-426614174011');

INSERT INTO patient (id, name, username, password, email, phone, address, date_of_birth, registered_date)
SELECT '223e4567-e89b-12d3-a456-426614174012',
       'Sophia Clark',
       'sophiac',
       '123456',
       'sophia.clark@example.com',
       '0900000012',
       '123 Hickory St, Shelbyville',
       '1991-12-25',
       '2022-11-11'
    WHERE NOT EXISTS (SELECT 1 FROM patient WHERE id = '223e4567-e89b-12d3-a456-426614174012');

INSERT INTO patient (id, name, username, password, email, phone, address, date_of_birth, registered_date)
SELECT '223e4567-e89b-12d3-a456-426614174013',
       'Daniel Lewis',
       'daniell',
       '123456',
       'daniel.lewis@example.com',
       '0900000013',
       '456 Cypress St, Capital City',
       '1976-06-08',
       '2023-09-19'
    WHERE NOT EXISTS (SELECT 1 FROM patient WHERE id = '223e4567-e89b-12d3-a456-426614174013');

INSERT INTO patient (id, name, username, password, email, phone, address, date_of_birth, registered_date)
SELECT '223e4567-e89b-12d3-a456-426614174014',
       'Isabella Walker',
       'isabellaw',
       '123456',
       'isabella.walker@example.com',
       '0900000014',
       '789 Willow St, Springfield',
       '1987-10-17',
       '2024-03-29'
    WHERE NOT EXISTS (SELECT 1 FROM patient WHERE id = '223e4567-e89b-12d3-a456-426614174014');
