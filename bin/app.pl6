use v6.c;

use Bailador;

get '/' => sub {
    template 'home.html';
}

get '/documentation' => sub {
    template 'documentation.html';
}

require Bailador::Gradual;

baile;
