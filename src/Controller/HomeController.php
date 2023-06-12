<?php

namespace App\Controller;

use App\Repository\CarRepository;
use App\Repository\CarCategoryRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;


class HomeController extends AbstractController
{
    #[Route('/', name: 'app_home')]
    public function index(CarRepository $carRepository, CarCategoryRepository $carCategoryRepository, Request $request): Response
    {
        $search = $request->query->all();
        
        $cars = $carRepository->findBySearch($search);
        
        

        return $this->render('home/index.html.twig', [
            'controller_name' => 'HomeController',
            'cars' => $cars,
        ]);
    }
}
