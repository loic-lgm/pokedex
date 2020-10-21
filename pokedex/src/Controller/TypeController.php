<?php

namespace App\Controller;

use App\Entity\Type;
use App\Repository\PokemonRepository;
use App\Repository\TypeRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Routing\Annotation\Route;

class TypeController extends AbstractController
{
    /**
     * @Route("/type", name="type_main")
     */
    public function main(TypeRepository $typeRepository)
    {
        return $this->render('type/index.html.twig', [
            'types' => $typeRepository->findAll(),
        ]);
    }

    /**
     * @Route("/type/{id}", name="type_single", requirements={"id"="\d+"})
     */
    public function single(Type $type, PokemonRepository $pokemonRepository)
    {
        return $this->render('type/single.html.twig', [
            'type' => $type,
            'pokemons' => $pokemonRepository->findAllByType($type->getName()),
        ]);
    }
}
