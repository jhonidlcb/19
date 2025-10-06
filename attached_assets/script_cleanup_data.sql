-- Script SQL para limpiar datos de prueba
-- Este script elimina proyectos, facturas, tickets y mensajes de chat
-- ⚠️ IMPORTANTE: Ejecutar manualmente solo cuando estés seguro

-- Eliminar mensajes de chat
DELETE FROM chat_messages;

-- Eliminar tickets de soporte
DELETE FROM support_tickets;

-- Eliminar facturas de etapas de pago (stage invoices)
DELETE FROM payment_stages;

-- Eliminar facturas tradicionales
DELETE FROM invoices;

-- Eliminar transacciones financieras
DELETE FROM transactions;

-- Eliminar archivos de proyecto
DELETE FROM project_files;

-- Eliminar documentos de proyecto
DELETE FROM project_documents;

-- Eliminar notificaciones relacionadas con proyectos
DELETE FROM notifications WHERE type IN ('project', 'payment', 'ticket');

-- Eliminar proyectos
DELETE FROM projects;

-- Resetear la secuencia de boleta a 1 (opcional)
UPDATE company_billing_info SET boleta_sequence = 1 WHERE is_active = true;

-- Mensaje de confirmación
SELECT 'Datos de prueba eliminados correctamente' AS status;
