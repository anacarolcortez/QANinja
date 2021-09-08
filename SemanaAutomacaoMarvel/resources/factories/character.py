from faker import Faker
import random

faker = Faker()

def factory_character():
    return {
        "name": faker.name(),
        "aliases": "Whatever",
        "age": random.randint(15,3000),
        "team": "No idea",
        "active": False
    }

def spiderman():
    return {
        "name": "Peter Parker",
        "aliases": "Spiderman",
        "age": 22,
        "team": "Avengers",
        "active": True
    }

def black_widow():
    return {
        "name": "Natasha Romanova",
        "aliases": "Back Widow",
        "age": 35,
        "team": "Avengers",
        "active": True
    }

def deadpool():
    return {
        "name": "Wade Winston",
        "aliases": "Deadpool",
        "age": 100,
        "team": "X-Force",
        "active": True
    }