package Paws::Pinpoint::AttributeDimension;
  use Moose;
  has AttributeType => (is => 'ro', isa => 'Str');
  has Values => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::AttributeDimension

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Pinpoint::AttributeDimension object:

  $service_obj->Method(Att1 => { AttributeType => $value, ..., Values => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Pinpoint::AttributeDimension object:

  $result = $service_obj->Method(...);
  $result->Att1->AttributeType

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 AttributeType => Str

  The type of dimension: INCLUSIVE E<ndash> Endpoints that match the
criteria are included in the segment. EXCLUSIVE E<ndash> Endpoints that
match the criteria are excluded from the segment.


=head2 Values => ArrayRef[Str|Undef]

  The criteria values for the segment dimension. Endpoints with matching
attribute values are included or excluded from the segment, depending
on the setting for Type.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Pinpoint>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

