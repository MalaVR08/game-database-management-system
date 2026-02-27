# game-database-management-system


# 🎮 Game Database Management System

## 📌 Project Overview

This project is a **MySQL-based relational database system** designed for managing data in a Role-Playing Game (RPG) environment. The database models player accounts, characters, regions, items, creeps (enemies), and their interactions using structured SQL queries with proper primary and foreign key relationships.

The system ensures data integrity, normalization, and relationship mapping between different game entities.

---

## 🗂️ Database Features

* 👤 Account Management (Player details and subscription info)
* 🧙 Character Management (Level, experience, mana, hit points)
* 🌍 Region Management (Climate, precipitation, foliage details)
* ⚔️ Item System (Weapons and defense items with damage values)
* 🐉 Creep System (Enemy stats and regional spawning)
* 🔄 Encounter Tracking (Character and creep interactions)
* 🔗 Foreign Key Constraints for relational integrity

---

## 🛠️ Technologies Used

* MySQL
* SQL (DDL & DML Commands)
* Relational Database Design
* Entity Relationships
* Primary & Foreign Key Constraints

---

## 🧩 Database Tables

1. **Account** – Stores player account and subscriber details
2. **Character1** – Stores character stats and progress
3. **Region** – Stores environmental information
4. **Item** – Stores item details
5. **ItemInstantiation** – Links items to characters
6. **Creep** – Stores enemy information
7. **CreepInstantiation** – Maps creeps to regions
8. **RanInto** – Tracks character encounters with creeps

---

## 🔗 Relationships Implemented

* One Account → Many Characters
* One Region → Many Characters
* One Region → Many Creeps
* One Character → Many Items
* Many-to-Many between Characters and Creeps (via RanInto table)

---

## 🎯 Learning Objectives

* Understanding relational database design
* Implementing foreign key constraints
* Managing one-to-many and many-to-many relationships
* Handling SQL errors and data type optimization
* Designing normalized schemas

---

## 🚀 How to Run

1. Create the database using:

   ```sql
   CREATE DATABASE game;
   USE game;
   ```
2. Execute all CREATE TABLE statements.
3. Run INSERT queries to populate the tables.
4. Use SELECT queries to verify data.

---

## 📚 Academic Purpose

This project was developed as part of a Database Management System academic exercise to demonstrate structured schema design and relational integrity in a gaming environment.

