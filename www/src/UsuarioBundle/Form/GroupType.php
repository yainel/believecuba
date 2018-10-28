<?php

namespace UsuarioBundle\Form;

use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;
use Symfony\Component\Form\Extension\Core\Type\ChoiceType;

class GroupType extends AbstractType
{
    /**
     * {@inheritdoc}
     */
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder->add('name')
                ->add('description')
                ->add('roles', ChoiceType::class, array(
                    'choices'  => array(
                        'Personal'              => 'MODULO_PERSONAL',
                        'Control de Presencia'     => 'MODULO_CONTROL_PRESENCIA',
                        'Cuadros'               => 'MODULO_CUADROS',
                        'Seguridad Industrial'  => 'MODULO_SEGURIDAD_INDUSTRIAL',
                        'Capacitación'          => 'MODULO_CAPACITACION',
                        'Atención al Hombre'       => 'MODULO_ATENCION_HOMBRE',
                        'Sistema de Pago'          => 'MODULO_SISTEMA_PAGO',
                        'Eval. Desempeño'       => 'MODULO_EVAL_DESEMPENO',
                        'Sistema'               => 'MODULO_SISTEMA'),
                    'required' => true,
                    'multiple' => true,
                    'expanded' => true
                ));
    }

    /**
     * {@inheritdoc}
     */
    public function configureOptions(OptionsResolver $resolver)
    {
        $resolver->setDefaults(array(
            'data_class' => 'UsuarioBundle\Entity\Group'
        ));
    }

    /**
     * {@inheritdoc}
     */
    public function getBlockPrefix()
    {
        return 'usuariobundle_group';
    }


}
