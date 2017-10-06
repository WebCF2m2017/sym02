<?php

namespace NewsBundle\Controller;

use NewsBundle\Entity\Article;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;

class DefaultController extends Controller
{
    /**
     * @Route("/",name="accueil")
     */
    public function indexAction()
    {
        // on ouvre doctrine pour faire une requête
        $em = $this->getDoctrine()->getManager();
        // on récupère tous les articles
        $articles = $em->getRepository('NewsBundle:Article')->findAll();
        //dump($articles);
        return $this->render(':News:index.html.twig',["art"=>$articles]);
    }
}
