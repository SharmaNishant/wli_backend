CREATE TABLE survey_results
(
    id int AUTO_INCREMENT,
    email VARCHAR(100) NOT NULL,
    name VARCHAR(64) NOT NULL,
    age int(100) NOT NULL,
    work_preference VARCHAR(100) NOT NULL,
    lead_preference VARCHAR(100) NOT NULL,
    project_preferences VARCHAR(100) NOT NULL,
    challenge_preference VARCHAR(100) NOT NULL,
    education VARCHAR(100) NOT NULL,
    subject VARCHAR(100) NOT NULL,
    career_plan VARCHAR(100) NOT NULL,
    subjects_of_interest VARCHAR(300) NOT NULL,
    residency VARCHAR(64) NOT NULL,
    preferred_residency VARCHAR(192) NOT NULL,
    water_thoughts VARCHAR(1000) NOT NULL,
    career_thoughts VARCHAR(1000) NOT NULL,
    PRIMARY KEY(id)
);

