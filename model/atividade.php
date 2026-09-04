<?php

class atividade
{
    private $titulo;
    private $descricao;
    private $vagas;


    public function __construct(
        $titulo, $descricao, $vagas
    )
    {
        $this->titulo = $titulo;
        $this->descricao = $descricao;
        $this->vagas = $vagas;
    }

    public function getTitulo() { return $this->titulo; }
    public function getDescricao() { return $this->descricao; }
    public function getVagas() { return $this->vagas; }
}