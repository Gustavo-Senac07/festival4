<?php

class participante
{
    private $nome;
    private $email;
    private $data_nasc;
    private $telefone;

    public function __construct(
        $nome, $email, $data_nasc, $telefone
    )
    {
        $this->nome = $nome;
        $this->email = $email;
        $this->data_nasc = $data_nasc;
        $this->telefone = $telefone;
    }

    public function getNome() { return $this->nome; }
    public function getEmail() { return $this->email; }
    public function getNasc() { return $this->data_nasc; }
    public function getTelefone() { return $this->telefone; }
}