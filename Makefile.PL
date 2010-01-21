
use strict;
use warnings;



use ExtUtils::MakeMaker 6.11;



my %WriteMakefileArgs = (
                       'test' => {
                                   'TESTS' => 't/*.t'
                                 },
                       'NAME' => 'Net::Google::PicasaWeb',
                       'DISTNAME' => 'Net-Google-PicasaWeb',
                       'AUTHOR' => 'Andrew Sterling Hanenkamp <hanenkamp@cpan.org>',
                       'ABSTRACT' => 'use Google\'s Picasa Web API',
                       'EXE_FILES' => [
                                        'script/picasa-list',
                                        'script/picasa',
                                        'script/picasa-get'
                                      ],
                       'VERSION' => '0.08',
                       'LICENSE' => 'perl',
                       'PREREQ_PM' => {
                                        'URI' => '0',
                                        'XML::Twig' => '3.30',
                                        'Test::Mock::LWP' => '0',
                                        'ExtUtils::MakeMaker' => '6.11',
                                        'LWP::UserAgent' => '0',
                                        'Net::Google::AuthSub' => '0',
                                        'MooseX::Role::Matcher' => '0',
                                        'Moose' => '0',
                                        'IO::Prompt' => '0'
                                      }
                     );


delete $WriteMakefileArgs{LICENSE}
  unless eval { ExtUtils::MakeMaker->VERSION(6.31) };

WriteMakefile(%WriteMakefileArgs);



