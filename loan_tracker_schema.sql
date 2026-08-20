-- 1. Create the Loan Applicants Table
CREATE TABLE loan_applicants (
    applicant_id SERIAL PRIMARY KEY,
    full_name VARCHAR(100) NOT NULL,
    monthly_income DECIMAL(12, 2) NOT NULL,
    credit_score INT CHECK (credit_score BETWEEN 300 AND 850)
);

-- 2. Create the Loan Requests Ledger Table
CREATE TABLE loan_requests (
    loan_id SERIAL PRIMARY KEY,
    applicant_id INT REFERENCES loan_applicants(applicant_id) ON DELETE CASCADE,
    loan_type VARCHAR(20) CHECK (loan_type IN ('Personal', 'Business', 'Mortgage')),
    requested_amount DECIMAL(15, 2) NOT NULL,
    loan_status VARCHAR(15) DEFAULT 'Pending' CHECK (loan_status IN ('Pending', 'Approved', 'Rejected')),
    application_date DATE DEFAULT CURRENT_DATE
);

-- 3. Insert Analytical Test Profiles
INSERT INTO loan_applicants (full_name, monthly_income, credit_score) VALUES
('Chikondi Banda', 750000.00, 720), -- Strong credit profile
('Memory Phiri', 320000.00, 510),    -- High-risk credit profile
('Limbani Kamwendo', 1200000.00, 680);

-- 4. Insert Loan Status Pipeline Items
INSERT INTO loan_requests (applicant_id, loan_type, requested_amount, loan_status) VALUES
(1, 'Personal', 1500000.00, 'Approved'),
(2, 'Business', 4000000.00, 'Rejected'),
(3, 'Mortgage', 15000000.00, 'Pending');
