<?php

namespace App\Form;

use App\Entity\User;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\Extension\Core\Type\EmailType;
use Symfony\Component\Form\Extension\Core\Type\PasswordType;
use Symfony\Component\Form\Extension\Core\Type\SubmitType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;

class ProfileEditType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder
            ->add('email', EmailType::class, ['label' => false])
            ->add('username', null, ['label' => false])
            ->add('passwordFirst', PasswordType::class, [
                'attr' => ['placeholder' => 'Nouveau mot de passe'],
                'mapped' => false,
                'label' => false
                ])
            ->add('passwordBis', PasswordType::class, ['attr' => ['placeholder' => 'Confirmez votre nouveau mot de passe'], 'mapped' => false, 'label' => false])
            ->add('save', SubmitType::class, ['label' => 'Enregstrer'])
        ;
    }

    public function configureOptions(OptionsResolver $resolver)
    {
        $resolver->setDefaults([
            'data_class' => User::class,
        ]);
    }
}
