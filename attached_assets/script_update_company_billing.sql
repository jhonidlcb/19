-- Script SQL para actualizar la tabla company_billing_info
-- Agregar campos de timbrado y boleta secuencial
-- Ejecutar manualmente en la base de datos

-- Agregar columnas para información de timbrado
ALTER TABLE company_billing_info 
ADD COLUMN IF NOT EXISTS timbrado_number VARCHAR(20),
ADD COLUMN IF NOT EXISTS vigencia_timbrado VARCHAR(20),
ADD COLUMN IF NOT EXISTS vencimiento_timbrado VARCHAR(20),
ADD COLUMN IF NOT EXISTS boleta_prefix VARCHAR(20) DEFAULT '001-001',
ADD COLUMN IF NOT EXISTS boleta_sequence INTEGER DEFAULT 1;

-- Comentarios para documentar los campos
COMMENT ON COLUMN company_billing_info.timbrado_number IS 'Número de timbrado SET Paraguay (ejemplo: 15378596)';
COMMENT ON COLUMN company_billing_info.vigencia_timbrado IS 'Fecha de inicio de vigencia del timbrado (ejemplo: 01/10/2025)';
COMMENT ON COLUMN company_billing_info.vencimiento_timbrado IS 'Fecha de vencimiento del timbrado (ejemplo: 30/09/2027)';
COMMENT ON COLUMN company_billing_info.boleta_prefix IS 'Prefijo de la boleta (ejemplo: 001-001)';
COMMENT ON COLUMN company_billing_info.boleta_sequence IS 'Número secuencial de la boleta (auto-incrementa con cada factura generada)';
