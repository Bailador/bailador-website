use v6.c;

use LWP::Simple;

my Str $DOC_URL = 'https://raw.githubusercontent.com/Bailador/Bailador/dev/doc/README.md';
my Str $markdown-filename = 'documentation.md';
my Str $html-filename = 'templates/documentation.html';
my Str $markdown = LWP::Simple.get($DOC_URL);
spurt $markdown-filename, $markdown;

# TODO : use a Perl 6 module instead of pandoc.
shell("pandoc -f markdown_github -t html $markdown-filename > $html-filename");

say "Documentation successfully generated to $html-filename !";
