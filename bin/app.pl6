use v6.c;

use Bailador;

use lib 'lib';
use Routes;

get %routes<home> => sub {
    template 'home.html';
}

get %routes<documentation> => sub {
    my $text = slurp 'templates/documentation-text.html';
    template 'documentation.html', {
        text => $text
    };
}

require Bailador::Gradual;

baile;
