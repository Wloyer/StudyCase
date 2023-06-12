<?php

namespace App\DataFixtures;

use App\Entity\Car;
use App\Entity\CarCategory;
use Doctrine\Bundle\FixturesBundle\Fixture;
use Doctrine\Persistence\ObjectManager;
use Faker;

class CarFixtures extends Fixture
{
    public function load(ObjectManager $manager): void
    {
        // Créer une instance de Faker
        $faker = Faker\Factory::create('fr_FR');

        // Créer quelques catégories de voitures
        for ($i = 0; $i < 5; $i++) {
            $category = new CarCategory();
            $category->setName('Category ' . $i);
            $manager->persist($category);

            // Créer quelques voitures pour chaque catégorie
            for ($j = 0; $j < 10; $j++) {
                $car = new Car();
                $car->setNbSeats(rand(2, 5));
                $car->setNbDoors(rand(2, 5));  
                $car->setName($faker->bothify('Car Model ###')); // 'Car Model 123'  
                $car->setCost($faker->numberBetween(10000, 50000)); 
                $car->setCategory($category);
                $manager->persist($car);
            }
        }

        
        $manager->flush();
    }
}
