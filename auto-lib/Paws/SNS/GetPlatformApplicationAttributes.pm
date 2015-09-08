
package Paws::SNS::GetPlatformApplicationAttributes;
  use Moose;
  has PlatformApplicationArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetPlatformApplicationAttributes');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SNS::GetPlatformApplicationAttributesResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'GetPlatformApplicationAttributesResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SNS::GetPlatformApplicationAttributes - Arguments for method GetPlatformApplicationAttributes on Paws::SNS

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetPlatformApplicationAttributes on the 
Amazon Simple Notification Service service. Use the attributes of this class
as arguments to method GetPlatformApplicationAttributes.

You shouln't make instances of this class. Each attribute should be used as a named argument in the call to GetPlatformApplicationAttributes.

As an example:

  $service_obj->GetPlatformApplicationAttributes(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES

=head2 B<REQUIRED> PlatformApplicationArn => Str

  

PlatformApplicationArn for GetPlatformApplicationAttributesInput.












=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetPlatformApplicationAttributes in L<Paws::SNS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

