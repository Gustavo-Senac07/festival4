<?php

class inscricao
{
    private $participante_id_participante;
    private $atividade_id_atividade;

    public function __construct(
        $participante_id_participante, $atividade_id_atividade
    )
    {
        $this->participante_id_participante = $participante_id_participante;
        $this->atividade_id_atividade = $atividade_id_atividade;
    }
}