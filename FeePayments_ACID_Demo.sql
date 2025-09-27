START TRANSACTION;
INSERT INTO FeePayments (payment_id, student_name, amount, payment_date) VALUES
  (1, 'Ashish', 5000.00, '2024-06-01'),
  (2, 'Smaran', 4500.00, '2024-06-02'),
  (3, 'Vaibhav', 5500.00, '2024-06-03');
COMMIT;
SELECT payment_id, student_name, amount, payment_date FROM FeePayments;
