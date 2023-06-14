<?php

namespace App\Controller;

use App\Repository\CarRepository;
use App\Repository\CarCategoryRepository;
use Knp\Component\Pager\PaginatorInterface;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpClient\HttpClient;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Flibidi67\OpenMeteo\Service\ForecastService;

class HomeController extends AbstractController
{
    #[Route('/', name: 'app_home')]
    public function index(CarRepository $carRepository, CarCategoryRepository $carCategoryRepository, Request $request, PaginatorInterface $paginator, ForecastService $forecastService): Response
    {
        $search = $request->query->all();
        $cars = $carRepository->findBySearch($search);
        $cars = $paginator->paginate(
        $cars,
        $request->query->getInt('page', 1), /* page number */
            20 /* limit per page */
        );
        $categories = $carCategoryRepository->findAll();

        // Utilisation du service ForecastService pour obtenir les données météorologiques
        $forecastService->setCoordinates(48.85, 2.35)  // Coordonnées pour Paris
                       ->getHourly()
                       ->with("temperature_2m,weathercode");
        $weatherData = $forecastService->get();

        return $this->render('home/index.html.twig', [
            'controller_name' => 'HomeController',
            'cars' => $cars,
            'categories' => $categories,
            'weather_data' => $weatherData
        ]);
    }


    // public function getWeather(): array
    // {
    //     $client = HttpClient::create();
    //     $response = $client->request('GET', 'https://api.open-meteo.com/v1/forecast', [
    //         'query' => [
    //             'latitude' => '48.856614',  
    //             'longitude' => '2.3522219' 
    //         ]
    //     ]);

    //     $statusCode = $response->getStatusCode();
    //     if ($statusCode === 200) {
    //         $content = $response->getContent();
    //         $weatherData = json_decode($content, true);

    //         return $weatherData;
    //     } else {
    //         throw new \Exception('Unable to fetch weather data.');
    //     }
    // }

}
