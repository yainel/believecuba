<?php

namespace AppBundle\Form;

use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\Extension\Core\Type\DateType;
use Symfony\Component\Form\Extension\Core\Type\FileType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;
use Symfony\Component\HttpFoundation\File\File;


class OfertaType extends AbstractType
{
    /**
     * {@inheritdoc}
     */
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder->add('activa')
                ->add('imagen', FileType::class, array(
                    //'data_class' => null,
                    'required' => false,
                    'label' => false,
                    'attr' => array(
                        'hidden' => 1
                    )
                ))
                ->add('titulo')
                ->add('descripcion')
                ->add('detalles')
                ->add('fechainicio', DateType::class, array(
                    'widget' => 'single_text',
                    'format' => 'd/M/y',
                ) )
                ->add('fechafin', DateType::class, array(
                    'widget' => 'single_text',
                    'format' => 'd/M/y',
                ));
    }/**
     * {@inheritdoc}
     */
    public function configureOptions(OptionsResolver $resolver)
    {
        $resolver->setDefaults(array(
            'data_class' => 'AppBundle\Entity\Oferta'
        ));
    }

    /**
     * {@inheritdoc}
     */
    public function getBlockPrefix()
    {
        return 'appbundle_oferta';
    }


}
