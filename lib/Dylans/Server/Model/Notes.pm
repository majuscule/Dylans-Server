package Dylans::Server::Model::Notes;
use Moose;
use namespace::autoclean;

use File::ShareDir::ProjectDistDir;
use YAML qw( LoadFile );
use IO::All;

extends 'Catalyst::Model';

=head1 NAME

Dylans::Server::Model::Notes - Catalyst Model

=head1 DESCRIPTION

Catalyst Model.

=head1 AUTHOR

A clever guy

=head1 LICENSE

This library is free software. You can redistribute it and/or modify
it under the same terms as Perl itself.

=cut

sub list_notes {
  my ( $self ) = @_;
  my $dir = dist_dir . "/notes/";
  my $datadir_io = io($dir);
  my @all_blog_entries;
  for (keys %$datadir_io) {
    push @all_blog_entries, $self->_get_file_entry($dir . $_);
  }
  return \@all_blog_entries;
}

sub _get_file_entry {
    my ( $self, $filename ) = @_;
    my $data = LoadFile($filename);
    return shift @{$data};
}

__PACKAGE__->meta->make_immutable;

1;
