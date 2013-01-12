package Dylans::Server::View::TT;
use Moose;
use namespace::autoclean;

extends 'Catalyst::View::TT';

__PACKAGE__->config(
    TEMPLATE_EXTENSION => '.tt',
    render_die => 1,
    INCLUDE_PATH => [
        Dylans::Server->path_to('root', 'views'),
    ],
);

=head1 NAME

Dylans::Server::View::TT - TT View for Dylans::Server

=head1 DESCRIPTION

TT View for Dylans::Server.

=head1 SEE ALSO

L<Dylans::Server>

=head1 AUTHOR

A clever guy

=head1 LICENSE

This library is free software. You can redistribute it and/or modify
it under the same terms as Perl itself.

=cut

1;
