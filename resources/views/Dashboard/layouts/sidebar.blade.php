<div class="nav-left-sidebar sidebar-dark">
    <div class="menu-list">
        <nav class="navbar navbar-expand-lg navbar-light">
            <a class="d-xl-none d-lg-none" href="#">Dashboard</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav"
                aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav flex-column">
                    <li class="nav-divider">
                        Menu
                    </li>
                    
                    <li class="nav-item ">
                        <a class="nav-link " href="{{ route('dashboard') }}">
                            <i class="fas fa-shopping-bag"></i>Table de bord <span class="badge badge-success">6</span>
                        </a>
                    </li>
                    <li class="nav-item ">
                        <a class="nav-link " href="#" data-toggle="collapse" aria-expanded="false"
                            data-target="#submenu-3 " aria-controls="submenu-3"><i class="fas fa-shopping-bag"></i>Gestion des produits <span class="badge badge-success">6</span>
                        </a>
                        <div id="submenu-3" class="collapse submenu" style="">
                            <ul class="nav flex-column">
                                <li class="nav-item">
                                    <a class="nav-link" href="{{ route('products.index') }}">Tout les produits</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="{{ route('products.create') }}">Ajouter un produit</a>
                                </li>
                            </ul>
                        </div>
                    </li>
                    
                    <li class="nav-item ">
                        <a class="nav-link " href="{{ route('companys.index') }}"><i class="fas fa-building"></i>Paramètres de l'entreprise <span class="badge badge-success">6</span></a>
                    </li>
                    
                    <li class="nav-item ">
                        <a class="nav-link " href="#" data-toggle="collapse" aria-expanded="false"
                            data-target="#submenu-1" aria-controls="submenu-1"><i
                                class="fas fa-user"></i>Gestion des
                            utilisateurs <span class="badge badge-success">6</span></a>
                        <div id="submenu-1" class="collapse submenu" style="">
                            <ul class="nav flex-column">
                                <li class="nav-item">
                                    <a class="nav-link" href="{{ route('users.index') }}">Tout les utilisateurs</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="{{ route('users.index') }}">Ajouter utilisateurs</a>
                                </li>
                            </ul>
                        </div>
                    </li>
                    
                   
                    <li class="nav-item ">
                        <a class="nav-link " href="#" data-toggle="collapse" aria-expanded="false" data-target="#submenu-2" aria-controls="submenu-2"><i
                                class="fas fa-users"></i>Gestion des clients <span class="badge badge-success">6</span></a>
                        <div id="submenu-2" class="collapse submenu" style="">
                            <ul class="nav flex-column">
                                <li class="nav-item">
                                    <a class="nav-link" href="{{ route('clients.index') }}">Tout les clients</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="{{ route('clients.create') }}">Ajouter client</a>
                                </li>
                            </ul>
                        </div>
                    </li>

                    <li class="nav-item ">
                        <a class="nav-link " href="#" data-toggle="collapse" aria-expanded="false" data-target="#submenu-5" aria-controls="submenu-5"><i
                                class="fas fa-shopping-cart"></i>Gestion des commande <span class="badge badge-success">6</span></a>
                        <div id="submenu-5" class="collapse submenu" style="">
                            <ul class="nav flex-column">
                                <li class="nav-item">
                                    <a class="nav-link" href="{{ route('orders.index') }}">Tout les commands</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="{{ route('orders.create') }}">Ajouter command</a>
                                </li>
                            </ul>
                        </div>
                    </li>
                </ul>
            </div>
        </nav>
    </div>
</div>