package FCGI::Engine::Manager::Server::Hypnotoad;
use Moose;

our $VERSION   = '1.2';
our $AUTHORITY = 'rofl';

extends 'FCGI::Engine::Manager::Server';

has 'server_type' => (
    is       => 'ro',
    isa      => 'Str',
    default  => sub { 'FCGI::Engine' }
);

has 'socket' => (
    is => 'ro',
    default => undef,
);

has 'hypnotoad' => (
    is       => 'ro',
    isa      => 'Str'
);

sub construct_command_line {
    my $self = shift;
    return ("perl",
         $self->hypnotoad,
         $self->scriptname,
         ($self->has_additional_args
             ? $self->additional_args
             : ()));
}

__PACKAGE__->meta->make_immutable;

no Moose; 1;

__END__

=pod

=head1 NAME

FCGI::Engine::Manager::Server::Hypnotoad - A subclass of FCGI::Engine::Manager::Server for Hypnotoad apps

=head1 DESCRIPTION

This uses the C<Hypnotoad> utility that comes with Hypnotoad to manage a Hypnotoad application.
See L<FCGI::Engine::Manager> for details on how to configure things.

=head1 BUGS

All complex software has bugs lurking in it, and this module is no
exception. If you find a bug please either email me, or add the bug
to cpan-RT.

=head1 AUTHOR

Stevan Little E<lt>stevan@iinteractive.comE<gt>

=head1 COPYRIGHT AND LICENSE

Copyright 2007-2010 by Infinity Interactive, Inc.

L<http://www.iinteractive.com>

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=cut

