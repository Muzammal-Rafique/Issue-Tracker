/*
  Warnings:

  - You are about to drop the column `assignToUserId` on the `Issue` table. All the data in the column will be lost.
  - The values [CLOSE] on the enum `Issue_status` will be removed. If these variants are still used in the database, this will fail.

*/
-- DropForeignKey
ALTER TABLE `Account` DROP FOREIGN KEY `Account_userId_fkey`;

-- DropForeignKey
ALTER TABLE `Issue` DROP FOREIGN KEY `Issue_assignToUserId_fkey`;

-- DropForeignKey
ALTER TABLE `Session` DROP FOREIGN KEY `Session_userId_fkey`;

-- AlterTable
ALTER TABLE `Issue` DROP COLUMN `assignToUserId`,
    ADD COLUMN `assignedToUserId` VARCHAR(255) NULL,
    MODIFY `status` ENUM('OPEN', 'IN_PROGRESS', 'CLOSED') NOT NULL DEFAULT 'OPEN';
