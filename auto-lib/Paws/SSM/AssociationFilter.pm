package Paws::SSM::AssociationFilter;
  use Moose;
  has key => (is => 'ro', isa => 'Str', required => 1);
  has value => (is => 'ro', isa => 'Str', required => 1);
1;
