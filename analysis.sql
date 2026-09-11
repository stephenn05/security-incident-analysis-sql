-- =====================================================
-- SECURITY INCIDENT ANALYSIS
-- Аналитический анализ инцидентов информационной безопасности
-- =====================================================


-- 1. Общее количество инцидентов

SELECT COUNT(*) AS total_incidents
FROM security_incidents;


-- 2. Распределение инцидентов по типам угроз

SELECT
    threat_type,
    COUNT(*) AS incident_count
FROM security_incidents
GROUP BY threat_type
ORDER BY incident_count DESC;


-- 3. Распределение по уровню критичности

SELECT
    severity,
    COUNT(*) AS incident_count
FROM security_incidents
GROUP BY severity
ORDER BY incident_count DESC;


-- 4. Средний показатель риска по типам угроз

SELECT
    threat_type,
    ROUND(AVG(risk_score), 2) AS average_risk
FROM security_incidents
GROUP BY threat_type
ORDER BY average_risk DESC;


-- 5. Наиболее критичные инциденты

SELECT
    incident_id,
    incident_date,
    threat_type,
    affected_system,
    risk_score
FROM security_incidents
WHERE severity = 'Critical'
ORDER BY risk_score DESC;


-- 6. Анализ затронутых систем

SELECT
    affected_system,
    COUNT(*) AS incident_count,
    ROUND(AVG(risk_score), 2) AS average_risk
FROM security_incidents
GROUP BY affected_system
ORDER BY average_risk DESC;


-- 7. Анализ инцидентов по месяцам

SELECT
    MONTH(incident_date) AS month_number,
    COUNT(*) AS incident_count,
    ROUND(AVG(risk_score), 2) AS average_risk
FROM security_incidents
GROUP BY MONTH(incident_date)
ORDER BY month_number;


-- 8. Инциденты с высоким уровнем риска

SELECT
    incident_id,
    incident_date,
    threat_type,
    severity,
    affected_system,
    risk_score
FROM security_incidents
WHERE risk_score >= 85
ORDER BY risk_score DESC;


-- 9. Поиск наиболее распространённого типа угрозы

SELECT TOP 1
    threat_type,
    COUNT(*) AS incident_count
FROM security_incidents
GROUP BY threat_type
ORDER BY incident_count DESC;


-- 10. Общий средний уровень риска

SELECT
    ROUND(AVG(risk_score), 2) AS average_risk
FROM security_incidents;
