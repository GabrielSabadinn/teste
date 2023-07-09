create database MeuBancoDeDados;
use MeuBancoDeDados;
CREATE SCHEMA Geral;
CREATE SCHEMA CND;

CREATE TABLE Geral.Estado (
    id INT AUTO_INCREMENT NOT NULL,
    sigla CHAR(2) NOT NULL,
    estado NVARCHAR(20) NOT NULL,
    cod_ibge INT NULL,
    capital NVARCHAR(30) NULL,
    PRIMARY KEY (id)
);


INSERT INTO Geral.Estado (sigla, estado, cod_ibge, capital)
VALUES ('AC', 'Acre', 12, 'Rio Branco');


INSERT INTO Geral.Estado (sigla, estado, cod_ibge, capital)
VALUES ('AL', 'Alagoas', 27, 'Maceió');


INSERT INTO Geral.Estado (sigla, estado, cod_ibge, capital)
VALUES ('AP', 'Amapá', 16, 'Macapá');


INSERT INTO Geral.Estado (sigla, estado, cod_ibge, capital)
VALUES ('AM', 'Amazonas', 13, 'Manaus');


INSERT INTO Geral.Estado (sigla, estado, cod_ibge, capital)
VALUES ('BA', 'Bahia', 29, 'Salvador');


INSERT INTO Geral.Estado (sigla, estado, cod_ibge, capital)
VALUES ('CE', 'Ceará', 23, 'Fortaleza');


INSERT INTO Geral.Estado (sigla, estado, cod_ibge, capital)
VALUES ('DF', 'Distrito Federal', 53, 'Brasília');


INSERT INTO Geral.Estado (sigla, estado, cod_ibge, capital)
VALUES ('ES', 'Espírito Santo', 32, 'Vitória');


INSERT INTO Geral.Estado (sigla, estado, cod_ibge, capital)
VALUES ('GO', 'Goiás', 52, 'Goiânia');


INSERT INTO Geral.Estado (sigla, estado, cod_ibge, capital)
VALUES ('MA', 'Maranhão', 21, 'São Luís');


INSERT INTO Geral.Estado (sigla, estado, cod_ibge, capital)
VALUES ('MT', 'Mato Grosso', 51, 'Cuiabá');


INSERT INTO Geral.Estado (sigla, estado, cod_ibge, capital)
VALUES ('MS', 'Mato Grosso do Sul', 50, 'Campo Grande');


INSERT INTO Geral.Estado (sigla, estado, cod_ibge, capital)
VALUES ('MG', 'Minas Gerais', 31, 'Belo Horizonte');


INSERT INTO Geral.Estado (sigla, estado, cod_ibge, capital)
VALUES ('PA', 'Pará', 15, 'Belém');


INSERT INTO Geral.Estado (sigla, estado, cod_ibge, capital)
VALUES ('PB', 'Paraíba', 25, 'João Pessoa');


INSERT INTO Geral.Estado (sigla, estado, cod_ibge, capital)
VALUES ('PR', 'Paraná', 41, 'Curitiba');


INSERT INTO Geral.Estado (sigla, estado, cod_ibge, capital)
VALUES ('PE', 'Pernambuco', 26, 'Recife');


INSERT INTO Geral.Estado (sigla, estado, cod_ibge, capital)
VALUES ('PI', 'Piauí', 22, 'Teresina');


INSERT INTO Geral.Estado (sigla, estado, cod_ibge, capital)
VALUES ('RJ', 'Rio de Janeiro', 33, 'Rio de Janeiro');


INSERT INTO Geral.Estado (sigla, estado, cod_ibge, capital)
VALUES ('RN', 'Rio Grande do Norte', 24, 'Natal');


INSERT INTO Geral.Estado (sigla, estado, cod_ibge, capital)
VALUES ('RS', 'Rio Grande do Sul', 43, 'Porto Alegre');


INSERT INTO Geral.Estado (sigla, estado, cod_ibge, capital)
VALUES ('RO', 'Rondônia', 11, 'Porto Velho');


INSERT INTO Geral.Estado (sigla, estado, cod_ibge, capital)
VALUES ('RR', 'Roraima', 14, 'Boa Vista');


INSERT INTO Geral.Estado (sigla, estado, cod_ibge, capital)
VALUES ('SC', 'Santa Catarina', 42, 'Florianópolis');


INSERT INTO Geral.Estado (sigla, estado, cod_ibge, capital)
VALUES ('SP', 'São Paulo', 35, 'São Paulo');


INSERT INTO Geral.Estado (sigla, estado, cod_ibge, capital)
VALUES ('SE', 'Sergipe', 28, 'Aracaju');


INSERT INTO Geral.Estado (sigla, estado, cod_ibge, capital)
VALUES ('TO', 'Tocantins', 17, 'Palmas');


INSERT INTO Geral.Estado (sigla, estado, cod_ibge, capital)
VALUES ('NA', 'Nacional', 1058, 'Brasília');


CREATE TABLE CND.Federal (
    id INT AUTO_INCREMENT NOT NULL,
    titulo NVARCHAR(50) NOT NULL,
    link NVARCHAR(150) NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO CND.Federal (titulo, link)
VALUES ('RFB - Pessoa Física', 'https://servicos.receita.fazenda.gov.br/Servicos/certidaointernet/PF/Emitir')
;

INSERT INTO CND.Federal (titulo, link)
VALUES ('RFB - Pessoa Jurídica', 'https://servicos.receita.fazenda.gov.br/Servicos/certidaointernet/PJ/Emitir')
;

INSERT INTO CND.Federal (titulo, link)
VALUES ('FGTS - CRF', 'https://consulta-crf.caixa.gov.br/consultacrf/pages/consultaEmpregador.jsf')
;

INSERT INTO CND.Federal (titulo, link)
VALUES ('Previdência Social (CNO)', 'https://www.gov.br/pt-br/servicos/emitir-certidao-de-regularidade-fiscal-de-obra')
;

INSERT INTO CND.Federal (titulo, link)
VALUES ('Certidão de Quitação Eleitoral', 'https://www.tse.jus.br/eleitor/certidoes/certidao-de-quitacao-eleitoral')
;

INSERT INTO CND.Federal (titulo, link)
VALUES ('Certidão de Débitos Trabalhistas', 'https://cndt-certidao.tst.jus.br/inicio.faces');


CREATE TABLE CND.Estadual (
    id INT AUTO_INCREMENT NOT NULL,
    titulo NVARCHAR(50) NOT NULL,
    link NVARCHAR(200) NOT NULL,
    id_estado INT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (id_estado) REFERENCES Geral.Estado(id)
);


INSERT INTO CND.Estadual (titulo, link, id_estado)
VALUES ('Acre', 'http://sefaznet.ac.gov.br/sefazonline/servlet/wemcnd', 1)
;

INSERT INTO CND.Estadual (titulo, link, id_estado)
VALUES ('Alagoas', 'http://apl03.sefaz.al.gov.br/certidao/', 2)
;

INSERT INTO CND.Estadual (titulo, link, id_estado)
VALUES ('Amapá', 'http://www.sefaz.ap.gov.br/sate/seg/SEGf_AcessarFuncao.jsp?cdFuncao=DIA_060', 3)
;

INSERT INTO CND.Estadual (titulo, link, id_estado)
VALUES ('Amazonas', '#', 4)
;

INSERT INTO CND.Estadual (titulo, link, id_estado)
VALUES ('Bahia', '#', 5)
;

INSERT INTO CND.Estadual (titulo, link, id_estado)
VALUES ('Ceará', 'http://www.sefaz.ce.gov.br/content//aplicacao/internet/servicos_online/certidao/emissao/default.asp', 6)
;

INSERT INTO CND.Estadual (titulo, link, id_estado)
VALUES ('Distrito Federal', 'http://www.fazenda.df.gov.br/area.cfm?id_area=449', 7)
;

INSERT INTO CND.Estadual (titulo, link, id_estado)
VALUES ('Espírito Santo', 'http://internet.sefaz.es.gov.br/agenciavirtual/area_publica/cnd/emissao.php', 8)
;

INSERT INTO CND.Estadual (titulo, link, id_estado)
VALUES ('Goiás', 'http://aplicacao.sefaz.go.gov.br/pagina/ver/9429', 9)
;

INSERT INTO CND.Estadual (titulo, link, id_estado)
VALUES ('Maranhão', 'http://sistemas.sefaz.ma.gov.br/certidoes/jsp/emissaoCertidaoNegativa/emissaoCertidaoNegativa.jsf', 10)
;

INSERT INTO CND.Estadual (titulo, link, id_estado)
VALUES ('Mato Grosso', 'https://www.sefaz.mt.gov.br/cnd/certidao/servlet/ServletRotd?origem=60', 11)
;

INSERT INTO CND.Estadual (titulo, link, id_estado)
VALUES ('Mato Grosso do Sul', 'http://www.icmstransparente.ms.gov.br/index.aspx?sf=http://www1.sefaz.ms.gov.br/cnd/EmiteCert.asp', 12)
;

INSERT INTO CND.Estadual (titulo, link, id_estado)
VALUES ('Minas Gerais', 'https://www2.fazenda.mg.gov.br/sol/', 13)
;

INSERT INTO CND.Estadual (titulo, link, id_estado)
VALUES ('Pará', 'https://app.sefa.pa.gov.br/emissao-certidao/template.action', 14)
;

INSERT INTO CND.Estadual (titulo, link, id_estado)
VALUES ('Paraíba', 'https://www.receita.pb.gov.br/ser/servirtual/certidoes/emissao-de-certidao-de-debitos-cidadao', 15)
;

INSERT INTO CND.Estadual (titulo, link, id_estado)
VALUES ('Paraná', 'http://www.fazenda.pr.gov.br/modules/conteudo/conteudo.php?conteudo=265', 16)
;

INSERT INTO CND.Estadual (titulo, link, id_estado)
VALUES ('Pernambuco', 'http://efisco.sefaz.pe.gov.br/sfi_trb_gpf/PREmitirCertidaoNegativaNarrativaDebitoFiscal', 17)
;

INSERT INTO CND.Estadual (titulo, link, id_estado)
VALUES ('Piauí', 'http://webas.sefaz.pi.gov.br/certidaoNegativa/jsp/consultarSolicitacaoContribuinte.jsp', 18)
;

INSERT INTO CND.Estadual (titulo, link, id_estado)
VALUES ('Rio de Janeiro', 'http://www4.fazenda.rj.gov.br/certidao-fiscal-web/emitirCertidao.jsf', 19)
;

INSERT INTO CND.Estadual (titulo, link, id_estado)
VALUES ('Rio Grande do Norte', 'http://certidoes.control.rn.gov.br/certidaosite.aspx', 20)
;

INSERT INTO CND.Estadual (titulo, link, id_estado)
VALUES ('Rio Grande do Sul', 'https://www.sefaz.rs.gov.br/sat/CER-PUB-SOL.aspx', 21)
;

INSERT INTO CND.Estadual (titulo, link, id_estado)
VALUES ('Rondônia', 'https://portalcontribuinte.sefin.ro.gov.br/Publico/certidaoNegativa.jsp', 22)
;

INSERT INTO CND.Estadual (titulo, link, id_estado)
VALUES ('Roraima', 'https://portalapp.sefaz.rr.gov.br/siate/servlet/wp_siate_emitircndcentralservicopublica', 23)
;

INSERT INTO CND.Estadual (titulo, link, id_estado)
VALUES ('Santa Catarina', 'https://tributario.sef.sc.gov.br/tax.Net/tax.net.ctacte/CND_Solicitacao_v2.aspx', 24)
;

INSERT INTO CND.Estadual (titulo, link, id_estado)
VALUES ('São Paulo', 'http://www.pfe.fazenda.sp.gov.br/guia_procedimentos_certidao.shtm', 25)
;

INSERT INTO CND.Estadual (titulo, link, id_estado)
VALUES ('Sergipe', 'https://security.sefaz.se.gov.br/internet/publico/process.jsp?AppName=SIC&amp;TransId=T24070&amp;aba=contribuinte&amp;CancelUrl=/internet/index.jsp?arquivo=contribuinte.jsp;aba=contribuinte', 26)
;

INSERT INTO CND.Estadual (titulo, link, id_estado)
VALUES ('Tocantins', 'http://www.sefaz.to.gov.br/empresa/certidao-e-situacao-fiscal/cnd---certidao-negativa-de-debitos/', 27)
;


CREATE TABLE CND.Municipal (
    id INT AUTO_INCREMENT NOT NULL,
    titulo NVARCHAR(50) NOT NULL,
    link NVARCHAR(150) NOT NULL,
    id_capital INT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (id_capital) REFERENCES Geral.Estado(id)
);


INSERT INTO CND.Municipal (titulo, link, id_capital)
VALUES ('Rio Branco', 'http://www.riobranco.ac.gov.br/index.php/autencidade-certidao-negativa-de-debitos.html', 1)
;

INSERT INTO CND.Municipal (titulo, link, id_capital)
VALUES ('Maceió', 'http://www3.smf.maceio.al.gov.br:8084/e-agata/servlet/hwloginusuario?2', 2)
;

INSERT INTO CND.Municipal (titulo, link, id_capital)
VALUES ('Macapá', 'http://servicos.macapa.ap.gov.br/servicosweb/home.jsf', 3)
;

INSERT INTO CND.Municipal (titulo, link, id_capital)
VALUES ('Manaus', 'http://servicossemef.manaus.am.gov.br/servicosSemef/Servicos2/index.php?nomeArquivo=servicos/cnd/solicitacao_cnd', 4)
;

INSERT INTO CND.Municipal (titulo, link, id_capital)
VALUES ('Salvador', 'https://secure.sefaz.salvador.ba.gov.br/Website/sistema/certidao_negativa/servicos_certidao_negativa.asp', 5)
;

INSERT INTO CND.Municipal (titulo, link, id_capital)
VALUES ('Fortaleza', 'https://www.sefin.fortaleza.ce.gov.br/certidoes#?certidao-negativa-de-debitos-tributos-municipais', 6)
;

INSERT INTO CND.Municipal (titulo, link, id_capital)
VALUES ('Brasília', 'http://www.fazenda.df.gov.br/area.cfm?id_area=449', 7)
;

INSERT INTO CND.Municipal (titulo, link, id_capital)
VALUES ('Vitória', 'http://sistemas.vitoria.es.gov.br/certnegativa/', 8)
;

INSERT INTO CND.Municipal (titulo, link, id_capital)
VALUES ('Goiânia', 'http://www.goiania.go.gov.br/asp/certidao/cer03f.asp', 9)
;

INSERT INTO CND.Municipal (titulo, link, id_capital)
VALUES ('São Luís', 'https://stm.semfaz.saoluis.ma.gov.br/credenciamento/jsp/emissaoCertidao/emissaoPublicaCertidao.jsf', 10)
;

INSERT INTO CND.Municipal (titulo, link, id_capital)
VALUES ('Cuiabá', 'http://emissao.cuiaba.mt.gov.br/portal/', 11)
;

INSERT INTO CND.Municipal (titulo, link, id_capital)
VALUES ('Campo Grande', 'http://portal.capital.ms.gov.br/semre/canaisTexto?id_can=3948', 12)
;

INSERT INTO CND.Municipal (titulo, link, id_capital)
VALUES ('Belo Horizonte', 'http://cndonline.siatu.pbh.gov.br/CNDOnline/', 13)
;

INSERT INTO CND.Municipal (titulo, link, id_capital)
VALUES ('Belém', 'http://ww2.belem.pa.gov.br/cnde-e/cnde/solicitacao/solicitacert.cinb', 14)
;

INSERT INTO CND.Municipal (titulo, link, id_capital)
VALUES ('João Pessoa', 'http://joaopessoa.pb.gov.br/pc/certidaoNegativa.xhtml', 15)
;

INSERT INTO CND.Municipal (titulo, link, id_capital)
VALUES ('Curitiba', 'http://www5.curitiba.pr.gov.br/gtm/certidaonegativa/', 16)
;

INSERT INTO CND.Municipal (titulo, link, id_capital)
VALUES ('Recife', 'http://www.recife.pe.gov.br/sefin/senha/formSeq.php?Nome=MercCert&amp;Tipo=M&amp;OpcCert=E', 17)
;

INSERT INTO CND.Municipal (titulo, link, id_capital)
VALUES ('Teresina', 'http://portal.teresina.pi.gov.br/dsf_the_portal/inicial.do?evento=montaMenu&amp;acronym=PES_CCNDA', 18)
;

INSERT INTO CND.Municipal (titulo, link, id_capital)
VALUES ('Rio de Janeiro', 'http://wpro.rio.rj.gov.br/previrio/beneficios/index.php', 19)
;

INSERT INTO CND.Municipal (titulo, link, id_capital)
VALUES ('Natal', 'http://natal.rn.gov.br/semut/', 20)
;

INSERT INTO CND.Municipal (titulo, link, id_capital)
VALUES ('Porto Alegre', 'http://siat.procempa.com.br/siat/ArrSolicitarCertidaoGeralDebTributarios_Internet.do', 21)
;

INSERT INTO CND.Municipal (titulo, link, id_capital)
VALUES ('Porto Velho', 'http://www.semfazonline.com/certidoes.action', 22)
;

INSERT INTO CND.Municipal (titulo, link, id_capital)
VALUES ('Boa Vista', 'https://boavista.saatri.com.br/', 23)
;

INSERT INTO CND.Municipal (titulo, link, id_capital)
VALUES ('Florianópolis', 'http://portal.pmf.sc.gov.br/servicos/sistema.php?servicoid=3687', 24)
;
INSERT INTO CND.Municipal (titulo, link, id_capital)
VALUES ('São Paulo', 'http://www.prefeitura.sp.gov.br/cidade/secretarias/financas/servicos/certidoes/', 25)
;

INSERT INTO CND.Municipal (titulo, link, id_capital)
VALUES ('Aracaju', 'http://financas.aracaju.se.gov.br/financas/cn/cn_pesquisa.wsp', 26)
;

INSERT INTO CND.Municipal (titulo, link, id_capital)
VALUES ('Palmas', 'http://www.palmas.to.gov.br/servicos/certidao-negativa-de-pessoa-cnd/16/', 27)
;