package Paws::DMS::Tag;
  use Moose;
  has Key => (is => 'ro', isa => 'Str');
  has Value => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DMS::Tag

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DMS::Tag object:

  $service_obj->Method(Att1 => { Key => $value, ..., Value => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DMS::Tag object:

  $result = $service_obj->Method(...);
  $result->Att1->Key

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 Key => Str

  A key is the required name of the tag. The string value can be from 1
to 128 Unicode characters in length and cannot be prefixed with "aws:"
or "dms:". The string can only contain only the set of Unicode letters,
digits, white-space, '_', '.', '/', '=', '+', '-' (Java regex:
"^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-]*)$").


=head2 Value => Str

  A value is the optional value of the tag. The string value can be from
1 to 256 Unicode characters in length and cannot be prefixed with
"aws:" or "dms:". The string can only contain only the set of Unicode
letters, digits, white-space, '_', '.', '/', '=', '+', '-' (Java regex:
"^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-]*)$").



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

