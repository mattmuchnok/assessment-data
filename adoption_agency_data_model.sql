CREATE TABLE client (
    client_id SERIAL PRIMARY KEY,
    client_name VARCHAR(50) NOT NULL,
    client_address VARCHAR(150) NOT NULL,
    client_phone INT NOT NULL,
    client_interests VARCHAR(150) REFERENCES breed(breed_id),
    client_adoptions VARCHAR(500) REFERENCES adoption(adoption_id)
);

CREATE TABLE animal (
    animal_id SERIAL PRIMARY KEY,
    animal_name VARCHAR(50) NOT NULL,
    animal_birth DATE NOT NULL,
    animal_breed_id INT NOT NULL REFERENCES breed(breed_id),
    is_adopted BOOLEAN DEFAULT FALSE
);

CREATE TABLE breed (
    breed_id SERIAL PRIMARY KEY,
    breed_name VARCHAR(50) NOT NULL,
    breed_species VARCHAR(50) NOT NULL,
    breed_full_size VARCHAR(50) NOT NULL,
    breed_personality VARCHAR(50) NOT NULL
);

CREATE TABLE adoption (
    adoption_id SERIAL PRIMARY KEY,
    client_id INT NOT NULL REFERENCES client(client_id),
    animal_id INT NOT NULL REFERENCES animal(animal_id)
);