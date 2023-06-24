CREATE TABLE emails_colaboradores (
                id_email NUMERIC(38) NOT NULL,
                email VARCHAR(255) NOT NULL,
                tipo_email VARCHAR NOT NULL,
                status_email VARCHAR(255) NOT NULL,
                data_cadastro_email DATE,
                CONSTRAINT emails_colaboradores_pk PRIMARY KEY (id_email)
);
COMMENT ON TABLE emails_colaboradores IS 'Tabela com dados acerca do email dos funcionarios.';
COMMENT ON COLUMN emails_colaboradores.id_email IS 'Coluna com dados acerca do id do email.';
COMMENT ON COLUMN emails_colaboradores.email IS 'Coluna com dados acerca do email do funcionario.';
COMMENT ON COLUMN emails_colaboradores.tipo_email IS 'Coluna com dados acerca do tipo do email do funcionario, sendo pessoal, empresarial, secundario.';
COMMENT ON COLUMN emails_colaboradores.status_email IS 'Coluna com dados acerca do status do email, sendo ativo/desativado.';
COMMENT ON COLUMN emails_colaboradores.data_cadastro_email IS 'Coluna com dados acerca da data de cadastro do email no perfil do funcionario.';


CREATE TABLE telefones (
                id_telefone NUMERIC(38) NOT NULL,
                telefone NUMERIC(12) NOT NULL,
                tipo_telefone VARCHAR(255) NOT NULL,
                data_de_vigencia DATE,
                status VARCHAR(255) NOT NULL,
                data_cadastro DATE NOT NULL,
                CONSTRAINT telefones_pk PRIMARY KEY (id_telefone)
);
COMMENT ON TABLE telefones IS 'Tabela com dados acerca do telefone dos funcionarios.';
COMMENT ON COLUMN telefones.id_telefone IS 'Coluna com dados acerca do id do telefone.';
COMMENT ON COLUMN telefones.telefone IS 'Coluna com dados acerca do numero de telefone.';
COMMENT ON COLUMN telefones.tipo_telefone IS 'Coluna com dados acerca do tipo do telefone, sendo pessoal, empresarial, secundario.';
COMMENT ON COLUMN telefones.data_de_vigencia IS 'Coluna com dados acerca da data de vigencia do telefone.';
COMMENT ON COLUMN telefones.status IS 'Coluna com dados acerca do status do telefone, sendo ativo/inativo.';
COMMENT ON COLUMN telefones.data_cadastro IS 'Coluna com dados acerca da data em que foi cadastrado esse numero no perfil do funcionario.';


CREATE TABLE estados_colaboradores (
                sigla_estado VARCHAR(2) NOT NULL,
                CONSTRAINT estados_colaboradores_pk PRIMARY KEY (sigla_estado)
);
COMMENT ON TABLE estados_colaboradores IS 'Tabela com dados acerca do estado dos colaboradores.';
COMMENT ON COLUMN estados_colaboradores.sigla_estado IS 'Coluna com dados acerca da sigla do estado brasileiro.';


CREATE TABLE cidades_colaboradores (
                id_cidade NUMERIC(38) NOT NULL,
                nome_cidade VARCHAR(255) NOT NULL,
                sigla_estado VARCHAR(2) NOT NULL,
                CONSTRAINT cidades_colaboradores_pk PRIMARY KEY (id_cidade)
);
COMMENT ON TABLE cidades_colaboradores IS 'Tabela com dados acerca da cidade dos colaboradores.';
COMMENT ON COLUMN cidades_colaboradores.id_cidade IS 'Coluna com dados acerca do id da cidade.';
COMMENT ON COLUMN cidades_colaboradores.nome_cidade IS 'Coluna com dados acerca do nome da cidade';
COMMENT ON COLUMN cidades_colaboradores.sigla_estado IS 'Coluna com dados acerca da sigla do estado brasileiro.';


CREATE TABLE logradouros_colaboradores (
                id_logradouro NUMERIC(38) NOT NULL,
                cep NUMERIC(8) NOT NULL,
                rua_nome VARCHAR(255) NOT NULL,
                id_cidade NUMERIC(38) NOT NULL,
                CONSTRAINT logradouros_colaboradores_pk PRIMARY KEY (id_logradouro)
);
COMMENT ON TABLE logradouros_colaboradores IS 'Tabela com dados acerca dos logradouros dos funcionarios.';
COMMENT ON COLUMN logradouros_colaboradores.id_logradouro IS 'Coluna com dados acerca do id do logradouro.';
COMMENT ON COLUMN logradouros_colaboradores.cep IS 'Coluna com dados acerca do cep da rua do funcionario.';
COMMENT ON COLUMN logradouros_colaboradores.rua_nome IS 'Coluna com dados acerca do nome da rua.';
COMMENT ON COLUMN logradouros_colaboradores.id_cidade IS 'Coluna com dados acerca do id da cidade.';


CREATE TABLE gerentes (
                id_gerente NUMERIC(38) NOT NULL,
                nome_gerente VARCHAR(255) NOT NULL,
                data_inicio DATE NOT NULL,
                CONSTRAINT gerentes_pk PRIMARY KEY (id_gerente)
);
COMMENT ON TABLE gerentes IS 'Tabela com dados acerca dos gerentes dos departamentos.';
COMMENT ON COLUMN gerentes.id_gerente IS 'Coluna com dados acerca do id do gerente.';
COMMENT ON COLUMN gerentes.nome_gerente IS 'Coluna com dados acerca do nome do gerente.';
COMMENT ON COLUMN gerentes.data_inicio IS 'Coluna com dados acerca da data de inicio como gerente.';


CREATE TABLE colaboradores (
                cpf NUMERIC(38) NOT NULL,
                nome VARCHAR(255) NOT NULL,
                contratacao DATE NOT NULL,
                cargo VARCHAR(30) NOT NULL,
                sigla_estado VARCHAR(2) NOT NULL,
                id_cidade NUMERIC(38) NOT NULL,
                id_logradouro NUMERIC(38) NOT NULL,
                id_telefone NUMERIC(38) NOT NULL,
                id_email NUMERIC(38) NOT NULL,
                CONSTRAINT colaboradores_pk PRIMARY KEY (cpf)
);
COMMENT ON TABLE colaboradores IS 'Tabela com dados acerca dos colaboradores.';
COMMENT ON COLUMN colaboradores.cpf IS 'Coluna com dados acerca do cpf dos colaboradores.';
COMMENT ON COLUMN colaboradores.nome IS 'Coluna com dados acerca do nome dos colaboradores';
COMMENT ON COLUMN colaboradores.contratacao IS 'Coluna com dados acerca da data de contratacao do funcionario.';
COMMENT ON COLUMN colaboradores.cargo IS 'Coluna com dados acerca do cargo do funcionario.';
COMMENT ON COLUMN colaboradores.sigla_estado IS 'Coluna com dados acerca da sigla do estado brasileiro.';
COMMENT ON COLUMN colaboradores.id_cidade IS 'Coluna com dados acerca do id da cidade.';
COMMENT ON COLUMN colaboradores.id_logradouro IS 'Coluna com dados acerca do id do logadouro.';
COMMENT ON COLUMN colaboradores.id_telefone IS 'Coluna com dados acerca do id do telefone.';
COMMENT ON COLUMN colaboradores.id_email IS 'Coluna com dados acerca do id do email.';


CREATE TABLE departamentos (
                id_departamento NUMERIC(38) NOT NULL,
                id_gerente NUMERIC(38) NOT NULL,
                nome_departamento VARCHAR(255) NOT NULL,
                cpf NUMERIC(38) NOT NULL,
                CONSTRAINT departamentos_pk PRIMARY KEY (id_departamento, id_gerente)
);
COMMENT ON TABLE departamentos IS 'Tabela com dados acerca do departamento dos funcionarios.';
COMMENT ON COLUMN departamentos.id_departamento IS 'Coluna com dados acerca do id do departamento.';
COMMENT ON COLUMN departamentos.id_gerente IS 'Coluna com dados acerca do id do gerente.';
COMMENT ON COLUMN departamentos.nome_departamento IS 'Coluna com dados acerca do nome do departamento.';
COMMENT ON COLUMN departamentos.cpf IS 'Coluna com dados acerca do cpf dos colaboradores.';


CREATE TABLE hobbies (
                id_hobbie NUMERIC(38) NOT NULL,
                tempo_pratica TIMESTAMP NOT NULL,
                nome_hobbie VARCHAR(255) NOT NULL,
                cpf NUMERIC(38) NOT NULL,
                CONSTRAINT hobbies_pk PRIMARY KEY (id_hobbie)
);
COMMENT ON TABLE hobbies IS 'Tabela com dados acerca dos hobbies dos funcionarios.';
COMMENT ON COLUMN hobbies.id_hobbie IS 'Coluna com dados acerca do id do hobbie.';
COMMENT ON COLUMN hobbies.tempo_pratica IS 'Coluna com dados acerca do tempo de pratica do hobbie pelo funcionario.';
COMMENT ON COLUMN hobbies.nome_hobbie IS 'Coluna com dados acerca do nome do hobbie.';
COMMENT ON COLUMN hobbies.cpf IS 'Coluna com dados acerca do cpf dos colaboradores.';


CREATE TABLE favoritos (
                id_funcionario_favoritando NUMERIC(38) NOT NULL,
                id_funcionario_favorito NUMERIC(38),
                cpf NUMERIC(38) NOT NULL,
                CONSTRAINT favoritos_pk PRIMARY KEY (id_funcionario_favoritando)
);
COMMENT ON COLUMN favoritos.id_funcionario_favoritando IS 'Coluna com dados acerca do id do funcionario que está favoritando outro funcionario.';
COMMENT ON COLUMN favoritos.id_funcionario_favorito IS 'Coluna com dados acerca do id do funcionario favorito selecionado.';
COMMENT ON COLUMN favoritos.cpf IS 'Coluna com dados acerca do cpf dos colaboradores.';


CREATE TABLE habilidades (
                id_habilidade NUMERIC(38) NOT NULL,
                classe VARCHAR(255) NOT NULL,
                nome_habilidade VARCHAR(255) NOT NULL,
                tempo_pratica TIMESTAMP NOT NULL,
                cpf NUMERIC(38) NOT NULL,
                CONSTRAINT habilidades_pk PRIMARY KEY (id_habilidade)
);
COMMENT ON TABLE habilidades IS 'Coluna com dados acerca da habilidade do funcionario.';
COMMENT ON COLUMN habilidades.id_habilidade IS 'Coluna com dados acerca do id da habilidade.';
COMMENT ON COLUMN habilidades.classe IS 'Coluna com dados acerca da classe da habilidade, sendo soft skill ou hard skill.';
COMMENT ON COLUMN habilidades.nome_habilidade IS 'Coluna com dados acerca do nome da habilidade .';
COMMENT ON COLUMN habilidades.tempo_pratica IS 'Coluna com dados acerca do tempo de pratica da habilidade.';
COMMENT ON COLUMN habilidades.cpf IS 'Coluna com dados acerca do cpf dos colaboradores.';


CREATE TABLE ferramentas (
                id_ferramenta NUMERIC(38) NOT NULL,
                nome_ferramenta VARCHAR(255) NOT NULL,
                cpf NUMERIC(38) NOT NULL,
                CONSTRAINT ferramentas_pk PRIMARY KEY (id_ferramenta)
);
COMMENT ON TABLE ferramentas IS 'Tabela com dados acerca das ferramentas utilizadas pelo funcionario.';
COMMENT ON COLUMN ferramentas.id_ferramenta IS 'Coluna com dados acerca do id da ferramenta.';
COMMENT ON COLUMN ferramentas.nome_ferramenta IS 'Coluna com dados acerca do nome da ferramenta.';
COMMENT ON COLUMN ferramentas.cpf IS 'Coluna com dados acerca do cpf dos colaboradores.';


ALTER TABLE colaboradores ADD CONSTRAINT emails_colaboradores_colaboradores_fk
FOREIGN KEY (id_email)
REFERENCES emails_colaboradores (id_email)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE colaboradores ADD CONSTRAINT telefones_colaboradores_fk
FOREIGN KEY (id_telefone)
REFERENCES telefones (id_telefone)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE colaboradores ADD CONSTRAINT estados_colaboradores_colaboradores_fk
FOREIGN KEY (sigla_estado)
REFERENCES estados_colaboradores (sigla_estado)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE cidades_colaboradores ADD CONSTRAINT estados_colaboradores_cidades_colaboradores_fk
FOREIGN KEY (sigla_estado)
REFERENCES estados_colaboradores (sigla_estado)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE colaboradores ADD CONSTRAINT cidades_colaboradores_colaboradores_fk
FOREIGN KEY (id_cidade)
REFERENCES cidades_colaboradores (id_cidade)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE logradouros_colaboradores ADD CONSTRAINT cidades_colaboradores_logadouros_colaboradores_fk
FOREIGN KEY (id_cidade)
REFERENCES cidades_colaboradores (id_cidade)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE colaboradores ADD CONSTRAINT logadouros_colaboradores_colaboradores_fk
FOREIGN KEY (id_logradouro)
REFERENCES logradouros_colaboradores (id_logradouro)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE departamentos ADD CONSTRAINT gerentes_departamentos_fk
FOREIGN KEY (id_gerente)
REFERENCES gerentes (id_gerente)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE ferramentas ADD CONSTRAINT colaboradores_ferramentas_fk
FOREIGN KEY (cpf)
REFERENCES colaboradores (cpf)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE habilidades ADD CONSTRAINT colaboradores_habilidades_fk
FOREIGN KEY (cpf)
REFERENCES colaboradores (cpf)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE favoritos ADD CONSTRAINT colaboradores_favoritos_fk
FOREIGN KEY (cpf)
REFERENCES colaboradores (cpf)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE hobbies ADD CONSTRAINT colaboradores_hobbies_fk
FOREIGN KEY (cpf)
REFERENCES colaboradores (cpf)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE departamentos ADD CONSTRAINT colaboradores_departamentos_fk
FOREIGN KEY (cpf)
REFERENCES colaboradores (cpf)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE emails_colaboradores
ADD CONSTRAINT chk_tipo_email
CHECK (tipo_email IN ('empresarial', 'pessoal', 'secundário'));

ALTER TABLE habilidades
ADD CONSTRAINT chk_tipo_habilidade
CHECK (tipo IN ('hard skill', 'soft skill'));

ALTER TABLE telefones
ADD CONSTRAINT chk_tipo_telefone
CHECK (tipo_telefone IN ('empresarial', 'pessoal', 'secundario'));