<!DOCTYPE html>
<html>
    <head>
        <title>Publicação</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    </head>
    <body>
     
        <div class="container">
            <div class="row align-items-start">
                <div class="col-sm">
                @auth
                    <img class="img-fluid" src="{{ asset('storage/' .Auth::user()->foto)}}" style="width: 150px; height: 150px;">
                @endauth
                @guest
                    <img class="img-fluid" src="{{ asset('storage/logo/logo_sabor_do_brasil.png')}}">
                    <div class="row align-items-start">
                        <div class="col-sm">
                             <p>{{  $quantidade_like }}</p>
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
                    
                    @foreach ($publicacoes as $publicacao)
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
                <div class="modal fade" id="modalExemplo" tabindex="-1" role="dialog"  aria-labelledby="exempleModalLabel" aria-hidden="true">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="exempleModalLabel">Login</h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Fechar">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <div class="modal-body">
                                
                                <!-- Session Status -->
                                <x-auth-session-status class="mb-4" :status="session('status')" />

                                <form method="POST" action="{{ route('login') }}">
                                    @csrf

                                    <!-- Email Address -->
                                    <div>
                                        <x-input-label for="email" :value="__('Email')" />
                                        <x-text-input id="email" class="block mt-1 w-full" type="email" name="email" :value="old('email')" required autofocus autocomplete="username" />
                                        <x-input-error :messages="$errors->get('email')" class="mt-2" />
                                    </div>

                                    <!-- Password -->
                                    <div class="mt-4">
                                        <x-input-label for="password" :value="__('Senha')" />

                                        <x-text-input id="password" class="block mt-1 w-full"
                                            type="password"
                                            name="password"
                                            required autocomplete="current-password" />

                                        <x-input-error :messages="$errors->get('password')" class="mt-2" />
                                    </div>
                                    <button type="submit" class="btn btn-primary">Entrar</button>
                                </form>
                                
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Fechar</button>
                            </div>
                        </div>
                        
                    </div>
                </div>
            </div>
                
           
        </div>
           
    </body>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
</html>

