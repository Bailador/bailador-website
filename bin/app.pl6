use v6.c;

use Bailador;

get '/' => sub {
    template 'home.html';
}

require Bailador::Gradual;

baile;
