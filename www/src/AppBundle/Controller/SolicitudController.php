<?php

namespace AppBundle\Controller;

use AppBundle\Entity\Solicitud;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Method;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Symfony\Component\HttpFoundation\Request;

/**
 * Solicitud controller.
 *
 * @Route("solicitud")
 */
class SolicitudController extends Controller
{
    /**
     * Lists all solicitud entities.
     *
     * @Route("/", name="solicitud_index")
     * @Method("GET")
     */
    public function indexAction()
    {
        $em = $this->getDoctrine()->getManager();

        $solicituds = $em->getRepository('AppBundle:Solicitud')->findAll();

        return $this->render('AppBundle/solicitud/index.html.twig', array(
            'solicituds' => $solicituds,
        ));
    }

    /**
     * Creates a new solicitud entity.
     *
     * @Route("/new/{id}", name="solicitud_new")
     * @Method({"GET", "POST"})
     */
    public function newAction(Request $request, $id)
    {
        $solicitud = new Solicitud();
        $form = $this->createForm('AppBundle\Form\SolicitudType', $solicitud);
        $form->handleRequest($request);

        $em = $this->getDoctrine()->getManager();
        $oferta = $em->getRepository('AppBundle:Oferta')->findOneBy(array('id' => $id));

        if ($form->isSubmitted() && $form->isValid()) {
            //$em = $this->getDoctrine()->getManager();

            $em->persist($solicitud);
            $em->flush();

            return $this->render('AppBundle/solicitud/sent.html.twig');
        }

        return $this->render('AppBundle/solicitud/new.html.twig', array(
            'solicitud' => $solicitud,
            'oferta' => $oferta,
            'form' => $form->createView(),
        ));
    }

    /**
     * Finds and displays a solicitud entity.
     *
     * @Route("/{id}", name="solicitud_show")
     * @Method("GET")
     */
    public function showAction(Solicitud $solicitud)
    {
        $deleteForm = $this->createDeleteForm($solicitud);

        $em = $this->getDoctrine()->getManager();
        $oferta = $em->getRepository('AppBundle:Oferta')->findOneBy(array('id' => $solicitud->getOferta()));


        return $this->render('AppBundle/solicitud/show.html.twig', array(
            'solicitud' => $solicitud,
            'oferta' => $oferta,
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Displays a form to edit an existing solicitud entity.
     *
     * @Route("/{id}/edit", name="solicitud_edit")
     * @Method({"GET", "POST"})
     */
    public function editAction(Request $request, Solicitud $solicitud)
    {
        $deleteForm = $this->createDeleteForm($solicitud);
        $editForm = $this->createForm('AppBundle\Form\SolicitudType', $solicitud);
        $editForm->handleRequest($request);

        if ($editForm->isSubmitted() && $editForm->isValid()) {
            $this->getDoctrine()->getManager()->flush();

            return $this->redirectToRoute('solicitud_edit', array('id' => $solicitud->getId()));
        }

        return $this->render('AppBundle/solicitud/edit.html.twig', array(
            'solicitud' => $solicitud,
            'edit_form' => $editForm->createView(),
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Deletes a solicitud entity.
     *
     * @Route("/{id}", name="solicitud_delete")
     * @Method("DELETE")
     */
    public function deleteAction(Request $request, Solicitud $solicitud)
    {
        $form = $this->createDeleteForm($solicitud);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->remove($solicitud);
            $em->flush();
        }

        return $this->redirectToRoute('solicitud_index');
    }

    /**
     * Creates a form to delete a solicitud entity.
     *
     * @param Solicitud $solicitud The solicitud entity
     *
     * @return \Symfony\Component\Form\Form The form
     */
    private function createDeleteForm(Solicitud $solicitud)
    {
        return $this->createFormBuilder()
            ->setAction($this->generateUrl('solicitud_delete', array('id' => $solicitud->getId())))
            ->setMethod('DELETE')
            ->getForm()
        ;
    }
}
