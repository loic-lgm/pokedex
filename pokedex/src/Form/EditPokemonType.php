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
            ->add('name', null, ['label' => false])
            ->add('pv', null, ['label' => false,])
            ->add('attack', null, ['label' => false])
            ->add('attackSpe', null, ['label' => false])
            ->add('defense', null, ['label' => false])
            ->add('defenseSpe', null, ['label' => false])
            ->add('speed', null, ['label' => false])
            ->add('types', null, ['label' => false])
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
