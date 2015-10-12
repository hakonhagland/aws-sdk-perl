package Paws::CloudTrail::ResourceTag;
  use Moose;
  has ResourceId => (is => 'ro', isa => 'Str');
  has TagsList => (is => 'ro', isa => 'ArrayRef[Paws::CloudTrail::Tag]');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudTrail::ResourceTag

=head1 DESCRIPTION

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudTrail::ResourceTag object:

  $service_obj->Method(Att1 => { ResourceId => $value, ..., TagsList => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudTrail::ResourceTag object:

  $result = $service_obj->Method(...);
  $result->Att1->ResourceId

=head1 ATTRIBUTES

=head2 ResourceId => Str

  Specifies the ARN of the resource.

=head2 TagsList => ArrayRef[Paws::CloudTrail::Tag]

  



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudTrail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut
