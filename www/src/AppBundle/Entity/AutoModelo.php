<?php

namespace AppBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * AutoModelo
 *
 * @ORM\Table(name="auto_modelo")
 * @ORM\Entity(repositoryClass="AppBundle\Repository\AutoModeloRepository")
 */
class AutoModelo
{
    /**
     * @var int
     *
     * @ORM\Column(name="id", type="integer")
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="AUTO")
     */
    private $id;

    /**
     * @var string
     *
     * @ORM\Column(name="nombre", type="string", length=255)
     */
    private $nombre;

    /**
     * @var string
     *
     * @ORM\Column(name="descripcion", type="text")
     */
    private $descripcion;

    /**
     * @var bool
     *
     * @ORM\Column(name="activo", type="boolean")
     */
    private $activo;

    /**
     * @var int
     *
     * @ORM\Column(name="cantidadpuertas", type="integer")
     */
    private $cantidadpuertas;

    /**
     * @var int
     *
     * @ORM\Column(name="cantidadasientos", type="integer")
     */
    private $cantidadasientos;

    /**
     * @var int
     *
     * @ORM\Column(name="cantidadmaleteros", type="integer")
     */
    private $cantidadmaleteros;

    /**
     * @var int
     *
     * @ORM\Column(name="aireacondicionado", type="integer")
     */
    private $aireacondicionado;

    /**
     * @var int
     *
     * @ORM\Column(name="capacidadlitros", type="integer")
     */
    private $capacidadlitros;

    /**
     * @var string
     *
     * @ORM\Column(name="foto", type="string", length=255)
     */
    private $foto;


    /**
     * Get id
     *
     * @return int
     */
    public function getId()
    {
        return $this->id;
    }

    /**
     * Set nombre
     *
     * @param string $nombre
     *
     * @return AutoModelo
     */
    public function setNombre($nombre)
    {
        $this->nombre = $nombre;

        return $this;
    }

    /**
     * Get nombre
     *
     * @return string
     */
    public function getNombre()
    {
        return $this->nombre;
    }

    /**
     * Set descripcion
     *
     * @param string $descripcion
     *
     * @return AutoModelo
     */
    public function setDescripcion($descripcion)
    {
        $this->descripcion = $descripcion;

        return $this;
    }

    /**
     * Get descripcion
     *
     * @return string
     */
    public function getDescripcion()
    {
        return $this->descripcion;
    }

    /**
     * Set activo
     *
     * @param boolean $activo
     *
     * @return AutoModelo
     */
    public function setActivo($activo)
    {
        $this->activo = $activo;

        return $this;
    }

    /**
     * Get activo
     *
     * @return bool
     */
    public function getActivo()
    {
        return $this->activo;
    }

    /**
     * Set cantidadpuertas
     *
     * @param integer $cantidadpuertas
     *
     * @return AutoModelo
     */
    public function setCantidadpuertas($cantidadpuertas)
    {
        $this->cantidadpuertas = $cantidadpuertas;

        return $this;
    }

    /**
     * Get cantidadpuertas
     *
     * @return int
     */
    public function getCantidadpuertas()
    {
        return $this->cantidadpuertas;
    }

    /**
     * Set cantidadasientos
     *
     * @param integer $cantidadasientos
     *
     * @return AutoModelo
     */
    public function setCantidadasientos($cantidadasientos)
    {
        $this->cantidadasientos = $cantidadasientos;

        return $this;
    }

    /**
     * Get cantidadasientos
     *
     * @return int
     */
    public function getCantidadasientos()
    {
        return $this->cantidadasientos;
    }

    /**
     * Set cantidadmaleteros
     *
     * @param integer $cantidadmaleteros
     *
     * @return AutoModelo
     */
    public function setCantidadmaleteros($cantidadmaleteros)
    {
        $this->cantidadmaleteros = $cantidadmaleteros;

        return $this;
    }

    /**
     * Get cantidadmaleteros
     *
     * @return int
     */
    public function getCantidadmaleteros()
    {
        return $this->cantidadmaleteros;
    }

    /**
     * Set aireacondicionado
     *
     * @param integer $aireacondicionado
     *
     * @return AutoModelo
     */
    public function setAireacondicionado($aireacondicionado)
    {
        $this->aireacondicionado = $aireacondicionado;

        return $this;
    }

    /**
     * Get aireacondicionado
     *
     * @return int
     */
    public function getAireacondicionado()
    {
        return $this->aireacondicionado;
    }

    /**
     * Set capacidadlitros
     *
     * @param integer $capacidadlitros
     *
     * @return AutoModelo
     */
    public function setCapacidadlitros($capacidadlitros)
    {
        $this->capacidadlitros = $capacidadlitros;

        return $this;
    }

    /**
     * Get capacidadlitros
     *
     * @return int
     */
    public function getCapacidadlitros()
    {
        return $this->capacidadlitros;
    }

    /**
     * Set foto
     *
     * @param string $foto
     *
     * @return AutoModelo
     */
    public function setFoto($foto)
    {
        $this->foto = $foto;

        return $this;
    }

    /**
     * Get foto
     *
     * @return string
     */
    public function getFoto()
    {
        return $this->foto;
    }
}

