-- =====================================================
-- Mukib Portfolio Database
-- Database Name: mukib_portfolio_db
-- =====================================================

CREATE DATABASE IF NOT EXISTS mukib_portfolio_db;
USE mukib_portfolio_db;

-- =====================================================
-- USERS TABLE
-- =====================================================

CREATE TABLE users (

    id INT AUTO_INCREMENT PRIMARY KEY,

    full_name VARCHAR(150) NOT NULL,

    username VARCHAR(100) UNIQUE NOT NULL,

    email VARCHAR(150) UNIQUE NOT NULL,

    phone VARCHAR(30),

    password VARCHAR(255) NOT NULL,

    role ENUM('admin','user') DEFAULT 'user',

    profile_image VARCHAR(255) DEFAULT 'default.png',

    bio TEXT,

    github_link VARCHAR(255),

    linkedin_link VARCHAR(255),

    researchgate_link VARCHAR(255),

    scholar_link VARCHAR(255),

    is_verified TINYINT(1) DEFAULT 0,

    status ENUM('active','blocked') DEFAULT 'active',

    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP

);

-- =====================================================
-- PROJECTS TABLE
-- =====================================================

CREATE TABLE projects (

    id INT AUTO_INCREMENT PRIMARY KEY,

    title VARCHAR(255) NOT NULL,

    slug VARCHAR(255) UNIQUE,

    category VARCHAR(100),

    short_description TEXT,

    full_description LONGTEXT,

    tech_stack TEXT,

    github_link VARCHAR(255),

    live_demo_link VARCHAR(255),

    project_image VARCHAR(255),

    featured TINYINT(1) DEFAULT 0,

    status ENUM('published','draft') DEFAULT 'published',

    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP

);

-- =====================================================
-- RESEARCH PAPERS TABLE
-- =====================================================

CREATE TABLE research_papers (

    id INT AUTO_INCREMENT PRIMARY KEY,

    title TEXT NOT NULL,

    abstract TEXT,

    publication_type VARCHAR(100),

    publication_name TEXT,

    status VARCHAR(100),

    doi_link VARCHAR(255),

    pdf_link VARCHAR(255),

    publication_year YEAR,

    keywords TEXT,

    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP

);

-- =====================================================
-- SKILLS TABLE
-- =====================================================

CREATE TABLE skills (

    id INT AUTO_INCREMENT PRIMARY KEY,

    skill_name VARCHAR(100) NOT NULL,

    category VARCHAR(100),

    proficiency INT,

    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP

);

-- =====================================================
-- CERTIFICATIONS TABLE
-- =====================================================

CREATE TABLE certifications (

    id INT AUTO_INCREMENT PRIMARY KEY,

    certificate_name VARCHAR(255),

    platform VARCHAR(255),

    issue_date DATE,

    credential_link VARCHAR(255),

    certificate_image VARCHAR(255),

    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP

);

-- =====================================================
-- CONTACT MESSAGES TABLE
-- =====================================================

CREATE TABLE contact_messages (

    id INT AUTO_INCREMENT PRIMARY KEY,

    name VARCHAR(150),

    email VARCHAR(150),

    subject VARCHAR(255),

    message TEXT,

    status ENUM('unread','read') DEFAULT 'unread',

    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP

);

-- =====================================================
-- BLOG POSTS TABLE
-- =====================================================

CREATE TABLE blog_posts (

    id INT AUTO_INCREMENT PRIMARY KEY,

    title VARCHAR(255),

    slug VARCHAR(255) UNIQUE,

    excerpt TEXT,

    content LONGTEXT,

    featured_image VARCHAR(255),

    category VARCHAR(100),

    tags TEXT,

    status ENUM('published','draft') DEFAULT 'draft',

    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP

);

-- =====================================================
-- VISITORS TABLE
-- =====================================================

CREATE TABLE visitors (

    id INT AUTO_INCREMENT PRIMARY KEY,

    ip_address VARCHAR(100),

    browser_info TEXT,

    visited_page VARCHAR(255),

    visited_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP

);

-- =====================================================
-- SOCIAL LINKS TABLE
-- =====================================================

CREATE TABLE social_links (

    id INT AUTO_INCREMENT PRIMARY KEY,

    platform VARCHAR(100),

    icon VARCHAR(100),

    link VARCHAR(255),

    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP

);

-- =====================================================
-- EXPERIENCE TABLE
-- =====================================================

CREATE TABLE experience (

    id INT AUTO_INCREMENT PRIMARY KEY,

    title VARCHAR(255),

    organization VARCHAR(255),

    start_date DATE,

    end_date DATE,

    description TEXT,

    type ENUM('education','job','research') DEFAULT 'education',

    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP

);

-- =====================================================
-- ACHIEVEMENTS TABLE
-- =====================================================

CREATE TABLE achievements (

    id INT AUTO_INCREMENT PRIMARY KEY,

    title VARCHAR(255),

    organization VARCHAR(255),

    achievement_year YEAR,

    description TEXT,

    icon VARCHAR(255),

    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP

);

-- =====================================================
-- INSERT DEFAULT ADMIN
-- Password: admin123
-- =====================================================

INSERT INTO users (

    full_name,
    username,
    email,
    password,
    role,
    is_verified

)

VALUES (

    'Md Al Hossain Mukib',
    'admin',
    'mdalhossainmukib@gmail.com',

    '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',

    'admin',
    1

);

-- =====================================================
-- INSERT PROJECTS
-- =====================================================

INSERT INTO projects (

    title,
    category,
    short_description,
    github_link,
    project_image,
    featured

)

VALUES

(

'Online Quiz System',

'Web',

'Modern quiz platform with leaderboard and admin dashboard.',

'https://github.com/MukibHossain/Online-Quiz-System',

'quiz-system.png',

1

),

(

'Community Crime/Incident Reporter',

'Research',

'Advanced incident reporting platform with map visualization.',

'https://github.com/MukibHossain/Community-Crime-Incident-Reporter',

'crime-reporter.png',

1

);

-- =====================================================
-- INSERT RESEARCH PAPERS
-- =====================================================

INSERT INTO research_papers (

    title,
    status,
    publication_name,
    doi_link,
    publication_year

)

VALUES

(

'Visual Comfort Assessment for a Comparative Analysis of Dominant Features Using Machine Learning in Naturally Ventilated Cafeterias',

'Under Review',

'Journal Submission',

'',

2026

),

(

'Predicting Indoor Air Quality in Naturally Ventilated University Cafeterias Using Regression-Based Machine Learning Model',

'Under Review',

'Journal Submission',

'',

2026

),

(

'Feature Ranking for Predicting Inhabitant Thermal Comfort in Urban Landscapes Using Machine Learning for Sustainable and Climate-Resilient Design',

'Published Abstract',

'Proceedings of the International Conference on Current Problems in Engineering and Applied Sciences',

'https://doi.org/10.2991/978-94-6239-668-5_93',

2025

);

-- =====================================================
-- INSERT SKILLS
-- =====================================================

INSERT INTO skills (

    skill_name,
    category,
    proficiency

)

VALUES

('Python','Programming',95),
('C','Programming',85),
('C++','Programming',80),
('NumPy','AI/ML',90),
('Pandas','AI/ML',90),
('Requests','AI/ML',85),
('Matplotlib','AI/ML',85),
('Scikit-learn','AI/ML',90),
('PyTorch','AI/ML',85),
('TensorFlow','AI/ML',80),
('OpenCV','AI/ML',80),
('PHP','Web',85),
('MySQL','Database',85),
('JavaScript','Web',80),
('Bootstrap','Web',85),
('AJAX','Web',75),
('Django','Web',70);

-- =====================================================
-- INSERT SOCIAL LINKS
-- =====================================================

INSERT INTO social_links (

    platform,
    icon,
    link

)

VALUES

(

'GitHub',
'fab fa-github',
'https://github.com/MukibHossain'

),

(

'LinkedIn',
'fab fa-linkedin',
'https://www.linkedin.com/in/mukibhossain/'

),

(

'ResearchGate',
'fas fa-flask',
'https://www.researchgate.net/profile/Md-Al-Hossain-Mukib'

),

(

'Google Scholar',
'fas fa-graduation-cap',
'https://scholar.google.com/citations?user=p8k7WiEAAAAJ&hl=en&authuser=2'

);

-- =====================================================
-- INSERT EXPERIENCE
-- =====================================================

INSERT INTO experience (

    title,
    organization,
    start_date,
    end_date,
    description,
    type

)

VALUES

(

'BSc in Computer Science & Engineering',

'International University of Business Agriculture and Technology (IUBAT)',

'2023-01-01',

'2027-08-01',

'Undergraduate student focused on Artificial Intelligence, Computer Vision, and Intelligent Systems.',

'education'

);

-- =====================================================
-- INSERT ACHIEVEMENTS
-- =====================================================

INSERT INTO achievements (

    title,
    organization,
    achievement_year,
    description,
    icon

)

VALUES

(

'Research Publication',

'IUBAT',

2025,

'Published abstract in international conference proceedings.',

'trophy'

);

-- =====================================================
-- DATABASE COMPLETED
-- =====================================================