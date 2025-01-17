/*
  Warnings:

  - You are about to drop the column `fieldURL` on the `Attachment` table. All the data in the column will be lost.
  - You are about to drop the column `ProfilePictureUrl` on the `User` table. All the data in the column will be lost.
  - Added the required column `fileURL` to the `Attachment` table without a default value. This is not possible if the table is not empty.
  - Made the column `title` on table `Task` required. This step will fail if there are existing NULL values in that column.

*/
-- AlterTable
ALTER TABLE "Attachment" DROP COLUMN "fieldURL",
ADD COLUMN     "fileURL" TEXT NOT NULL,
ALTER COLUMN "fileName" DROP NOT NULL;

-- AlterTable
ALTER TABLE "Task" ALTER COLUMN "title" SET NOT NULL;

-- AlterTable
ALTER TABLE "User" DROP COLUMN "ProfilePictureUrl",
ADD COLUMN     "profilePictureUrl" TEXT;
