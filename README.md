# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

##database
Celula

celula 1 <-> N lideres_treinamento

celula 1 <-> 1 member<lider>

    id_celula {PK}
    nome { varchar(233) }
    data_iniciada { date }
    endereco da celula { varchar(233) }
    anfitriao { varchar(233) }
    member (FK)
    dia/hora { date }
    cep {varchar(10)}

Lider_treinamento

lider_treinamento N <-> 1 celula

    id_lider_treinamento (PK)
    id_member {int, FK}
    id_celula {int, FK}

Tipo

    id_tipo [int]
    nome_tipo [ varchar(233) ]
        pastor
        lider em treinamento
        lider
        supervisor
        visitante

Membro

    id_membro (PK)
    nome [ varchar(233) ]
    data de aniversario [ date ]
    tipo (FK)
    endereco { varchar(233) }
    cep {varchar(10)}
    telefone [ varchar(15) ]

Atividades

    id_atividade {PK}
    encontro {boolean}
    batismo {boolean}
    ccc {boolean}
    ctl {boolean}
    casado_a {boolean}
    dizimista {boolean}

Frequencia

frequencia N <--> 1 celula

frequencia 1 <--> 1 membro

    id_frequencia {pk}
    id_celula {PK}
    data {date}
    membro {FK}

