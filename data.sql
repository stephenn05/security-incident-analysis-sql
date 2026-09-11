-- Создание таблицы инцидентов информационной безопасности

CREATE TABLE security_incidents (
    incident_id INT PRIMARY KEY,
    incident_date DATE,
    threat_type VARCHAR(50),
    severity VARCHAR(20),
    affected_system VARCHAR(50),
    source_ip VARCHAR(20),
    risk_score INT
);

-- Заполнение таблицы учебными данными

INSERT INTO security_incidents VALUES
(1, '2026-01-05', 'Phishing', 'High', 'Email Server', '192.168.1.15', 85),
(2, '2026-01-08', 'Malware', 'Critical', 'Workstation', '10.10.2.31', 95),
(3, '2026-01-12', 'Brute Force', 'Medium', 'VPN Gateway', '172.16.0.21', 60),
(4, '2026-01-15', 'Phishing', 'Medium', 'Email Server', '192.168.1.18', 65),
(5, '2026-01-19', 'Ransomware', 'Critical', 'File Server', '10.10.3.14', 98),
(6, '2026-01-22', 'Data Leak', 'High', 'Database', '172.16.1.12', 88),
(7, '2026-02-02', 'Brute Force', 'High', 'VPN Gateway', '172.16.0.22', 78),
(8, '2026-02-06', 'Malware', 'High', 'Workstation', '10.10.2.45', 82),
(9, '2026-02-10', 'Phishing', 'Low', 'Email Server', '192.168.1.25', 40),
(10, '2026-02-14', 'Ransomware', 'Critical', 'File Server', '10.10.3.15', 99),
(11, '2026-02-18', 'Data Leak', 'High', 'Database', '172.16.1.14', 90),
(12, '2026-02-21', 'Brute Force', 'Medium', 'VPN Gateway', '172.16.0.27', 55),
(13, '2026-03-01', 'Phishing', 'High', 'Email Server', '192.168.1.31', 80),
(14, '2026-03-05', 'Malware', 'Medium', 'Workstation', '10.10.2.52', 68),
(15, '2026-03-09', 'Ransomware', 'Critical', 'File Server', '10.10.3.19', 97),
(16, '2026-03-12', 'Data Leak', 'Medium', 'Database', '172.16.1.17', 72),
(17, '2026-03-16', 'Phishing', 'Medium', 'Email Server', '192.168.1.36', 62),
(18, '2026-03-20', 'Brute Force', 'High', 'VPN Gateway', '172.16.0.30', 75),
(19, '2026-03-24', 'Malware', 'High', 'Workstation', '10.10.2.61', 84),
(20, '2026-03-28', 'Data Leak', 'Critical', 'Database', '172.16.1.21', 93);
