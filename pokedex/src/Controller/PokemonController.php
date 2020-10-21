<?php

namespace App\Controller;

use App\Entity\Pokemon;
use App\Entity\Type;
use App\Repository\PokemonRepository;
use Knp\Component\Pager\PaginatorInterface;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Routing\Annotation\Route;

class PokemonController extends AbstractController
{
    /**
     * @Route("/pokemon", name="pokemon_main")
     */
    public function main(PokemonRepository $pokemonRepository, PaginatorInterface $paginator, Request $request)
    {
        return $this->render('pokemon/index.html.twig', [
            'pokemons' => $paginator->paginate(
                $pokemonRepository->findAll(),
                $request->query->getInt('page', 1),
                15
            ),
        ]);
    }

    /**
     * @Route("/pokemon/{id}", name="pokemon_single", requirements={"id"="\d+"})
     */
    public function single(Pokemon $pokemon)
    {
        return $this->render('pokemon/single.html.twig', [
            'pokemon' => $pokemon,
        ]);
    }
}
