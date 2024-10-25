<!DOCTYPE html>
<html>
    <head>
        <title>Publicação</title>
        <link rel="stylesheet" href="{{ asset('css/bootstrap.min.css') }}">
    </head>
    <body>
     
        <div class="container">
            <div class="row align-items-start">
                <div class="col-sm">
                @auth
                    <img class="img-fluid" src="{{ asset('storage/' .Auth::user()->foto)}}" style="width: 150px; height: 150px;">
                    <p>{{ Auth::user()->name }}</p>
                    @endauth
                @guest
                    <img class="img-fluid" src="{{ asset('storage/logo/logo_sabor_do_brasil.png')}}">
                    <div class="row align-items-start">
                        <div class="col-sm">
                             <p>{{  $quantidade_like }} </p>
                             <p>Quantidade likes</p>
                        </div>
                        <div class="col-sm">
                            <p>{{  $quantidade_deslike }} </p>
                            <p>Quantidade deslikes</p>
                        </div>
                    </div>
                @endguest
                </div>
                <div class="col-sm">
                    
                    @foreach ($publicacao as $publicacao)
                        <div class="col-sm"> 

                            <div class="card" style="width: 18rem;">
                                <img class="card-img-top" src="{{ asset('storage/' . $publicacao->foto) }}" alt="Imagem de capa do card">
                                <div class="card-body">
                                    <h5 class="card-title">{{ $publicacao->titulo_prato }}</h5>
                                    <div class="row align-items-start">
                                        <div class="col-sm">
                                            <img class="img-fluid" src="{{ asset('storage/icones/flecha_cima_cheia.svg')}}">
    
                                            @foreach ($publicacao->avaliacao as $avaliacao)
                                                {{ $avaliacao->like }}
                                            @endforeach
                                            
                                            <img class="img-fluid" src="{{ asset('storage/icones/flecha_baixo_cheia.svg')}}">
                                            @foreach ($publicacao->avaliacao as $avaliacao)
                                                {{ $avaliacao->deslike }}
                                            @endforeach
                                        </div>
                                        <div class="col-sm text-right">
                                            <img class="img-fluid" src="{{ asset('storage/icones/chat.svg')}}">
                                            {{ count($publicacao->comentario)}}
                                        </div>
                                    </div>
                                </div>
                                <div class="card-body">
                                    @foreach($comentarios as $comentario)
                                        {{ $comentario->user->name }}
                                        <p>{{ $comentario->conteudo }}</p>
                                    @endforeach
                                </div>
                            </div>
                            
                                                
                        </div> 
                    @endforeach
                    
                    
                </div>
                <div class="col-sm">
                @guest
                    <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#modalExemplo">
                        Login
                    </button>
                    @endguest
                    @auth
                    <button type="button" class="btn btn-danger">
                        <form method="POST" action="{{ route('logout') }}">
                            @csrf

                            <x-dropdown-link :href="route('logout')"
                                    onclick="event.preventDefault();
                                        this.closest('form').submit();">
                                {{ __('Sair') }}
                            </x-dropdown-link>
                        </form>
                    </button>
                    @endauth
                </div>
                
            </div>
                
           
        </div>
           
    </body>
     <script src="{{ asset('js/jquery-3.3.1.slim.min.js') }}"></script>
    <script src="{{ asset('js/popper.min.js.js') }}"></script>
    <script src="{{ asset('js/bootstrap.min.js') }}"></script>
</html>

