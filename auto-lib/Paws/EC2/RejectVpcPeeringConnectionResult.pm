
package Paws::EC2::RejectVpcPeeringConnectionResult;
  use Moose;
  has Return => (is => 'ro', isa => 'Bool', xmlname => 'return', traits => ['Unwrapped',]);

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::RejectVpcPeeringConnectionResult

=head1 ATTRIBUTES

=head2 Return => Bool

  

Returns C<true> if the request succeeds; otherwise, it returns an
error.











=cut

