# .latexmkrc configuration for Overleaf and local builds
$pdflatex = 'pdflatex -synctex=1 -interaction=nonstopmode %O %S';
$biber = 'biber %O %B';

# Support for makeglossaries in Overleaf
add_cus_dep('glo', 'gls', 0, 'run_makeglossaries');
add_cus_dep('acn', 'acr', 0, 'run_makeglossaries');
add_cus_dep('sym1', 'sym2', 0, 'run_makeglossaries');

sub run_makeglossaries {
    my ($base_name, $path) = fileparse( $_[0] );
    my @args = ( "-q", "-d", $path, $base_name );
    if ($path eq "") { @args = ("-q", $base_name); }
    system("makeglossaries", @args);
}