
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 04/30/2018 00:29:34
-- Generated from EDMX file: C:\Users\amohamed279\Documents\GitHub\new_core5\asp_unit5\Entity\unit5Entity.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [unit5];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------


-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[C__EFMigrationsHistory]', 'U') IS NOT NULL
    DROP TABLE [dbo].[C__EFMigrationsHistory];
GO
IF OBJECT_ID(N'[dbo].[CasulityProfiles]', 'U') IS NOT NULL
    DROP TABLE [dbo].[CasulityProfiles];
GO
IF OBJECT_ID(N'[dbo].[Complicaitons]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Complicaitons];
GO
IF OBJECT_ID(N'[dbo].[conf_by]', 'U') IS NOT NULL
    DROP TABLE [dbo].[conf_by];
GO
IF OBJECT_ID(N'[dbo].[conf_child_presentation]', 'U') IS NOT NULL
    DROP TABLE [dbo].[conf_child_presentation];
GO
IF OBJECT_ID(N'[dbo].[conf_child_state]', 'U') IS NOT NULL
    DROP TABLE [dbo].[conf_child_state];
GO
IF OBJECT_ID(N'[dbo].[conf_cs_indication]', 'U') IS NOT NULL
    DROP TABLE [dbo].[conf_cs_indication];
GO
IF OBJECT_ID(N'[dbo].[conf_degree]', 'U') IS NOT NULL
    DROP TABLE [dbo].[conf_degree];
GO
IF OBJECT_ID(N'[dbo].[conf_GynaDisorder]', 'U') IS NOT NULL
    DROP TABLE [dbo].[conf_GynaDisorder];
GO
IF OBJECT_ID(N'[dbo].[conf_Intervention]', 'U') IS NOT NULL
    DROP TABLE [dbo].[conf_Intervention];
GO
IF OBJECT_ID(N'[dbo].[conf_medicalDisorder]', 'U') IS NOT NULL
    DROP TABLE [dbo].[conf_medicalDisorder];
GO
IF OBJECT_ID(N'[dbo].[conf_medicalObestetric]', 'U') IS NOT NULL
    DROP TABLE [dbo].[conf_medicalObestetric];
GO
IF OBJECT_ID(N'[dbo].[conf_Outcome]', 'U') IS NOT NULL
    DROP TABLE [dbo].[conf_Outcome];
GO
IF OBJECT_ID(N'[dbo].[conf_Outcome_State]', 'U') IS NOT NULL
    DROP TABLE [dbo].[conf_Outcome_State];
GO
IF OBJECT_ID(N'[dbo].[conf_title]', 'U') IS NOT NULL
    DROP TABLE [dbo].[conf_title];
GO
IF OBJECT_ID(N'[dbo].[doctor_profile]', 'U') IS NOT NULL
    DROP TABLE [dbo].[doctor_profile];
GO
IF OBJECT_ID(N'[dbo].[Gynacologies]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Gynacologies];
GO
IF OBJECT_ID(N'[dbo].[NeonatalOutcomes]', 'U') IS NOT NULL
    DROP TABLE [dbo].[NeonatalOutcomes];
GO
IF OBJECT_ID(N'[dbo].[patient_diagnose]', 'U') IS NOT NULL
    DROP TABLE [dbo].[patient_diagnose];
GO
IF OBJECT_ID(N'[dbo].[patient_profile]', 'U') IS NOT NULL
    DROP TABLE [dbo].[patient_profile];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'C__EFMigrationsHistory'
CREATE TABLE [dbo].[C__EFMigrationsHistory] (
    [MigrationId] nvarchar(150)  NOT NULL,
    [ProductVersion] nvarchar(32)  NOT NULL
);
GO

-- Creating table 'CasulityProfiles'
CREATE TABLE [dbo].[CasulityProfiles] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [AddedValue] nvarchar(max)  NULL,
    [Assistants] nvarchar(max)  NULL,
    [ChildState] nvarchar(max)  NULL,
    [Complications] nvarchar(max)  NULL,
    [Days] nvarchar(max)  NULL,
    [Dynamics] nvarchar(max)  NULL,
    [Intervention] nvarchar(max)  NULL,
    [Outcome] nvarchar(max)  NULL,
    [ParityValue] nvarchar(max)  NULL,
    [Presentation] nvarchar(max)  NULL,
    [rec_date] datetime  NULL,
    [Sex] nvarchar(max)  NULL,
    [State] nvarchar(max)  NULL,
    [Supervisors] nvarchar(max)  NULL,
    [Surgeons] nvarchar(max)  NULL,
    [Weeks] nvarchar(max)  NULL,
    [Weight] nvarchar(max)  NULL,
    [ICU] nvarchar(max)  NULL,
    [patientAge] nvarchar(max)  NULL,
    [patientName] nvarchar(max)  NULL,
    [ticketId] nvarchar(max)  NULL,
    [NumberOfLivingFemale] nvarchar(max)  NOT NULL,
    [NumberOfLivingMale] nvarchar(max)  NOT NULL,
    [AdmissionDate] nvarchar(max)  NULL,
    [By] nvarchar(max)  NULL,
    [Obstetric] nvarchar(max)  NULL,
    [Disorder] nvarchar(max)  NULL,
    [AdditionalComplications] nvarchar(max)  NULL,
    [NeonatalCondition] nvarchar(max)  NULL,
    [OtherIntervention] nvarchar(max)  NULL,
    [Indications] nvarchar(max)  NULL,
    [InterventionDate] nvarchar(max)  NULL,
    [AdditionalNotes] nvarchar(max)  NULL
);
GO

-- Creating table 'Complicaitons'
CREATE TABLE [dbo].[Complicaitons] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NULL,
    [RecDate] datetime  NULL,
    [Type] nvarchar(max)  NULL
);
GO

-- Creating table 'conf_by'
CREATE TABLE [dbo].[conf_by] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [element_name] nchar(90)  NULL
);
GO

-- Creating table 'conf_child_presentation'
CREATE TABLE [dbo].[conf_child_presentation] (
    [recid] int IDENTITY(1,1) NOT NULL,
    [presentation_name] varchar(150)  NULL,
    [rec_date] datetime  NULL
);
GO

-- Creating table 'conf_child_state'
CREATE TABLE [dbo].[conf_child_state] (
    [recid] int IDENTITY(1,1) NOT NULL,
    [rec_date] datetime  NULL,
    [state_name] varchar(150)  NULL
);
GO

-- Creating table 'conf_cs_indication'
CREATE TABLE [dbo].[conf_cs_indication] (
    [recid] int IDENTITY(1,1) NOT NULL,
    [cs_indication_name] varchar(150)  NULL,
    [rec_date] datetime  NULL,
    [Type] nvarchar(max)  NULL
);
GO

-- Creating table 'conf_degree'
CREATE TABLE [dbo].[conf_degree] (
    [recid] int IDENTITY(1,1) NOT NULL,
    [degree_name] varchar(100)  NULL,
    [rec_date] datetime  NULL
);
GO

-- Creating table 'conf_GynaDisorder'
CREATE TABLE [dbo].[conf_GynaDisorder] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [element_name] nchar(100)  NULL,
    [element_type] nchar(100)  NULL
);
GO

-- Creating table 'conf_Intervention'
CREATE TABLE [dbo].[conf_Intervention] (
    [recid] int IDENTITY(1,1) NOT NULL,
    [intervention_name] varchar(150)  NULL,
    [rec_date] datetime  NULL,
    [Type] nvarchar(max)  NULL
);
GO

-- Creating table 'conf_medicalDisorder'
CREATE TABLE [dbo].[conf_medicalDisorder] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [element_name] nchar(100)  NULL
);
GO

-- Creating table 'conf_medicalObestetric'
CREATE TABLE [dbo].[conf_medicalObestetric] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [element_name] nchar(100)  NULL
);
GO

-- Creating table 'conf_Outcome'
CREATE TABLE [dbo].[conf_Outcome] (
    [recid] int IDENTITY(1,1) NOT NULL,
    [Outcome_name] varchar(150)  NULL,
    [rec_date] datetime  NULL
);
GO

-- Creating table 'conf_Outcome_State'
CREATE TABLE [dbo].[conf_Outcome_State] (
    [recid] int IDENTITY(1,1) NOT NULL,
    [rec_date] datetime  NULL,
    [state_name] varchar(150)  NULL
);
GO

-- Creating table 'conf_title'
CREATE TABLE [dbo].[conf_title] (
    [recid] int IDENTITY(1,1) NOT NULL,
    [rec_date] datetime  NULL,
    [title_name] varchar(100)  NULL
);
GO

-- Creating table 'doctor_profile'
CREATE TABLE [dbo].[doctor_profile] (
    [recid] int IDENTITY(1,1) NOT NULL,
    [doctor_bach_year] datetime  NULL,
    [doctor_birthdate] datetime  NULL,
    [doctor_degree] varchar(100)  NULL,
    [doctor_image_URL] varchar(max)  NULL,
    [doctor_MCS_year] datetime  NULL,
    [doctor_name] varchar(200)  NULL,
    [doctor_other_degrees] varchar(max)  NULL,
    [doctor_other_qualifications] varchar(max)  NULL,
    [doctor_PHD_year] datetime  NULL,
    [doctor_precense] varchar(50)  NULL,
    [doctor_title] varchar(45)  NULL,
    [record_date] datetime  NULL,
    [DoctorLocation] nvarchar(max)  NULL,
    [DoctorMail] nvarchar(max)  NULL,
    [DoctorMobile] nvarchar(max)  NULL,
    [DoctorAcademicDegree] nvarchar(max)  NULL
);
GO

-- Creating table 'Gynacologies'
CREATE TABLE [dbo].[Gynacologies] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [AddedValue] nvarchar(max)  NULL,
    [AdmissionDate] nvarchar(max)  NULL,
    [Assistants] nvarchar(max)  NULL,
    [ChildState] nvarchar(max)  NULL,
    [Complications] nvarchar(max)  NULL,
    [Days] int  NOT NULL,
    [DischargeDiagnoses] nvarchar(max)  NULL,
    [DischargeFollowupPlan] nvarchar(max)  NULL,
    [DischargeSummary] nvarchar(max)  NULL,
    [Dynamics] nvarchar(max)  NULL,
    [ICU] nvarchar(max)  NULL,
    [Intervention] nvarchar(max)  NULL,
    [NumberOfLivingFemale] int  NOT NULL,
    [NumberOfLivingMale] int  NOT NULL,
    [OperativeDate] nvarchar(max)  NULL,
    [Outcome] nvarchar(max)  NULL,
    [ParityValue] nvarchar(max)  NULL,
    [Presentation] nvarchar(max)  NULL,
    [RecDate] datetime  NULL,
    [Sex] nvarchar(max)  NULL,
    [State] nvarchar(max)  NULL,
    [Supervisors] nvarchar(max)  NULL,
    [Surgeons] nvarchar(max)  NULL,
    [Weeks] int  NOT NULL,
    [Weight] float  NOT NULL,
    [patientAge] nvarchar(max)  NULL,
    [patientName] nvarchar(max)  NULL,
    [ticketId] nvarchar(max)  NULL,
    [OtherIntervention] nvarchar(max)  NULL,
    [AdditionalNotes] nvarchar(max)  NULL
);
GO

-- Creating table 'NeonatalOutcomes'
CREATE TABLE [dbo].[NeonatalOutcomes] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NULL,
    [Recid] datetime  NULL,
    [Type] nvarchar(max)  NULL
);
GO

-- Creating table 'patient_diagnose'
CREATE TABLE [dbo].[patient_diagnose] (
    [recid] int IDENTITY(1,1) NOT NULL,
    [Assistant] varchar(max)  NULL,
    [child_Presentation] varchar(200)  NULL,
    [child_state] varchar(200)  NULL,
    [Complications] varchar(max)  NULL,
    [cs_indication] varchar(max)  NULL,
    [Dynamics] varchar(max)  NULL,
    [GA] varchar(200)  NULL,
    [Intervention] varchar(max)  NULL,
    [Outcome] varchar(max)  NULL,
    [Outcome_sex] varchar(max)  NULL,
    [Outcome_State] varchar(max)  NULL,
    [Outcome_weight] float  NULL,
    [Positive_date] datetime  NULL,
    [rec_date] datetime  NULL,
    [Supervisor] varchar(max)  NULL,
    [Surgeon] varchar(max)  NULL
);
GO

-- Creating table 'patient_profile'
CREATE TABLE [dbo].[patient_profile] (
    [recid] int IDENTITY(1,1) NOT NULL,
    [patient_address] varchar(max)  NULL,
    [patient_age] float  NULL,
    [patient_birthdate] datetime  NULL,
    [patient_contact] varchar(max)  NULL,
    [patient_email] varchar(45)  NULL,
    [patient_id] varchar(max)  NULL,
    [patient_image_url] varchar(max)  NULL,
    [Patient_name] varchar(200)  NULL,
    [patient_sex] varchar(20)  NULL,
    [rec_date] datetime  NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [MigrationId] in table 'C__EFMigrationsHistory'
ALTER TABLE [dbo].[C__EFMigrationsHistory]
ADD CONSTRAINT [PK_C__EFMigrationsHistory]
    PRIMARY KEY CLUSTERED ([MigrationId] ASC);
GO

-- Creating primary key on [Id] in table 'CasulityProfiles'
ALTER TABLE [dbo].[CasulityProfiles]
ADD CONSTRAINT [PK_CasulityProfiles]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Complicaitons'
ALTER TABLE [dbo].[Complicaitons]
ADD CONSTRAINT [PK_Complicaitons]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'conf_by'
ALTER TABLE [dbo].[conf_by]
ADD CONSTRAINT [PK_conf_by]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [recid] in table 'conf_child_presentation'
ALTER TABLE [dbo].[conf_child_presentation]
ADD CONSTRAINT [PK_conf_child_presentation]
    PRIMARY KEY CLUSTERED ([recid] ASC);
GO

-- Creating primary key on [recid] in table 'conf_child_state'
ALTER TABLE [dbo].[conf_child_state]
ADD CONSTRAINT [PK_conf_child_state]
    PRIMARY KEY CLUSTERED ([recid] ASC);
GO

-- Creating primary key on [recid] in table 'conf_cs_indication'
ALTER TABLE [dbo].[conf_cs_indication]
ADD CONSTRAINT [PK_conf_cs_indication]
    PRIMARY KEY CLUSTERED ([recid] ASC);
GO

-- Creating primary key on [recid] in table 'conf_degree'
ALTER TABLE [dbo].[conf_degree]
ADD CONSTRAINT [PK_conf_degree]
    PRIMARY KEY CLUSTERED ([recid] ASC);
GO

-- Creating primary key on [Id] in table 'conf_GynaDisorder'
ALTER TABLE [dbo].[conf_GynaDisorder]
ADD CONSTRAINT [PK_conf_GynaDisorder]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [recid] in table 'conf_Intervention'
ALTER TABLE [dbo].[conf_Intervention]
ADD CONSTRAINT [PK_conf_Intervention]
    PRIMARY KEY CLUSTERED ([recid] ASC);
GO

-- Creating primary key on [Id] in table 'conf_medicalDisorder'
ALTER TABLE [dbo].[conf_medicalDisorder]
ADD CONSTRAINT [PK_conf_medicalDisorder]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'conf_medicalObestetric'
ALTER TABLE [dbo].[conf_medicalObestetric]
ADD CONSTRAINT [PK_conf_medicalObestetric]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [recid] in table 'conf_Outcome'
ALTER TABLE [dbo].[conf_Outcome]
ADD CONSTRAINT [PK_conf_Outcome]
    PRIMARY KEY CLUSTERED ([recid] ASC);
GO

-- Creating primary key on [recid] in table 'conf_Outcome_State'
ALTER TABLE [dbo].[conf_Outcome_State]
ADD CONSTRAINT [PK_conf_Outcome_State]
    PRIMARY KEY CLUSTERED ([recid] ASC);
GO

-- Creating primary key on [recid] in table 'conf_title'
ALTER TABLE [dbo].[conf_title]
ADD CONSTRAINT [PK_conf_title]
    PRIMARY KEY CLUSTERED ([recid] ASC);
GO

-- Creating primary key on [recid] in table 'doctor_profile'
ALTER TABLE [dbo].[doctor_profile]
ADD CONSTRAINT [PK_doctor_profile]
    PRIMARY KEY CLUSTERED ([recid] ASC);
GO

-- Creating primary key on [Id] in table 'Gynacologies'
ALTER TABLE [dbo].[Gynacologies]
ADD CONSTRAINT [PK_Gynacologies]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'NeonatalOutcomes'
ALTER TABLE [dbo].[NeonatalOutcomes]
ADD CONSTRAINT [PK_NeonatalOutcomes]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [recid] in table 'patient_diagnose'
ALTER TABLE [dbo].[patient_diagnose]
ADD CONSTRAINT [PK_patient_diagnose]
    PRIMARY KEY CLUSTERED ([recid] ASC);
GO

-- Creating primary key on [recid] in table 'patient_profile'
ALTER TABLE [dbo].[patient_profile]
ADD CONSTRAINT [PK_patient_profile]
    PRIMARY KEY CLUSTERED ([recid] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------