CREATE TABLE "orders" (
    "id" TEXT,
    "order" TEXT NOT NULL CHECK("order" in ('Buy', 'Sell')),
    "type" TEXT NOT NULL CHECK(type IN ('Add', 'Remove')),
    "price" NUMERIC NOT NULL CHECK("price" > 0),
    "quantity" INTEGER NOT NULL CHECK("quantity" > 0)
);

INSERT INTO "orders"("id", "order", "type", "price", "quantity") VALUES ('001', 'Buy', 'Add', 20.00, 100);
INSERT INTO "orders"("id", "order", "type", "price", "quantity") VALUES ('002', 'Sell', 'Add', 25.00, 200);
INSERT INTO "orders"("id", "order", "type", "price", "quantity") VALUES ('003', 'Buy', 'Add', 23.00, 50);
INSERT INTO "orders"("id", "order", "type", "price", "quantity") VALUES ('004', 'Buy', 'Add', 23.00, 70);
INSERT INTO "orders"("id", "order", "type", "price", "quantity") VALUES ('003', 'Buy', 'Remove', 23.00, 50);
INSERT INTO "orders"("id", "order", "type", "price", "quantity") VALUES ('005', 'Sell', 'Add', 28.00, 100);