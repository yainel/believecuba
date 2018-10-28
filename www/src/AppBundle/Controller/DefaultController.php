<?php

namespace AppBundle\Controller;

use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\Request;

class DefaultController extends Controller
{
    /**
     * @Route("/config", name="config_index")
     */
    public function panelAction(Request $request)
    {
        return $this->render('AppBundle/config.html.twig');
    }

    /**
     * @Route("/", name="landingpage")
     */
    public function indexAction()
    {
        $em = $this->getDoctrine()->getManager();

        $ofertas = $em->getRepository('AppBundle:Oferta')->findAll();

        return $this->render('AppBundle/index.html.twig', array(
            'ofertas' => $ofertas,
        ));
    }

    /**
     * @Route("/offers", name="offers")
     */
    public function offersAction()
    {
        return $this->render('AppBundle/offers.html.twig');
    }
}
