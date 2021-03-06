use strict;
use warnings;
use Module::Build;

my $builder = Module::Build->new(
    module_name       => 'App::used',
    license           => 'perl',
    dist_author       => 'Ivan Wills <ivan.wills@gmail.com>',
    dist_version_from => 'lib/App/used.pm',
    requires          => {
        'perl'                 => 5.008,
        'File::chdir'          => 0,
        'List::Util'           => 0,
        'Module::CoreList'     => 0,
        'Path::Tiny'           => 0,
        'Perl::MinimumVersion' => 0,
        'YAML::Syck'           => 0,
        'version'              => 0,
    },
    configure_requires => {
        'Module::Build' => 0.38,
    },
    build_requires => {
        'Test::More'     => '0.88',
        'Test::Warnings' => '0.026',
    },
    add_to_cleanup     => [ 'App-used-*' ],
    create_license     => 1,
    meta_merge => {
        resources => {
            repository => 'git://github.com/ivanwills/App-used.git',
            bugtracker => 'http://rt.cpan.org/NoAuth/Bugs.html?Dist=App::used',
        },
    },
);

$builder->create_build_script();
