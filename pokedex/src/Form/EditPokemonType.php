<?php

namespace App\Form;

use App\Entity\Pokemon;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\Extension\Core\Type\SubmitType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;

class EditPokemonType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder
            ->add('name', null, ['label' => 'Nom'])
            ->add('pv', null, ['label' => 'Point de vie'])
            ->add('attack', null, ['label' => 'Attaque'])
            ->add('attackSpe', null, ['label' => 'Attaque spéciale'])
            ->add('defense', null, ['label' => 'Défense'])
            ->add('defenseSpe', null, ['label' => 'Défense spéciale'])
            ->add('speed', null, ['label' => 'Vitesse'])
            ->add('types', null, ['label' => 'Types'])
            ->add('save', SubmitType::class, ['label' => 'Enregstrer'])
        ;
    }

    public function configureOptions(OptionsResolver $resolver)
    {
        $resolver->setDefaults([
            'data_class' => Pokemon::class,
        ]);
    }
}
