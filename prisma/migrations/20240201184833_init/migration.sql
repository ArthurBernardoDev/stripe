-- CreateTable
CREATE TABLE "User" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "email" TEXT NOT NULL,
    "password" TEXT NOT NULL,
    "name" TEXT,
    "city" TEXT,
    "state" TEXT
);

-- CreateTable
CREATE TABLE "Product" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "name" TEXT NOT NULL,
    "color" TEXT NOT NULL,
    "href" TEXT NOT NULL,
    "imageSrc" TEXT NOT NULL,
    "imageAlt" TEXT NOT NULL,
    "price" TEXT NOT NULL
);

-- CreateIndex
CREATE UNIQUE INDEX "User_email_key" ON "User"("email");
