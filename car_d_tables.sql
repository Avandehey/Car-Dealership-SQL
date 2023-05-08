CREATE TABLE "invoice"(
    "invoice_id" SERIAL NOT NULL,
    "date" DATE NOT NULL,
    "sales_rep_id" INTEGER NOT NULL,
    "customer_id" INTEGER NOT NULL,
    "vehicle_id" INTEGER NOT NULL,
    "purchase_price" BIGINT NOT NULL
);
ALTER TABLE
    "invoice" ADD PRIMARY KEY("invoice_id");
CREATE TABLE "service_ticket"(
    "ticket_id" SERIAL NOT NULL,
    "vehicle_id" INTEGER NOT NULL,
    "service_tech_id" INTEGER NOT NULL,
    "customer_id" INTEGER NOT NULL,
    "date" DATE NOT NULL,
    "cost" BIGINT NOT NULL
);
ALTER TABLE
    "service_ticket" ADD PRIMARY KEY("ticket_id");
CREATE TABLE "sales_rep"(
    "rep_id" SERIAL NOT NULL,
    "first_name" VARCHAR(25) NOT NULL,
    "last_name" VARCHAR(25) NOT NULL,
    "email" VARCHAR(100) NOT NULL,
    "phone_number" VARCHAR(20) NOT NULL,
    "comission_rate" BIGINT NOT NULL
);
ALTER TABLE
    "sales_rep" ADD PRIMARY KEY("rep_id");
CREATE TABLE "service_tech"(
    "tech_id" SERIAL NOT NULL,
    "first_name" VARCHAR(25) NOT NULL,
    "last_name" VARCHAR(25) NOT NULL,
    "age" INTEGER NULL,
    "gender" VARCHAR(10) NULL,
    "tech_level" VARCHAR(25) NOT NULL,
    "hourly_rate" BIGINT NOT NULL
);
ALTER TABLE
    "service_tech" ADD PRIMARY KEY("tech_id");
CREATE TABLE "vehicle"(
    "vehicle_id" SERIAL NOT NULL,
    "make" VARCHAR(20) NOT NULL,
    "model" VARCHAR(20) NOT NULL,
    "trim" VARCHAR(20) NOT NULL,
    "year" INTEGER NOT NULL,
    "color" VARCHAR(20) NOT NULL,
    "msrp" BIGINT NOT NULL,
    "miles" BIGINT NOT NULL
);
ALTER TABLE
    "vehicle" ADD PRIMARY KEY("vehicle_id");
CREATE TABLE "customer"(
    "customer_id" SERIAL NOT NULL,
    "first_name" VARCHAR(25) NOT NULL,
    "last_name" VARCHAR(25) NOT NULL,
    "age" INTEGER NULL,
    "gender" VARCHAR(10) NULL,
    "email" VARCHAR(100) NULL,
    "address" VARCHAR(200) NULL,
    "phone_number" VARCHAR(20) NOT NULL,
    "yearly_income" BIGINT NOT NULL,
    "rep_id" INTEGER NOT NULL
);
ALTER TABLE
    "customer" ADD PRIMARY KEY("customer_id");
COMMENT
ON COLUMN
    "customer"."customer_id" IS 'This is the customer storage table';
ALTER TABLE
    "invoice" ADD CONSTRAINT "invoice_vehicle_id_foreign" FOREIGN KEY("vehicle_id") REFERENCES "vehicle"("vehicle_id");
ALTER TABLE
    "service_ticket" ADD CONSTRAINT "service_ticket_vehicle_id_foreign" FOREIGN KEY("vehicle_id") REFERENCES "vehicle"("vehicle_id");
ALTER TABLE
    "customer" ADD CONSTRAINT "customer_rep_id_foreign" FOREIGN KEY("rep_id") REFERENCES "sales_rep"("rep_id");
ALTER TABLE
    "service_ticket" ADD CONSTRAINT "service_ticket_customer_id_foreign" FOREIGN KEY("customer_id") REFERENCES "customer"("customer_id");
ALTER TABLE
    "invoice" ADD CONSTRAINT "invoice_customer_id_foreign" FOREIGN KEY("customer_id") REFERENCES "customer"("customer_id");
ALTER TABLE
    "invoice" ADD CONSTRAINT "invoice_sales_rep_id_foreign" FOREIGN KEY("sales_rep_id") REFERENCES "sales_rep"("rep_id");
ALTER TABLE
    "service_ticket" ADD CONSTRAINT "service_ticket_service_tech_id_foreign" FOREIGN KEY("service_tech_id") REFERENCES "service_tech"("tech_id");