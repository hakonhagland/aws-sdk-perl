
package Paws::ECR::UploadLayerPartResponse;
  use Moose;
  has LastByteReceived => (is => 'ro', isa => 'Int', traits => ['Unwrapped'], xmlname => 'lastByteReceived' );
  has RegistryId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'registryId' );
  has RepositoryName => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'repositoryName' );
  has UploadId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'uploadId' );


### main pod documentation begin ###

=head1 NAME

Paws::ECR::UploadLayerPartResponse

=head1 ATTRIBUTES


=head2 LastByteReceived => Int

The integer value of the last byte received in the request.



=head2 RegistryId => Str

The registry ID associated with the request.



=head2 RepositoryName => Str

The repository name associated with the request.



=head2 UploadId => Str

The upload ID associated with the request.




=cut

1;