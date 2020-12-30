<?php

namespace App\Controller\Admin;

use App\Entity\Pokemon;
use App\Form\EditPokemonType;
use App\Repository\PokemonRepository;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Routing\Annotation\Route;

class PokemonController extends AbstractController
{
    /**
     * @Route("/admin/pokemon", name="admin_pokemon")
     */
    public function index(PokemonRepository $pokemonRepository)
    {
        return $this->render('admin/pokemon/index.html.twig', [
            'pokemons' => $pokemonRepository->findAll(),
        ]);
    }

    /**
     * @Route("/admin/pokemon/{id}/edit", name="admin_pokemon_edit", requirements={"id": "\d+"})
     */
    public function edit(Pokemon $pokemon, EntityManagerInterface $em, Request $request)
    {
        $form = $this->createForm(EditPokemonType::class, $pokemon);

        $form->handleRequest($request);

        if($form->isSubmitted() && $form->isValid()) {
            $pokemon->setUpdatedAt(new \DateTime());
            //$em->persist($pokemon);
            $em->flush(); 
            $this->addFlash('notice', $pokemon->getName() . ' a bien été modifié');
            return $this->redirectToRoute('admin_pokemon');
        }

        return $this->render('admin/pokemon/edit.html.twig', [
            'formEditPokemon' => $form->createView(),
            'pokemon' => $pokemon
            ]
        );

    }

    /**
     * @Route("/admin/pokemon/{id}/delete", name="admin_pokemon_delete", requirements={"id": "\d+"})
     */
    public function delete(Pokemon $pokemon, EntityManagerInterface $em)
    {
        $em->remove($pokemon);
        $em->flush();
        $this->addFlash('notice', 'Le pokemon ' . $pokemon->getName() . ' a bien été supprimé');

        return $this->redirectToRoute('admin_pokemon');
    }
}
