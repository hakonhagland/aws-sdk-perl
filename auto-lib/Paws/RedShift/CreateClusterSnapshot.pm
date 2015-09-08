
package Paws::RedShift::CreateClusterSnapshot;
  use Moose;
  has ClusterIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has SnapshotIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::RedShift::Tag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateClusterSnapshot');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RedShift::CreateClusterSnapshotResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'CreateClusterSnapshotResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedShift::CreateClusterSnapshot - Arguments for method CreateClusterSnapshot on Paws::RedShift

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateClusterSnapshot on the 
Amazon Redshift service. Use the attributes of this class
as arguments to method CreateClusterSnapshot.

You shouln't make instances of this class. Each attribute should be used as a named argument in the call to CreateClusterSnapshot.

As an example:

  $service_obj->CreateClusterSnapshot(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES

=head2 B<REQUIRED> ClusterIdentifier => Str

  

The cluster identifier for which you want a snapshot.










=head2 B<REQUIRED> SnapshotIdentifier => Str

  

A unique identifier for the snapshot that you are requesting. This
identifier must be unique for all snapshots within the AWS account.

Constraints:

=over

=item * Cannot be null, empty, or blank

=item * Must contain from 1 to 255 alphanumeric characters or hyphens

=item * First character must be a letter

=item * Cannot end with a hyphen or contain two consecutive hyphens

=back

Example: C<my-snapshot-id>










=head2 Tags => ArrayRef[Paws::RedShift::Tag]

  

A list of tag instances.












=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateClusterSnapshot in L<Paws::RedShift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

