CREATE OR REPLACE FUNCTION insert_invoice(date_val DATE, sales_rep_id_val INTEGER, customer_id_val INTEGER, vehicle_id_val INTEGER, purchase_price_val BIGINT)
RETURNS VOID AS $$
BEGIN
    INSERT INTO invoice (date, sales_rep_id, customer_id, vehicle_id, purchase_price)
    VALUES (date_val, sales_rep_id_val, customer_id_val, vehicle_id_val, purchase_price_val);
END;
$$ LANGUAGE PLPGSQL;

CREATE OR REPLACE FUNCTION insert_service_ticket(vehicle_id_val INTEGER, service_tech_id_val INTEGER, customer_id_val INTEGER, date_val DATE, cost_val BIGINT)
RETURNS VOID AS $$
BEGIN
    INSERT INTO service_ticket (vehicle_id, service_tech_id, customer_id, date, cost)
    VALUES (vehicle_id_val, service_tech_id_val, customer_id_val, date_val, cost_val);
END;
$$ LANGUAGE PLPGSQL;


SELECT insert_invoice('2023-05-07', 1, 2, 3, 10000);

SELECT insert_service_ticket(3, 4, 2, '2023-05-07', 500);