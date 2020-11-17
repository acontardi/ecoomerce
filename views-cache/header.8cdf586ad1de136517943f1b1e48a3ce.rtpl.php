<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>Admin Biju</title>
  <!-- Diga ao navegador para responder à largura da tela -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <!-- Bootstrap 3.3.6 -->
  <link rel="stylesheet" href="/res/admin/bootstrap/css/bootstrap.min.css">
  <!-- Fonte incrível -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
  <!-- Estilo do tema -->
  <link rel="stylesheet" href="/res/admin/dist/css/AdminLTE.min.css">
  <link rel="stylesheet" href="/res/admin/dist/css/skins/skin-blue.min.css">

  <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->
</head>
<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">

  <!-- Cabeçalho Principal -->
  <header class="main-header">

    <!-- Logotipo -->
    <a href="index2.html" class="logo">
      <!-- mini logo para mini 50x50 pixels da barra lateral -->
      <span class="logo-mini"><b>A</b>Biju</span>
      <!-- logotipo para aparelhos regulares e dispositivos móveis -->
      <span class="logo-lg"><b>Admin</b>Biju</span>
    </a>

    <!-- Header Navbar -->
    <nav class="navbar navbar-static-top" role="navigation">
      <!-- Botão de alternância da barra lateral-->
      <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
        <span class="sr-only">Alternar de navegação</span>
      </a>
      <!-- Menu direito da barra de navegação -->
      <div class="navbar-custom-menu">
        <ul class="nav navbar-nav">
          <!-- Mensagens: o estilo pode ser encontrado em dropdown.less-->
          <li class="dropdown messages-menu">
            <!-- Botão de alternância do menu -->
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
              <i class="fa fa-envelope-o"></i>
              <span class="label label-success">4</span>
            </a>
            <ul class="dropdown-menu">
              <li class="header">Você tem 4 mensagens</li>
              <li>
                <!-- menu interno: contém as mensagens -->
                <ul class="menu">
                  <li><!-- mensagem inicial -->
                    <a href="#">
                      <div class="pull-left">
                        <!-- Imagem do usuário -->
                        <img src="/res/admin/dist/img/user2-160x160.jpg" class="img-circle" alt="User Image">
                      </div>
                      <!-- Título da mensagem e carimbo de data / hora -->
                      <h4>
                        Equipe de Apoio
                        <small><i class="fa fa-clock-o"></i> 5 mins</small>
                      </h4>
                      <!-- A mensagem -->
                      <p>Por que não comprar um novo tema incrível?</p>
                    </a>
                  </li>
                  <!-- fim da mensagem -->
                </ul>
                <!-- /.menu -->
              </li>
              <li class="footer"><a href="#">Ver todas as mensagens</a></li>
            </ul>
          </li>
          <!-- /.Menu-mensagem -->

          <!-- Menu de notificação -->
          <li class="dropdown notifications-menu">
            <!-- Botão de alternância do menu -->
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
              <i class="fa fa-bell-o"></i>
              <span class="label label-warning">10</span>
            </a>
            <ul class="dropdown-menu">
              <li class="header">Você tem 10 notificações</li>
              <li>
                <!-- Menu interno: contém as notificações -->
                <ul class="menu">
                  <li><!-- iniciar notificação -->
                    <a href="#">
                      <i class="fa fa-users text-aqua"></i> 5 novos membros ingressaram hoje
                    </a>
                  </li>
                  <!-- fim notificação -->
                </ul>
              </li>
              <li class="footer"><a href="#">Ver tudo</a></li>
            </ul>
          </li>
          <!-- Menu de Tarefas -->
          <li class="dropdown tasks-menu">
            <!-- Botão de alternância do menu -->
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
              <i class="fa fa-flag-o"></i>
              <span class="label label-danger">9</span>
            </a>
            <ul class="dropdown-menu">
              <li class="header">Você tem 9 tarefas</li>
              <li>
                <!-- Menu interno: contém as tarefas -->
                <ul class="menu">
                  <li><!-- Item de tarefa -->
                    <a href="#">
                      <!-- Título da tarefa e texto de progresso -->
                      <h3>
                        Desenhe alguns botões
                        <small class="pull-right">20%</small>
                      </h3>
                      <!-- A barra de progresso -->
                      <div class="progress xs">
                        <!-- Altere o atributo css width para simular o progresso -->
                        <div class="progress-bar progress-bar-aqua" style="width: 20%" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100">
                          <span class="sr-only">20% Complete</span>
                        </div>
                      </div>
                    </a>
                  </li>
                  <!-- fim Item de tarefa -->
                </ul>
              </li>
              <li class="footer">
                <a href="#">Ver todas as tarefas</a>
              </li>
            </ul>
          </li>
          <!-- Menu da conta do usuário -->
          <li class="dropdown user user-menu">
            <!-- Botão de alternância do menu -->
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
              <!-- A imagem do usuário na barra de navegação-->
              <img src="/res/admin/dist/img/user2-160x160.jpg" class="user-image" alt="User Image">
              <!-- oculto-xs esconde o nome de usuário em pequenos dispositivos para que apenas a imagem apareça. -->
              <span class="hidden-xs">Antonio Contardi</span>
            </a>
            <ul class="dropdown-menu">
              <!-- A imagem do usuário no menu -->
              <li class="user-header">
                <img src="/res/admin/dist/img/user2-160x160.jpg" class="img-circle" alt="User Image">

                <p>
                  Antonio Contardi - Web Developer
                  <small>Nov. 2020</small>
                </p>
              </li>
              <!-- Corpo do Menu -->
              <li class="user-body">
                <div class="row">
                  <div class="col-xs-4 text-center">
                    <a href="#">Seguidores</a>
                  </div>
                  <div class="col-xs-4 text-center">
                    <a href="#">Vendas</a>
                  </div>
                  <div class="col-xs-4 text-center">
                    <a href="#">Amigos</a>
                  </div>
                </div>
                <!-- /.linha -->
              </li>
              <!-- Rodapé do Menu-->
              <li class="user-footer">
                <div class="pull-left">
                  <a href="#" class="btn btn-default btn-flat">Perfil</a>
                </div>
                <div class="pull-right">
                  <a href="#" class="btn btn-default btn-flat">Sair</a>
                </div>
              </li>
            </ul>
          </li>
          <!-- Botão de alternância da barra lateral de controle -->
          <li>
            <a href="#" data-toggle="control-sidebar"><i class="fa fa-gears"></i></a>
          </li>
        </ul>
      </div>
    </nav>
  </header>
  <!-- Coluna do lado esquerdo. contém o logotipo e a barra lateral -->
  <aside class="main-sidebar">

    <!-- barra lateral: o estilo pode ser encontrado na barra lateral.Menos -->
    <section class="sidebar">

      <!-- Painel do usuário da barra lateral (opcional) -->
      <div class="user-panel">
        <div class="pull-left image">
          <img src="/res/admin/dist/img/user2-160x160.jpg" class="img-circle" alt="User Image">
        </div>
        <div class="pull-left info">
          <p>Antonio Contardi</p>
          <!-- Status -->
          <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
        </div>
      </div>

      <!-- formulário de pesquisa (opcional) -->
      <form action="#" method="get" class="sidebar-form">
        <div class="input-group">
          <input type="text" name="q" class="form-control" placeholder="Search...">
              <span class="input-group-btn">
                <button type="submit" name="search" id="search-btn" class="btn btn-flat"><i class="fa fa-search"></i>
                </button>
              </span>
        </div>
      </form>
      <!-- /.formulário de pesquisa -->

      <!-- Menu da barra lateral -->
      <ul class="sidebar-menu">
        <li class="header">CABEÇALHO</li>
        <!-- Opcionalmente, você pode adicionar ícones aos links -->
        <li class="active"><a href="#"><i class="fa fa-link"></i> <span>Produto</span></a></li>
        <li><a href="#"><i class="fa fa-link"></i> <span>Categoria</span></a></li>
        <li class="treeview">
          <a href="#"><i class="fa fa-link"></i> <span>Usuarios</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li><a href="#">Link in level 2</a></li>
            <li><a href="#">Link in level 2</a></li>
          </ul>
        </li>
      </ul>
      <!-- /. Menu da barra lateral -->
    </section>
    <!-- /.Barra Lateral -->
  </aside>