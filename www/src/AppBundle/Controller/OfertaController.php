<?php

namespace AppBundle\Controller;

use AppBundle\Entity\Oferta;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Method;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\File\File;

/**
 * Ofertum controller.
 *
 * @Route("oferta")
 */
class OfertaController extends Controller
{
    /**
     * Lists all ofertum entities.
     *
     * @Route("/", name="oferta_index")
     * @Method("GET")
     */
    public function indexAction()
    {
        $em = $this->getDoctrine()->getManager();

        $ofertas = $em->getRepository('AppBundle:Oferta')->findAll();

        return $this->render('AppBundle/oferta/index.html.twig', array(
            'ofertas' => $ofertas,
        ));
    }

    /**
     * Creates a new oferta entity.
     *
     * @Route("/new", name="oferta_new")
     * @Method({"GET", "POST"})
     */
    public function newAction(Request $request)
    {
        $oferta = new Oferta();
        $form = $this->createForm('AppBundle\Form\OfertaType', $oferta);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $file = $oferta->getImagen();

            $fileName = md5(uniqid()).'.'.$file->guessExtension();

            $file->move($this->getParameter('photos_directory'), $fileName);
            $oferta->setImagen($fileName);

            $em = $this->getDoctrine()->getManager();
            $em->persist($oferta);
            $em->flush();

            return $this->redirectToRoute('oferta_show', array('id' => $oferta->getId()));
        }

        return $this->render('AppBundle/oferta/new.html.twig', array(
            'oferta' => $oferta,
            'form' => $form->createView(),
        ));
    }

    /**
     * Finds and displays a oferta entity.
     *
     * @Route("/{id}", name="oferta_show")
     * @Method("GET")
     */
    public function showAction(Oferta $oferta)
    {
        $deleteForm = $this->createDeleteForm($oferta);

        return $this->render('AppBundle/oferta/show.html.twig', array(
            'oferta' => $oferta,
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Displays a form to edit an existing ofertum entity.
     *
     * @Route("/{id}/edit", name="oferta_edit")
     * @Method({"GET", "POST"})
     */
    public function editAction(Request $request, Oferta $oferta)
    {
        //$file = $oferta->getImagen();

        //$fileName = md5(uniqid()).'.'.$file->guessExtension();

        //$file->move($this->getParameter('photos_directory'), $fileName);
        //$oferta->setImagen($fileName);

        $oferta->setImagen(
            new File($this->getParameter('photos_directory').'/'.$oferta->getImagen())
        );

        $deleteForm = $this->createDeleteForm($oferta);
        $editForm = $this->createForm('AppBundle\Form\OfertaType', $oferta);
        $editForm->handleRequest($request);

        if ($editForm->isSubmitted() && $editForm->isValid()) {
            $this->getDoctrine()->getManager()->flush();

            return $this->redirectToRoute('oferta_show', array('id' => $oferta->getId()));
        }

        return $this->render('AppBundle/oferta/edit.html.twig', array(
            'oferta' => $oferta,
            'edit_form' => $editForm->createView(),
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Deletes a ofertum entity.
     *
     * @Route("/{id}", name="oferta_delete")
     * @Method("DELETE")
     */
    public function deleteAction(Request $request, Oferta $ofertum)
    {
        $form = $this->createDeleteForm($ofertum);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->remove($ofertum);
            $em->flush();
        }

        return $this->redirectToRoute('oferta_index');
    }

    /**
     * Creates a form to delete a ofertum entity.
     *
     * @param Oferta $ofertum The ofertum entity
     *
     * @return \Symfony\Component\Form\Form The form
     */
    private function createDeleteForm(Oferta $ofertum)
    {
        return $this->createFormBuilder()
            ->setAction($this->generateUrl('oferta_delete', array('id' => $ofertum->getId())))
            ->setMethod('DELETE')
            ->getForm()
        ;
    }

    /**
     * Fastest Deletes a oferta entity.
     *
     * @Route("/{id}/delete", name="oferta_fastest_delete")
     */
    public function fastestDeleteAction(Oferta $oferta)
    {
        $em = $this->getDoctrine()->getManager();
        $em->remove($oferta);
        $em->flush();

        return $this->redirectToRoute('oferta_index');
    }
}
