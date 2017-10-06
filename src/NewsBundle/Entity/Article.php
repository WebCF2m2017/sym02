<?php

namespace NewsBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Article
 *
 * @ORM\Table(name="article", indexes={@ORM\Index(name="fk_article_author_idx", columns={"authorId"})})
 * @ORM\Entity
 */
class Article
{
    /**
     * @var integer
     *
     * @ORM\Column(name="id", type="integer", nullable=false)
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="IDENTITY")
     */
    private $id;

    /**
     * @var string
     *
     * @ORM\Column(name="theTitle", type="string", length=100, nullable=false)
     */
    private $thetitle;

    /**
     * @var string
     *
     * @ORM\Column(name="theText", type="text", length=65535, nullable=true)
     */
    private $thetext;

    /**
     * @var \DateTime
     *
     * @ORM\Column(name="theDate", type="datetime", nullable=true)
     */
    private $thedate;

    /**
     * @var \Author
     *
     * @ORM\ManyToOne(targetEntity="Author")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="authorId", referencedColumnName="id")
     * })
     */
    private $authorid;

    // pour avoir la date du jour par défaut lors de la création de l'instance
    public function __construct()
    {
        $this->thedate = new \DateTime();
    }

    /**
     * Get id
     *
     * @return integer
     */
    public function getId()
    {
        return $this->id;
    }

    /**
     * Set thetitle
     *
     * @param string $thetitle
     *
     * @return Article
     */
    public function setThetitle($thetitle)
    {
        $this->thetitle = $thetitle;

        return $this;
    }

    /**
     * Get thetitle
     *
     * @return string
     */
    public function getThetitle()
    {
        return $this->thetitle;
    }

    /**
     * Set thetext
     *
     * @param string $thetext
     *
     * @return Article
     */
    public function setThetext($thetext)
    {
        $this->thetext = $thetext;

        return $this;
    }

    /**
     * Get thetext
     *
     * @return string
     */
    public function getThetext()
    {
        return $this->thetext;
    }

    /**
     * Set thedate
     *
     * @param \DateTime $thedate
     *
     * @return Article
     */
    public function setThedate($thedate)
    {
        $this->thedate = $thedate;

        return $this;
    }

    /**
     * Get thedate
     *
     * @return \DateTime
     */
    public function getThedate()
    {
        return $this->thedate;
    }

    /**
     * Set authorid
     *
     * @param \NewsBundle\Entity\Author $authorid
     *
     * @return Article
     */
    public function setAuthorid(\NewsBundle\Entity\Author $authorid = null)
    {
        $this->authorid = $authorid;

        return $this;
    }

    /**
     * Get authorid
     *
     * @return \NewsBundle\Entity\Author
     */
    public function getAuthorid()
    {
        return $this->authorid;
    }
}
