<?php

namespace AppBundle\Controller;

use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\Request;

class DefaultController extends Controller
{
    /**
     * @Route("/panel", name="panel")
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
        return $this->render('AppBundle/index.html.twig');
    }

    /**
     * @Route("/offers", name="offers")
     */
    public function offersAction()
    {
        return $this->render('AppBundle/offers.html.twig');
    }
}
