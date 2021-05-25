CREATE TABLE IF NOT EXISTS jobs(
  id int NOT NULL primary key AUTO_INCREMENT COMMENT 'Primary Key',
  createdAt DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT 'Time Created',
  updatedAt DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Last Update',
  name VARCHAR (255) COMMENT 'Job Name',
  description VARCHAR (255) COMMENT 'Job Description',
  budget DECIMAL (10, 2) COMMENT 'Budget for Job'
);
CREATE TABLE IF NOT EXISTS contractors(
  id int NOT NULL primary key AUTO_INCREMENT COMMENT 'Primary Key',
  createdAt DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT 'Time Created',
  updatedAt DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Last Update',
  name VARCHAR (255) COMMENT 'Contractor Name'
);
CREATE TABLE IF NOT EXISTS job_contractors(
  id int NOT NULL primary key AUTO_INCREMENT COMMENT 'Primary Key',
  createdAt DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT 'Time Created',
  updatedAt DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Last Update',
  jobId int NOT NULL COMMENT 'FK: Job Relationship',
  contractorId int NOT NULL COMMENT 'FK: Contractor Relationship'
);
INSERT INTO
  jobs (name, description, budget)
VALUES
  (
    "Window Washing",
    "Clean the exterior windows at BCW",
    250.32
  );
INSERT INTO
  jobs (name, description, budget)
VALUES
  (
    "Classroom Addition",
    "Build out two more BCW Classrooms",
    275622.83
  );
INSERT INTO
  jobs (name, description, budget)
VALUES
  (
    "Monitor Repairs",
    "Fix broken monitors at BCW",
    142.98
  );
INSERT INTO
  contractors (name)
VALUES
  ("ABC Odd Jobs Contractor");
INSERT INTO
  contractors (name)
VALUES
  ("Performance Monitors, Inc.");
INSERT INTO
  contractors (name)
VALUES
  ("Valuable Gully Cleaning Company");
INSERT INTO
  job_contractors (contractorId, jobId)
VALUES
  (3, 1);
INSERT INTO
  job_contractors (contractorId, jobId)
VALUES
  (1, 2)