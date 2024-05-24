Dicas
MySql Workbench 2 click no banco para selecionar e não precisar ficar colocando nome na frente da tabela 

--corrigir erro do sqlServer para deixar fazer update e insert 
set sql_safe_updates = 0;

-- opções do menu e permissões de tela
select * from nv_opcaosistema

INSERT INTO `zagenda`.`nv_opcaosistema` (`idtb_opcaosistema`, `nom_opcao`, `ind_tipo`, `num_sequencia`, `nom_url`, `nom_icon`, `nom_escopo`, `idtb_sistema`, `ind_ativo`) VALUES ('39', 'Manutenção Sub-Grupo', 'MENU', '1', '/subgrupoacesso', 'users', 'manutencao_subgrupoacesso', '4', 'S');


-- tabela de acessos
select * from nv_usuarioacesso
select * from sa_grupo_usuarioacesso
select * from nv_grupo

-- permissoes
select * from nv_permissao

-- Estrutura

-- /inc   (acesso ao banco / SQL)
-- /views (interface / HTML)
-- /routes  (controles / index - Navegação / especifico)

router.get("/usuarioacesso", (req, res, next) => {
  res.render("usuarioacesso", {       // exatamente o nome da tela.
    title: "Usuario Acesso",
    url: req.url,
    user: req.session.user,
    menus: req.menus,
  });

