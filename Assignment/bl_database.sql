CREATE SCHEMA `bl_database` ;

CREATE TABLE `bl_database`.`user_details` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `email_id` VARCHAR(45) NULL,
  `first_name` VARCHAR(45) NULL,
  `last_name` VARCHAR(45) NULL,
  `password` VARCHAR(45) NULL,
  `contact_number` BIGINT(10) NULL,
  `creator_stamp` TIMESTAMP(6) NULL,
  PRIMARY KEY (`id`));
use bl_database;
show tables;
CREATE TABLE `bl_database`.`hired_candidate` (
  `id` INT NOT NULL,
  `first_name` VARCHAR(45) NULL,
  `middle_name` VARCHAR(45) NULL,
  `last_name` VARCHAR(45) NULL,
  `email_id` VARCHAR(45) NULL,
  `hired_city` VARCHAR(45) NULL,
  `hired_date` DATE NULL,
  `mobile_number` BIGINT(10) NULL,
  `permanent_pincode` VARCHAR(45) NULL,
  `hired_lab` VARCHAR(45) NULL,
  `Attitude` VARCHAR(45) NULL,
  `communication_remark` VARCHAR(45) NULL,
  `knowledge_remark` VARCHAR(45) NULL,
  `aggregate_remark` VARCHAR(45) NULL,
  `status` VARCHAR(45) NULL,
  `creator_stamp` TIMESTAMP(6) NULL,
  `creator_user` VARCHAR(45) NULL,
  PRIMARY KEY (`id`));
  
CREATE TABLE `bl_database`.`fellowship_candidate` (
  `id` INT NOT NULL,
  `first_name` VARCHAR(45) NULL,
  `middle_name` VARCHAR(45) NULL,
  `last_name` VARCHAR(45) NULL,
  `email_id` VARCHAR(45) NULL,
  `hired_city` VARCHAR(45) NULL,
  `degree` VARCHAR(45) NULL,
  `hired_date` DATE NULL,
  `mobile_number` BIGINT(10) NULL,
  `permanent_pincode` VARCHAR(45) NULL,
  `hired_lab` VARCHAR(45) NULL,
  `Attitude` VARCHAR(45) NULL,
  `communication_remark` VARCHAR(45) NULL,
  `knowledge_remark` VARCHAR(45) NULL,
  `aggregate_remark` VARCHAR(45) NULL,
  `status` VARCHAR(45) NULL,
  `creator_stamp` TIMESTAMP(6) NULL,
  `creator_user` VARCHAR(45) NULL,
  `birth_date` DATE NULL,
  `is_birth_date_verified` TINYINT NULL,
  `parent_name` VARCHAR(45) NULL,
  `parent_occupation` VARCHAR(45) NULL,
  `parent_mobile_number` BIGINT(10) NULL,
  `parent_annual_salary` DOUBLE NULL,
  `local_address` VARCHAR(45) NULL,
  `permanent_address` VARCHAR(45) NULL,
  `photo_path` VARCHAR(45) NULL,
  `joining_date` DATE NULL,
  `candidate_status` VARCHAR(45) NULL,
  `personal_information` VARCHAR(45) NULL,
  `bank_information` VARCHAR(45) NULL,
  `educational_information` VARCHAR(45) NULL,
  `document_status` TINYINT NULL,
  `remark` VARCHAR(45) NULL,
  PRIMARY KEY (`id`));
  
  CREATE TABLE `bl_database`.`candidate_bank_details` (
  `id` INT NOT NULL,
  `candidate_id` INT NULL,
  `name` VARCHAR(45) NULL,
  `account_number` BIGINT(20) NULL,
  `is_account_number_verified` TINYINT NULL,
  `ifsc_code` BIGINT(10) NULL,
  `is_ifsc_code_verified` TINYINT NULL,
  `pan_number` BIGINT(10) NULL,
  `is_pan_number_verified` TINYINT NULL,
  `aadhaar_number` BIGINT(20) NULL,
  `is_aadhaar_number_verified` TINYINT NULL,
   `creator_stamp` TIMESTAMP(6) NULL,
   `creator_user` VARCHAR(45) NULL,
  PRIMARY KEY (`id`),
  FOREIGN KEY (`candidate_id`) REFERENCES `fellowship_candidate`(`id`)
  );
  
  
  CREATE TABLE `bl_database`.`candidate_qualification` (
  `id` INT NOT NULL,
  `candidate_id` INT NULL,
  `diploma` VARCHAR(45) NULL,
  `degree_name` VARCHAR(45) NULL,
  `is_degree_name_verfied` TINYINT NULL,
  `employee_decipline` VARCHAR(45) NULL,
  `is_employee_decipline_verified` TINYINT NULL,
  `passing_year` INT NULL,
  `is_passing_year_verified` TINYINT NULL,
  `aggr_per` DOUBLE NULL,
  `final_year_per` DOUBLE NULL,
  `candidateis_fnal_year_per_verified` DOUBLE NULL,
  `training_institute` VARCHAR(45) NULL,
  `is_training_institute_verified` TINYINT NULL,
  `training_duration_month` INT NULL,
  `is_training_duration_month_verified` TINYINT NULL,
  `other_training` VARCHAR(45) NULL,
  `is_other_training_verified` TINYINT NULL,
  `creator_stamp` TIMESTAMP(6) NULL,
   `creator_user` VARCHAR(45) NULL,
  PRIMARY KEY (`id`),
    FOREIGN KEY (`candidate_id`)
    REFERENCES `bl_database`.`fellowship_candidate` (`id`));
    
CREATE TABLE `bl_database`.`candidate_documents` (
  `id` INT NOT NULL,
  `candidate_id` INT NULL,
  `doc_type` VARCHAR(45) NULL,
  `doc_path_status` VARCHAR(45) NULL,
  `creator_stamp` TIMESTAMP(6) NULL,
     `creator_user` VARCHAR(45) NULL,
    PRIMARY KEY (`id`),
    FOREIGN KEY (`candidate_id`)
    REFERENCES `bl_database`.`fellowship_candidate` (`id`));

CREATE TABLE `bl_database`.`company` (
  `id` INT NOT NULL,
  `name` VARCHAR(45) NULL,
  `address` VARCHAR(45) NULL,
  `location` VARCHAR(45) NULL,
  `status` VARCHAR(45) NULL,
  `creator_stamp` TIMESTAMP(6) NULL,
   `creator_user` VARCHAR(45) NULL,
  PRIMARY KEY (`id`));
  
CREATE TABLE `bl_database`.`app_parameters` (
  `id` INT NOT NULL,
  `key_type` VARCHAR(45) NULL,
  `key_value` VARCHAR(45) NULL,
  `key_text` VARCHAR(45) NULL,
  `cur_status` VARCHAR(45) NULL,
  `lastupd_user` VARCHAR(45) NULL,
  `lastupd_stamp` VARCHAR(45) NULL,
  `seq_num` INT NULL,
  `creator_stamp` TIMESTAMP(6) NULL,
  `creator_user` VARCHAR(45) NULL,
  PRIMARY KEY (`id`));
  
  show tables;
  
  CREATE TABLE `bl_database`.`tech_stack` (
  `id` INT NOT NULL,
  `tech_name` VARCHAR(45) NULL,
  `image_path` VARCHAR(45) NULL,
  `framework` VARCHAR(45) NULL,
   `cur_status` VARCHAR(45) NULL,
  `creator_stamp` TIMESTAMP(6) NULL,
  `creator_user` VARCHAR(45) NULL,
  PRIMARY KEY (`id`));

  CREATE TABLE `bl_database`.`tech_type` (
  `id` INT NOT NULL,
  `type_name` VARCHAR(45) NULL,
   `cur_status` VARCHAR(45) NULL,
  `creator_stamp` TIMESTAMP(6) NULL,
  `creator_user` VARCHAR(45) NULL,
  PRIMARY KEY (`id`));

  CREATE TABLE `bl_database`.`maker_program` (
  `id` INT NOT NULL,
  `program_name` VARCHAR(45) NULL,
  `program_type` VARCHAR(45) NULL,
  `program_link` VARCHAR(200) NULL,
  `tech_stack_id` INT NULL,
  `tech_type_id` INT NULL,
  `is_program_approved` TINYINT NULL,
  `description` VARCHAR(45) NULL,
  `status` VARCHAR(45) NULL,
  `creator_stamp` TIMESTAMP(6) NULL,
  `creator_user` VARCHAR(45) NULL,
    PRIMARY KEY (`id`),
    FOREIGN KEY (`tech_stack_id`)
    REFERENCES `bl_database`.`tech_stack` (`id`),
    FOREIGN KEY (`tech_type_id`)
    REFERENCES `bl_database`.`tech_type` (`id`));
  
  CREATE TABLE `bl_database`.`lab` (
  `id` INT NOT NULL,
  `name` VARCHAR(45) NULL,
  `location` VARCHAR(45) NULL,
  `address` VARCHAR(45) NULL,
  `status` VARCHAR(45) NULL,
  `creator_stamp` TIMESTAMP(6) NULL,
  `creator_user` VARCHAR(45) NULL,
  PRIMARY KEY (`id`));
  
  CREATE TABLE `bl_database`.`lab_threshold` (
  `id` INT NOT NULL,
  `lab_id` INT NULL,
  `lab_capacity` INT NULL,
  `lead_threshold` INT NULL,
  `ideation_engg_threshold` INT NULL,
  `buddy_engg_threshold` INT NULL,
   `status` VARCHAR(45) NULL,
  `creator_stamp` TIMESTAMP(6) NULL,
  `creator_user` VARCHAR(45) NULL,
  PRIMARY KEY (`id`),
   FOREIGN KEY (`lab_id`)
    REFERENCES `bl_database`.`lab` (`id`));

CREATE TABLE `bl_database`.`mentor` (
  `id` INT NOT NULL,
  `name` VARCHAR(45) NULL,
  `mentor_type` VARCHAR(45) NULL,
  `lab_id` INT NULL,
   `status` VARCHAR(45) NULL,
  `creator_stamp` TIMESTAMP(6) NULL,
  `creator_user` VARCHAR(45) NULL,
  PRIMARY KEY (`id`),
   FOREIGN KEY (`lab_id`)
    REFERENCES `bl_database`.`lab` (`id`));

CREATE TABLE `bl_database`.`mentor_ideation_map` (
  `id` INT NOT NULL,
  `mentor_id` INT NULL,
  `parent_id` INT NULL,
   `status` VARCHAR(45) NULL,
  `creator_stamp` TIMESTAMP(6) NULL,
  `creator_user` VARCHAR(45) NULL,
  PRIMARY KEY (`id`),
   FOREIGN KEY (`mentor_id`)
    REFERENCES `bl_database`.`lab` (`id`));

CREATE TABLE `bl_database`.`mentor_tech_stack` (
  `id` INT NOT NULL,
  `mentor_id` INT NULL,
  `tech_stack_id` INT NULL,
  `datetime` DATETIME NULL,
  `status` VARCHAR(45) NULL,
  `creator_stamp` TIMESTAMP(6) NULL,
  `creator_user` VARCHAR(45) NULL,
  PRIMARY KEY (`id`),
  FOREIGN KEY (`mentor_id`)
REFERENCES `bl_database`.`mentor` (`id`),
FOREIGN KEY (`tech_stack_id`)
REFERENCES `bl_database`.`tech_stack` (`id`));

CREATE TABLE `bl_database`.`company_requirement` (
  `id` INT NOT NULL,
  `company_id` INT NULL,
  `requested_month` DATE NULL,
  `city` VARCHAR(45) NULL,
  `is_doc_verification` TINYINT NULL,
  `requirement_doc_path` VARCHAR(45) NULL,
  `no_of_engg` INT NULL,
  `special_remark` VARCHAR(45) NULL,
  `tech_stack_id` INT NULL,
  `tech_type_id` INT NULL,
  `maker_program_id` INT NULL,
  `lead_id` INT NULL,
  `ideation_engg_id` INT NULL,
  `buddy_engg_id` INT NULL,
   `status` VARCHAR(45) NULL,
  `creator_stamp` TIMESTAMP(6) NULL,
  `creator_user` VARCHAR(45) NULL,
	PRIMARY KEY (`id`),
	FOREIGN KEY (`company_id`)
    REFERENCES `bl_database`.`company` (`id`),
    FOREIGN KEY (`tech_stack_id`)
    REFERENCES `bl_database`.`tech_stack` (`id`),
    FOREIGN KEY (`tech_type_id`)
    REFERENCES `bl_database`.`tech_type` (`id`),
    FOREIGN KEY (`maker_program_id`)
    REFERENCES `bl_database`.`maker_program` (`id`),
    FOREIGN KEY (`lead_id`)
    REFERENCES `bl_database`.`mentor` (`id`),
    FOREIGN KEY (`ideation_engg_id`)
    REFERENCES `bl_database`.`mentor_ideation_map` (`id`)
  );

CREATE TABLE `bl_database`.`candidate_stack_assignment` (
  `id` INT NOT NULL,
  `requirement_id` INT NULL,
  `candidate_id` INT NULL,
  `assign_date` DATE NULL,
  `complete_date` DATE NULL,
    `status` VARCHAR(45) NULL,
	`creator_stamp` TIMESTAMP(6) NULL,
	`creator_user` VARCHAR(45) NULL,
	PRIMARY KEY (`id`), 
    FOREIGN KEY (`requirement_id`)
    REFERENCES `bl_database`.`company_requirement` (`id`),
    FOREIGN KEY (`candidate_id`)
    REFERENCES `bl_database`.`fellowship_candidate` (`id`)
  );

show tables;
