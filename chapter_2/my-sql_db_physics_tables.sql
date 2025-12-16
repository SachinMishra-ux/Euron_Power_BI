create database powerbi;


----------------------------------------------------
-- USE YOUR POWER BI DATABASE
----------------------------------------------------
USE powerbi;   -- change to your DB name if needed

----------------------------------------------------
-- 1. PHYSICS PARTICLES TABLE
----------------------------------------------------
CREATE TABLE physics_particles (
    particle_id INT PRIMARY KEY,
    particle_name VARCHAR(50),
    category VARCHAR(50),
    charge VARCHAR(20),
    mass_kg FLOAT
);

INSERT INTO physics_particles VALUES
(1, 'Electron', 'Lepton', '-1e', 9.109e-31),
(2, 'Proton', 'Baryon', '+1e', 1.673e-27),
(3, 'Neutron', 'Baryon', '0e', 1.675e-27),
(4, 'Photon', 'Boson', '0e', 0.0),
(5, 'Muon', 'Lepton', '-1e', 1.884e-28),
(6, 'Tau', 'Lepton', '-1e', 3.167e-27),
(7, 'Up Quark', 'Quark', '+2/3e', 2.2e-30),
(8, 'Down Quark', 'Quark', '-1/3e', 4.7e-30),
(9, 'Gluon', 'Boson', '0e', 0.0),
(10, 'Higgs Boson', 'Boson', '0e', 2.18e-25);

----------------------------------------------------
-- 2. PHYSICS FORCES TABLE
----------------------------------------------------
CREATE TABLE physics_forces (
    force_id INT PRIMARY KEY,
    force_name VARCHAR(50),
    description VARCHAR(200),
    strength_level VARCHAR(20),
    range_meters VARCHAR(50)
);

INSERT INTO physics_forces VALUES
(1, 'Gravitational Force', 'Attraction between masses', 'Weakest', 'Infinite'),
(2, 'Electromagnetic Force', 'Force between charged particles', 'Strong', 'Infinite'),
(3, 'Strong Nuclear Force', 'Holds quarks together', 'Strongest', '1e-15'),
(4, 'Weak Nuclear Force', 'Causes beta decay', 'Moderate', '1e-18'),
(5, 'Normal Force', 'Support force from surfaces', 'Medium', 'Contact'),
(6, 'Friction Force', 'Opposes motion', 'Medium', 'Contact'),
(7, 'Tension Force', 'Pull force through rope/string', 'Medium', 'Contact'),
(8, 'Air Resistance', 'Opposes motion through air', 'Weak', 'Contact'),
(9, 'Spring Force', 'Restoring force from a spring', 'Medium', 'Contact'),
(10, 'Magnetic Force', 'Force from magnets or moving charges', 'Strong', 'Infinite');

----------------------------------------------------
-- 3. PHYSICS CONSTANTS TABLE
----------------------------------------------------
CREATE TABLE physics_constants (
    constant_id INT PRIMARY KEY,
    constant_name VARCHAR(100),
    symbol VARCHAR(20),
    value FLOAT,
    unit VARCHAR(50)
);

INSERT INTO physics_constants VALUES
(1, 'Speed of Light', 'c', 2.998e8, 'm/s'),
(2, 'Gravitational Constant', 'G', 6.674e-11, 'm^3 kg^-1 s^-2'),
(3, 'Planck Constant', 'h', 6.626e-34, 'J·s'),
(4, 'Elementary Charge', 'e', 1.602e-19, 'C'),
(5, 'Boltzmann Constant', 'k', 1.381e-23, 'J/K'),
(6, 'Avogadro Number', 'NA', 6.022e23, '1/mol'),
(7, 'Gas Constant', 'R', 8.314, 'J/mol·K'),
(8, 'Electron Mass', 'me', 9.109e-31, 'kg'),
(9, 'Proton Mass', 'mp', 1.673e-27, 'kg'),
(10, 'Neutron Mass', 'mn', 1.675e-27, 'kg');
