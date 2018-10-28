<?php

namespace AppBundle\Controller;

use AppBundle\Entity\AutoModelo;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Method;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;use Symfony\Component\HttpFoundation\Request;

/**
 * Automodelo controller.
 *
 * @Route("automodelo")
 */
class AutoModeloController extends Controller
{
    /**
     * Lists all autoModelo entities.
     *
     * @Route("/", name="automodelo_index")
     * @Method("GET")
     */
    public function indexAction()
    {
        $em = $this->getDoctrine()->getManager();

        $autoModelos = $em->getRepository('AppBundle:AutoModelo')->findAll();

        return $this->render('automodelo/index.html.twig', array(
            'autoModelos' => $autoModelos,
        ));
    }

    /**
     * Creates a new autoModelo entity.
     *
     * @Route("/new", name="automodelo_new")
     * @Method({"GET", "POST"})
     */
    public function newAction(Request $request)
    {
        $autoModelo = new Automodelo();
        $form = $this->createForm('AppBundle\Form\AutoModeloType', $autoModelo);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->persist($autoModelo);
            $em->flush();

            return $this->redirectToRoute('automodelo_show', array('id' => $autoModelo->getId()));
        }

        return $this->render('automodelo/new.html.twig', array(
            'autoModelo' => $autoModelo,
            'form' => $form->createView(),
        ));
    }

    /**
     * Finds and displays a autoModelo entity.
     *
     * @Route("/{id}", name="automodelo_show")
     * @Method("GET")
     */
    public function showAction(AutoModelo $autoModelo)
    {
        $deleteForm = $this->createDeleteForm($autoModelo);

        return $this->render('automodelo/show.html.twig', array(
            'autoModelo' => $autoModelo,
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Displays a form to edit an existing autoModelo entity.
     *
     * @Route("/{id}/edit", name="automodelo_edit")
     * @Method({"GET", "POST"})
     */
    public function editAction(Request $request, AutoModelo $autoModelo)
    {
        $deleteForm = $this->createDeleteForm($autoModelo);
        $editForm = $this->createForm('AppBundle\Form\AutoModeloType', $autoModelo);
        $editForm->handleRequest($request);

        if ($editForm->isSubmitted() && $editForm->isValid()) {
            $this->getDoctrine()->getManager()->flush();

            return $this->redirectToRoute('automodelo_edit', array('id' => $autoModelo->getId()));
        }

        return $this->render('automodelo/edit.html.twig', array(
            'autoModelo' => $autoModelo,
            'edit_form' => $editForm->createView(),
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Deletes a autoModelo entity.
     *
     * @Route("/{id}", name="automodelo_delete")
     * @Method("DELETE")
     */
    public function deleteAction(Request $request, AutoModelo $autoModelo)
    {
        $form = $this->createDeleteForm($autoModelo);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->remove($autoModelo);
            $em->flush();
        }

        return $this->redirectToRoute('automodelo_index');
    }

    /**
     * Creates a form to delete a autoModelo entity.
     *
     * @param AutoModelo $autoModelo The autoModelo entity
     *
     * @return \Symfony\Component\Form\Form The form
     */
    private function createDeleteForm(AutoModelo $autoModelo)
    {
        return $this->createFormBuilder()
            ->setAction($this->generateUrl('automodelo_delete', array('id' => $autoModelo->getId())))
            ->setMethod('DELETE')
            ->getForm()
        ;
    }
}
