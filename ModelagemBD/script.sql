/******************************************************************************/
/****        Generated by IBExpert 2021.2.16.1 16/07/2023 12:54:54         ****/
/******************************************************************************/

SET SQL DIALECT 3;

SET NAMES WIN1252;

SET CLIENTLIB 'C:\Program Files\Firebird\Firebird_4_0\WOW64\fbclient.dll';

CREATE DATABASE 'C:\TCC - Gestor de Vistorias\BD\gestor.FDB'
USER 'SYSDBA' PASSWORD 'sci'
PAGE_SIZE 16384
DEFAULT CHARACTER SET WIN1252 COLLATION WIN1252;



/******************************************************************************/
/****                                Tables                                ****/
/******************************************************************************/



CREATE TABLE TAMBIENTE (
    BDCODAMB     INTEGER NOT NULL,
    BDNOME       VARCHAR(60),
    BDOBSADC     VARCHAR(120),
    BDPKCODVIST  INTEGER NOT NULL
);

CREATE TABLE TCLIENTE (
    BDCODCLI    INTEGER NOT NULL,
    BDRASOCIAL  VARCHAR(60),
    BDCNPJ      VARCHAR(14),
    BDENDERECO  VARCHAR(60),
    BDNUMERO    INTEGER,
    BDBAIRRO    VARCHAR(30),
    BDCIDADE    VARCHAR(30),
    BDEMAIL     VARCHAR(30),
    BDTELEFONE  VARCHAR(15)
);

CREATE TABLE TFOTO (
    BDCODFOTO   INTEGER NOT NULL,
    BDDESC      VARCHAR(60),
    BDPKCODAMB  INTEGER NOT NULL,
    BDURL       VARCHAR(120)
);

CREATE TABLE TIMOVEL (
    BDCODIMOVEL   INTEGER NOT NULL,
    BDTIPOIMOVEL  VARCHAR(30),
    BDQUANTAMB    INTEGER,
    BDDATACAD     DATE,
    BDENDERECO    VARCHAR(60),
    BDNUMERO      INTEGER,
    BDBAIRRO      VARCHAR(30),
    BDCIDADE      VARCHAR(30),
    BDPKCODPROP   INTEGER NOT NULL
);

CREATE TABLE TITEM (
    BDCODITEM    INTEGER NOT NULL,
    BDDESCRICAO  VARCHAR(30),
    BDESTADO     VARCHAR(30),
    BDOBSADC     VARCHAR(120),
    BDPKCODAMB   INTEGER NOT NULL
);

CREATE TABLE TLOCATARIO (
    BDCDLOCAT   INTEGER NOT NULL,
    BDNOME      VARCHAR(60),
    BDCPFCNPJ   VARCHAR(14),
    BDEMAIL     VARCHAR(60),
    BDTELEFONE  VARCHAR(60)
);

CREATE TABLE TPROPRIETARIO (
    BDCDPROPR     INTEGER NOT NULL,
    BDNOME        VARCHAR(60),
    BDTIPOPESSOA  VARCHAR(15),
    BDCPFCNPJ     VARCHAR(14),
    BDENDERECO    VARCHAR(60),
    BDNUMERO      INTEGER,
    BDBAIRRO      VARCHAR(30),
    BDCIDADE      VARCHAR(30),
    BDEMAIL       VARCHAR(60),
    BDTELEFONE    VARCHAR(60)
);

CREATE TABLE TUSUARIO (
    BDCODIGO   INTEGER NOT NULL,
    BDUSUARIO  VARCHAR(60),
    BDCPFCNPJ  VARCHAR(14),
    BDPERFIL   VARCHAR(30),
    BDSENHA    VARCHAR(12),
    BDNOME     VARCHAR(60)
);

CREATE TABLE TVISTORIA (
    BDCODVIST     INTEGER NOT NULL,
    BDDATAVIST    DATE,
    BDTIPOLOC     VARCHAR(30),
    BDSITUACAO    VARCHAR(30),
    BDACESSO      VARCHAR(30),
    BDNMEDENE     VARCHAR(30),
    BDLEITENERG   VARCHAR(10),
    BDNMEDAGUA    VARCHAR(30),
    BDLEITAGUA    VARCHAR(10),
    BDPKCODUSU    INTEGER NOT NULL,
    BDPKCODCLT    INTEGER NOT NULL,
    BDPKCODIMOV   INTEGER NOT NULL,
    BDPKCODLOCAT  INTEGER NOT NULL
);



/******************************************************************************/
/****                             Primary keys                             ****/
/******************************************************************************/

ALTER TABLE TAMBIENTE ADD CONSTRAINT PK_AMBIENTE PRIMARY KEY (BDCODAMB);
ALTER TABLE TCLIENTE ADD CONSTRAINT PK_CLIENTE PRIMARY KEY (BDCODCLI);
ALTER TABLE TFOTO ADD CONSTRAINT PK_FOTO PRIMARY KEY (BDCODFOTO);
ALTER TABLE TIMOVEL ADD CONSTRAINT PK_IMOVEL PRIMARY KEY (BDCODIMOVEL);
ALTER TABLE TITEM ADD CONSTRAINT PK_ITEM PRIMARY KEY (BDCODITEM);
ALTER TABLE TLOCATARIO ADD CONSTRAINT PK_LOCATARIO PRIMARY KEY (BDCDLOCAT);
ALTER TABLE TPROPRIETARIO ADD CONSTRAINT PK_PROPRIETARIO PRIMARY KEY (BDCDPROPR);
ALTER TABLE TUSUARIO ADD CONSTRAINT PK_USUARIO PRIMARY KEY (BDCODIGO);
ALTER TABLE TVISTORIA ADD CONSTRAINT PK_VISTORIA PRIMARY KEY (BDCODVIST);


/******************************************************************************/
/****                             Foreign keys                             ****/
/******************************************************************************/

ALTER TABLE TAMBIENTE ADD CONSTRAINT FK_TAMBIENTE_1 FOREIGN KEY (BDPKCODVIST) REFERENCES TVISTORIA (BDCODVIST);
ALTER TABLE TFOTO ADD CONSTRAINT FK_TFOTO_1 FOREIGN KEY (BDPKCODAMB) REFERENCES TAMBIENTE (BDCODAMB);
ALTER TABLE TIMOVEL ADD CONSTRAINT FK_TIMOVEL_1 FOREIGN KEY (BDPKCODPROP) REFERENCES TPROPRIETARIO (BDCDPROPR);
ALTER TABLE TITEM ADD CONSTRAINT FK_TITEM_1 FOREIGN KEY (BDPKCODAMB) REFERENCES TAMBIENTE (BDCODAMB);
ALTER TABLE TVISTORIA ADD CONSTRAINT FK_TVISTORIA_1 FOREIGN KEY (BDPKCODUSU) REFERENCES TUSUARIO (BDCODIGO);
ALTER TABLE TVISTORIA ADD CONSTRAINT FK_TVISTORIA_2 FOREIGN KEY (BDPKCODCLT) REFERENCES TCLIENTE (BDCODCLI);
ALTER TABLE TVISTORIA ADD CONSTRAINT FK_TVISTORIA_3 FOREIGN KEY (BDPKCODIMOV) REFERENCES TIMOVEL (BDCODIMOVEL);
ALTER TABLE TVISTORIA ADD CONSTRAINT FK_TVISTORIA_4 FOREIGN KEY (BDPKCODLOCAT) REFERENCES TLOCATARIO (BDCDLOCAT);


/******************************************************************************/
/****                               Triggers                               ****/
/******************************************************************************/



SET TERM ^ ;



/******************************************************************************/
/****                         Triggers for tables                          ****/
/******************************************************************************/



/* Trigger: TAMBIENTE_BI0 */
CREATE TRIGGER TAMBIENTE_BI0 FOR TAMBIENTE
ACTIVE BEFORE INSERT POSITION 0
AS
begin
  if((NEW.bdcodamb is null) or (NEW.bdcodamb = 0))  then
        begin
            select coalesce(max(bdcodamb) + 1, 1)
            from tambiente into new.bdcodamb;
        end
end
^

/* Trigger: TCLIENTE_BI0 */
CREATE TRIGGER TCLIENTE_BI0 FOR TCLIENTE
ACTIVE BEFORE INSERT POSITION 0
AS
begin
  if((NEW.bdcodcli is null) or (NEW.bdcodcli = 0))  then
        begin
            select coalesce(max(bdcodcli) + 1, 1)
            from tcliente into new.bdcodcli;
        end
end
^

/* Trigger: TFOTO_BI0 */
CREATE TRIGGER TFOTO_BI0 FOR TFOTO
ACTIVE BEFORE INSERT POSITION 0
AS
begin
  if((NEW.bdcodfoto is null) or (NEW.bdcodfoto = 0))  then
        begin
            select coalesce(max(bdcodfoto) + 1, 1)
            from TFOTO into new.bdcodfoto;
        end
end
^

/* Trigger: TIMOVEL_BI0 */
CREATE TRIGGER TIMOVEL_BI0 FOR TIMOVEL
ACTIVE BEFORE INSERT POSITION 0
AS
begin
  if((NEW.bdcodimovel is null) or (NEW.bdcodimovel = 0))  then
        begin
            select coalesce(max(bdcodimovel) + 1, 1)
            from timovel into new.bdcodimovel;
        end
end
^

/* Trigger: TITEM_BI0 */
CREATE TRIGGER TITEM_BI0 FOR TITEM
ACTIVE BEFORE INSERT POSITION 0
AS
begin
  if((NEW.bdcoditem is null) or (NEW.bdcoditem = 0))  then
        begin
            select coalesce(max(bdcoditem) + 1, 1)
            from titem into new.bdcoditem;
        end
end
^

/* Trigger: TLOCATARIO_BI0 */
CREATE TRIGGER TLOCATARIO_BI0 FOR TLOCATARIO
ACTIVE BEFORE INSERT POSITION 0
AS
begin
  if((NEW.bdcdlocat is null) or (NEW.bdcdlocat = 0))  then
        begin
            select coalesce(max(bdcdlocat) + 1, 1)
            from tlocatario into new.bdcdlocat;
        end
end
^

/* Trigger: TPROPRIETARIO_BI0 */
CREATE TRIGGER TPROPRIETARIO_BI0 FOR TPROPRIETARIO
ACTIVE BEFORE INSERT POSITION 0
AS
begin
  if((NEW.bdcdpropr is null) or (NEW.bdcdpropr = 0))  then
        begin
            select coalesce(max(bdcdpropr) + 1, 1)
            from tproprietario into new.bdcdpropr;
        end
end
^

/* Trigger: TUSUARIO_BI0 */
CREATE TRIGGER TUSUARIO_BI0 FOR TUSUARIO
ACTIVE BEFORE INSERT POSITION 0
AS
begin
  if((NEW.bdcodigo is null) or (NEW.bdcodigo = 0))  then
        begin
            select coalesce(max(bdcodigo) + 1, 1)
            from tusuario into new.bdcodigo;
        end
end
^

/* Trigger: TVISTORIA_BI0 */
CREATE TRIGGER TVISTORIA_BI0 FOR TVISTORIA
ACTIVE BEFORE INSERT POSITION 0
AS
begin
  if((NEW.bdcodvist is null) or (NEW.bdcodvist = 0))  then
        begin
            select coalesce(max(bdcodvist) + 1, 1)
            from tvistoria into new.bdcodvist;
        end
end
^
SET TERM ; ^

