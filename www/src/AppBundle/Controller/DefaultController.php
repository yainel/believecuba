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
    public function indexAction(Request $request)
    {
        return $this->render('AppBundle/config.html.twig');
    }
}
