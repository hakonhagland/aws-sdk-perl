package Paws::MediaConvert::S3DestinationSettings;
  use Moose;
  has Encryption => (is => 'ro', isa => 'Paws::MediaConvert::S3EncryptionSettings', request_name => 'encryption', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConvert::S3DestinationSettings

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaConvert::S3DestinationSettings object:

  $service_obj->Method(Att1 => { Encryption => $value, ..., Encryption => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaConvert::S3DestinationSettings object:

  $result = $service_obj->Method(...);
  $result->Att1->Encryption

=head1 DESCRIPTION

Settings associated with S3 destination

=head1 ATTRIBUTES


=head2 Encryption => L<Paws::MediaConvert::S3EncryptionSettings>

  Settings for how your job outputs are encrypted as they are uploaded to
Amazon S3.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaConvert>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
