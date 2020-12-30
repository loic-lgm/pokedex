<?php

namespace App\Form;

use App\Entity\Pokemon;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\Extension\Core\Type\SubmitType;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;

class EditPokemonType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder
            ->add('name', TextType::class, [
                'label' => false,
                'attr' => [
                    'minLength' => 1,
                    'maxLength' => 50]
            ])
            ->add('pv', null, [
                'label' => false,
                'attr' => [
                    'min' => 1,
                    'max' => 250]
                ])
            ->add('attack', null, [
                'label' => false,
                'attr' => [
                    'min' => 1,
                    'max' => 250]
                ])
            ->add('attackSpe', null, [
                'label' => false,
                'attr' => [
                    'min' => 1,
                    'max' => 250]
                ])
            ->add('defense', null, [
                'label' => false,
                'attr' => [
                    'min' => 1,
                    'max' => 250]
            ])
            ->add('defenseSpe', null, [
                'label' => false,
                'attr' => [
                    'min' => 1,
                    'max' => 250]
            ])
            ->add('speed', null, [
                'label' => false,
                'attr' => [
                    'min' => 1,
                    'max' => 250]

            ])
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
