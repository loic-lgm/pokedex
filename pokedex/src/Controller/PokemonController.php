<?php

namespace App\Controller;

use App\Entity\Pokemon;
use App\Repository\PokemonRepository;
use Doctrine\ORM\EntityManagerInterface;
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

    /**
     * @Route("/pokemon/{id}/add", name="pokemon_add", requirements={"id"="\d+"})
     */
    public function add(EntityManagerInterface $em, Pokemon $pokemon)
    {

        //$movie->setSlug($slugger->sluggify($movie->getTitle()));
        $pokemon->addUser($this->getUser());
        $em->persist($pokemon);
        $em->flush(); 
        $this->addFlash('success', 'Le pokemon ' . $pokemon->getName() . ' a bien été ajouté à votre pokedex');
        
        return $this->redirectToRoute('pokemon_main');

    }

    /**
     * @Route("/pokemon/{id}/remove", name="pokemon_remove", requirements={"id"="\d+"})
     */
    public function remove(EntityManagerInterface $em, Pokemon $pokemon)
    {

        //$movie->setSlug($slugger->sluggify($movie->getTitle()));
        $pokemon->removeUser($this->getUser());
        $em->persist($pokemon);
        $em->flush(); 
        $this->addFlash('success', 'Le pokemon ' . $pokemon->getName() . ' a bien été retiré de votre pokedex');
        
        return $this->redirectToRoute('pokemon_main');

    }
}
