<?php

namespace AppBundle\Controller;

use AppBundle\Entity\AutoCategoria;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Method;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;use Symfony\Component\HttpFoundation\Request;

/**
 * Autocategorium controller.
 *
 * @Route("autocategoria")
 */
class AutoCategoriaController extends Controller
{
    /**
     * Lists all autoCategorium entities.
     *
     * @Route("/", name="autocategoria_index")
     * @Method("GET")
     */
    public function indexAction()
    {
        $em = $this->getDoctrine()->getManager();

        $autoCategorias = $em->getRepository('AppBundle:AutoCategoria')->findAll();

        return $this->render('autocategoria/index.html.twig', array(
            'autoCategorias' => $autoCategorias,
        ));
    }

    /**
     * Creates a new autoCategorium entity.
     *
     * @Route("/new", name="autocategoria_new")
     * @Method({"GET", "POST"})
     */
    public function newAction(Request $request)
    {
        $autoCategorium = new Autocategorium();
        $form = $this->createForm('AppBundle\Form\AutoCategoriaType', $autoCategorium);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->persist($autoCategorium);
            $em->flush();

            return $this->redirectToRoute('autocategoria_show', array('id' => $autoCategorium->getId()));
        }

        return $this->render('autocategoria/new.html.twig', array(
            'autoCategorium' => $autoCategorium,
            'form' => $form->createView(),
        ));
    }

    /**
     * Finds and displays a autoCategorium entity.
     *
     * @Route("/{id}", name="autocategoria_show")
     * @Method("GET")
     */
    public function showAction(AutoCategoria $autoCategorium)
    {
        $deleteForm = $this->createDeleteForm($autoCategorium);

        return $this->render('autocategoria/show.html.twig', array(
            'autoCategorium' => $autoCategorium,
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Displays a form to edit an existing autoCategorium entity.
     *
     * @Route("/{id}/edit", name="autocategoria_edit")
     * @Method({"GET", "POST"})
     */
    public function editAction(Request $request, AutoCategoria $autoCategorium)
    {
        $deleteForm = $this->createDeleteForm($autoCategorium);
        $editForm = $this->createForm('AppBundle\Form\AutoCategoriaType', $autoCategorium);
        $editForm->handleRequest($request);

        if ($editForm->isSubmitted() && $editForm->isValid()) {
            $this->getDoctrine()->getManager()->flush();

            return $this->redirectToRoute('autocategoria_edit', array('id' => $autoCategorium->getId()));
        }

        return $this->render('autocategoria/edit.html.twig', array(
            'autoCategorium' => $autoCategorium,
            'edit_form' => $editForm->createView(),
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Deletes a autoCategorium entity.
     *
     * @Route("/{id}", name="autocategoria_delete")
     * @Method("DELETE")
     */
    public function deleteAction(Request $request, AutoCategoria $autoCategorium)
    {
        $form = $this->createDeleteForm($autoCategorium);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->remove($autoCategorium);
            $em->flush();
        }

        return $this->redirectToRoute('autocategoria_index');
    }

    /**
     * Creates a form to delete a autoCategorium entity.
     *
     * @param AutoCategoria $autoCategorium The autoCategorium entity
     *
     * @return \Symfony\Component\Form\Form The form
     */
    private function createDeleteForm(AutoCategoria $autoCategorium)
    {
        return $this->createFormBuilder()
            ->setAction($this->generateUrl('autocategoria_delete', array('id' => $autoCategorium->getId())))
            ->setMethod('DELETE')
            ->getForm()
        ;
    }
}
