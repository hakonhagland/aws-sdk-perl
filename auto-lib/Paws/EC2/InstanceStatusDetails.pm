package Paws::EC2::InstanceStatusDetails;
  use Moose;
  has ImpairedSince => (is => 'ro', isa => 'Str', xmlname => 'impairedSince', traits => ['Unwrapped']);
  has Name => (is => 'ro', isa => 'Str', xmlname => 'name', traits => ['Unwrapped']);
  has Status => (is => 'ro', isa => 'Str', xmlname => 'status', traits => ['Unwrapped']);
1;
