<?php
namespace UsuarioBundle\Entity;

use FOS\UserBundle\Model\User as BaseUser;
use Doctrine\ORM\Mapping as ORM;

/**
 * @ORM\Entity
 * @ORM\Table(name="seguridad_usuario")
 */
class User extends BaseUser
{
    /**
     * @ORM\Id
     * @ORM\Column(type="integer")
     * @ORM\GeneratedValue(strategy="AUTO")
     */
    protected $id;

    /**
     * @ORM\ManyToMany(targetEntity="UsuarioBundle\Entity\Group")
     * @ORM\JoinTable(name="seguridad_grupo_usuario",
     *      joinColumns={@ORM\JoinColumn(name="user_id", referencedColumnName="id")},
     *      inverseJoinColumns={@ORM\JoinColumn(name="group_id", referencedColumnName="id")}
     * )
     */
    protected $groups;

    /**
     * @var string
     *
     * @ORM\Column(name="nombre_completo", type="string", length=255)
     */
    public $nombrecompleto;

    /**
     * @var string
     *
     * @ORM\Column(name="carne_identidad", type="string", length=255)
     */
    public $carneidentidad;

    public function __construct()
    {
        parent::__construct();
        // your own logic
    }

    /**
     * Set nombrecompleto
     *
     * @param string $nombrecompleto
     *
     * @return User
     */
    public function setNombrecompleto($nombrecompleto)
    {
        $this->nombrecompleto = $nombrecompleto;

        return $this;
    }

    /**
     * Get nombrecompleto
     *
     * @return string
     */
    public function getNombrecompleto()
    {
        return $this->nombrecompleto;
    }

    /**
     * Set carneidentidad
     *
     * @param string $carneidentidad
     *
     * @return User
     */
    public function setCarneidentidad($carneidentidad)
    {
        $this->carneidentidad = $carneidentidad;

        return $this;
    }

    /**
     * Get carneidentidad
     *
     * @return string
     */
    public function getCarneidentidad()
    {
        return $this->carneidentidad;
    }
}
