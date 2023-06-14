# StudyCase

This Symfony project is a Car Management System with integrated weather feature. Users can browse through a list of cars, edit car details and purchase cars.
The browsing system is paginated for ease of use. The weather feature utilizes an API connection to provide up-to-date weather information.


Installation


Follow the steps below to set up the project on your local machine.

Clone the repository

```
git clone https://github.com/Wloyer/StudyCase.git
```
 Navigate to the project directory

```
cd StudyCase
```
Install Composer dependencies

```
composer install
```

Set up your environment variables in a .env.local file (you can copy the .env file and remove what you don't need)

Create the database
```
php bin/console doctrine:database:create
```
Run migrations to create tables
```
php bin/console doctrine:migrations:migrate
```
(Optional) Load fixtures to populate the database with sample data
```
php bin/console doctrine:fixtures:load
```
Start the Symfony server
```
symfony server:start
```
You can now access the project at localhost:8000.

Features

    Car Listing: View a paginated list of cars available for purchase. Navigate between pages to view all cars.

    Car Details: Click on a car to view more details. Edit the details if needed.

    Purchase Car: From the car details page, proceed to purchase the car.

    Weather Integration: Get real-time weather updates through our API connection. The weather data is displayed on the homepage.

API

The weather data is fetched from the Open-Meteo API.

Please feel free to use and modify this project as needed. If you have any questions or feedback, don't hesitate to get in touch.
