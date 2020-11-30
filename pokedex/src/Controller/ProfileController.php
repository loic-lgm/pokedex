<?php

namespace App\Controller;

use App\Entity\User;
use App\Form\ProfileEditType;
use App\Repository\PokemonRepository;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\Security\Core\Encoder\UserPasswordEncoderInterface;

class ProfileController extends AbstractController
{
    /**
     * @Route("/profile/{id}", name="profile_main", requirements={"id"="\d+"})
     */
    public function index(PokemonRepository $pokemonRepository)
    {
        return $this->render('profile/index.html.twig', [
            'pokemons' => $pokemonRepository->findAllByUserId($this->getUser()->getId())
        ]);
    }

    /**
     * @Route("/profile/{id}/edit", name="profile_edit", requirements={"id"="\d+"})
     */
    public function edit(User $user, Request $request, UserPasswordEncoderInterface $passwordEncoder, EntityManagerInterface $em)
    {
        $form = $this->createForm(ProfileEditType::class, $user);

        $form->handleRequest($request);

        if ($form->get('passwordFirst')->getData() === $form->get('passwordBis')->getData()) {        
            if($form->isSubmitted() && $form->isValid()) {
                // encode the plain password
                $user->setPassword(
                    $passwordEncoder->encodePassword(
                        $user,
                        $form->get('passwordFirst')->getData()
                    )
                );
                //$em->persist($user);
                $em->flush(); 
                $this->addFlash('success', 'Votre profil a bien été modifié');
                return $this->redirectToRoute('profile_main', ['id' => $user->getId()]);
            }
        } else {
            $this->addFlash('danger', 'Les mots de passe doivent être identiques');
        }

        return $this->render('profile/edit.html.twig', [
            'formProfileEdit' => $form->createView()
        ]);
    }
}