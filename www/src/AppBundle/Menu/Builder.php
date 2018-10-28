<?php
namespace AppBundle\Menu;

use Knp\Menu\FactoryInterface;
use Symfony\Component\DependencyInjection\ContainerAwareInterface;
use Symfony\Component\DependencyInjection\ContainerAwareTrait;

class Builder implements ContainerAwareInterface
{
    use ContainerAwareTrait;

    public function mainMenu(FactoryInterface $factory, array $options)
    {
        //$menu = $factory->createItem('root', array('class' => 'nane'));


        $menu = $factory->createItem('root', array(
            'childrenAttributes'    => array(
                'class'             => 'sidebar-menu',
            ),
        ));

        $menu->addChild('Home', array(
            'attributes' => array('class' => 'treeview'
        )));

        $menu->addChild('About', array(
            'attributes' => array('class' => 'treeview')
        ));

        return $menu;
    }
}