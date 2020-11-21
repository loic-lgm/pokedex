<?php

namespace App\Controller;

use App\Entity\User;
use App\Repository\PokemonRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Routing\Annotation\Route;

class ProfileController extends AbstractController
{
    /**
     * @Route("/profile", name="profile")
     */
    public function index(PokemonRepository $pokemonRepository)
    {
        return $this->render('profile/index.html.twig', [
            'pokemons' => $pokemonRepository->findAllByUserId($this->getUser()->getId())
        ]);
    }
}
