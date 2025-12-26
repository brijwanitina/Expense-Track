create database expense_tracker;
use expense_tracker;
CREATE TABLE users (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    username VARCHAR(100) NOT NULL,
    email VARCHAR(150) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    phone VARCHAR(15),

    created_at TIMESTAMP default CURRENT_TIMESTAMP,
	updated_at TIMESTAMP default CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	active_yn INT DEFAULT 1
);
CREATE TABLE categories (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    user_id INT,
    description VARCHAR(255),
    icon_url VARCHAR(255),

    transaction_type ENUM('INCOME','EXPENSE') NOT NULL,
    created_at TIMESTAMP default CURRENT_TIMESTAMP,
	updated_at TIMESTAMP default CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	active_yn INT DEFAULT 1,

        FOREIGN KEY (user_id)
        REFERENCES users(id)
        ON DELETE CASCADE
);
CREATE TABLE expenses (
    id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT NOT NULL,
    category_id INT NOT NULL,

    description VARCHAR(255),
    notes VARCHAR(500),
    amount DECIMAL(10,2) NOT NULL,
    date_of_transaction DATE NOT NULL,

    created_at TIMESTAMP default CURRENT_TIMESTAMP,
	updated_at TIMESTAMP default CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	active_yn INT DEFAULT 1,

        FOREIGN KEY (user_id)
        REFERENCES users(id) ON DELETE CASCADE,

        FOREIGN KEY (category_id)
        REFERENCES categories(id) ON DELETE CASCADE
);

INSERT INTO users (name,username, email, password, phone, active_yn)
VALUES (
  'Tinnieee',
  'Tinaa',
  'tinnieee@example.com',
  'password123',
  '9876543210',
  TRUE
);
INSERT INTO categories
(name, user_id, description, icon_url, transaction_type, active_yn)
VALUES
(
  'Food',
  1,
  'Daily food and snacks expenses',
  'https://cdn.example.com/icons/food.png',
  'EXPENSE',
  1
),
(
  'Salary',
  1,
  'Monthly salary income',
  'https://cdn.example.com/icons/salary.png',
  'INCOME',
  1
);

INSERT INTO expenses
(user_id, category_id, description, notes, amount, date_of_transaction)
VALUES
  (1, 1, 'Lunch', 'College canteen', 120.50, '2025-01-10'),
  (1, 2, 'Bus Ticket', 'Daily commute', 45.00, '2025-01-11'),
  (1, 1, 'Dinner', 'Food with friends', 250.75, '2025-01-12');




