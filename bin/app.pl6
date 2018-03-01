use v6.c;

use Bailador;

get '/' => sub {
    template 'home.html';
}

get '/documentation' => sub {
    my $text = slurp 'templates/documentation-text.html';
    template 'documentation.html', {
        text => $text
    };
}

require Bailador::Gradual;

baile;
