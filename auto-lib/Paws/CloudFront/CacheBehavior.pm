package Paws::CloudFront::CacheBehavior;
  use Moose;
  has AllowedMethods => (is => 'ro', isa => 'Paws::CloudFront::AllowedMethods');
  has Compress => (is => 'ro', isa => 'Bool');
  has DefaultTTL => (is => 'ro', isa => 'Int');
  has ForwardedValues => (is => 'ro', isa => 'Paws::CloudFront::ForwardedValues', required => 1);
  has MaxTTL => (is => 'ro', isa => 'Int');
  has MinTTL => (is => 'ro', isa => 'Int', required => 1);
  has PathPattern => (is => 'ro', isa => 'Str', required => 1);
  has SmoothStreaming => (is => 'ro', isa => 'Bool');
  has TargetOriginId => (is => 'ro', isa => 'Str', required => 1);
  has TrustedSigners => (is => 'ro', isa => 'Paws::CloudFront::TrustedSigners', required => 1);
  has ViewerProtocolPolicy => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::CacheBehavior

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudFront::CacheBehavior object:

  $service_obj->Method(Att1 => { AllowedMethods => $value, ..., ViewerProtocolPolicy => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudFront::CacheBehavior object:

  $result = $service_obj->Method(...);
  $result->Att1->AllowedMethods

=head1 DESCRIPTION

A complex type that describes how CloudFront processes requests. You
can create up to 10 cache behaviors.You must create at least as many
cache behaviors (including the default cache behavior) as you have
origins if you want CloudFront to distribute objects from all of the
origins. Each cache behavior specifies the one origin from which you
want CloudFront to get objects. If you have two origins and only the
default cache behavior, the default cache behavior will cause
CloudFront to get objects from one of the origins, but the other origin
will never be used. If you don't want to specify any cache behaviors,
include only an empty CacheBehaviors element. Don't include an empty
CacheBehavior element, or CloudFront returns a MalformedXML error. To
delete all cache behaviors in an existing distribution, update the
distribution configuration and include only an empty CacheBehaviors
element. To add, change, or remove one or more cache behaviors, update
the distribution configuration and specify all of the cache behaviors
that you want to include in the updated distribution.

=head1 ATTRIBUTES


=head2 AllowedMethods => L<Paws::CloudFront::AllowedMethods>

  


=head2 Compress => Bool

  Whether you want CloudFront to automatically compress content for web
requests that include Accept-Encoding: gzip in the request header. If
so, specify true; if not, specify false. CloudFront compresses files
larger than 1000 bytes and less than 1 megabyte for both Amazon S3 and
custom origins. When a CloudFront edge location is unusually busy, some
files might not be compressed. The value of the Content-Type header
must be on the list of file types that CloudFront will compress. For
the current list, see Serving Compressed Content in the Amazon
CloudFront Developer Guide. If you configure CloudFront to compress
content, CloudFront removes the ETag response header from the objects
that it compresses. The ETag header indicates that the version in a
CloudFront edge cache is identical to the version on the origin server,
but after compression the two versions are no longer identical. As a
result, for compressed objects, CloudFront can't use the ETag header to
determine whether an expired object in the CloudFront edge cache is
still the latest version.


=head2 DefaultTTL => Int

  If you don't configure your origin to add a Cache-Control max-age
directive or an Expires header, DefaultTTL is the default amount of
time (in seconds) that an object is in a CloudFront cache before
CloudFront forwards another request to your origin to determine whether
the object has been updated. The value that you specify applies only
when your origin does not add HTTP headers such as Cache-Control
max-age, Cache-Control s-maxage, and Expires to objects. You can
specify a value from 0 to 3,153,600,000 seconds (100 years).


=head2 B<REQUIRED> ForwardedValues => L<Paws::CloudFront::ForwardedValues>

  A complex type that specifies how CloudFront handles query strings,
cookies and headers.


=head2 MaxTTL => Int

  The maximum amount of time (in seconds) that an object is in a
CloudFront cache before CloudFront forwards another request to your
origin to determine whether the object has been updated. The value that
you specify applies only when your origin adds HTTP headers such as
Cache-Control max-age, Cache-Control s-maxage, and Expires to objects.
You can specify a value from 0 to 3,153,600,000 seconds (100 years).


=head2 B<REQUIRED> MinTTL => Int

  The minimum amount of time that you want objects to stay in CloudFront
caches before CloudFront queries your origin to see whether the object
has been updated.You can specify a value from 0 to 3,153,600,000
seconds (100 years).


=head2 B<REQUIRED> PathPattern => Str

  The pattern (for example, images/*.jpg) that specifies which requests
you want this cache behavior to apply to. When CloudFront receives an
end-user request, the requested path is compared with path patterns in
the order in which cache behaviors are listed in the distribution. The
path pattern for the default cache behavior is * and cannot be changed.
If the request for an object does not match the path pattern for any
cache behaviors, CloudFront applies the behavior in the default cache
behavior.


=head2 SmoothStreaming => Bool

  Indicates whether you want to distribute media files in Microsoft
Smooth Streaming format using the origin that is associated with this
cache behavior. If so, specify true; if not, specify false.


=head2 B<REQUIRED> TargetOriginId => Str

  The value of ID for the origin that you want CloudFront to route
requests to when a request matches the path pattern either for a cache
behavior or for the default cache behavior.


=head2 B<REQUIRED> TrustedSigners => L<Paws::CloudFront::TrustedSigners>

  A complex type that specifies the AWS accounts, if any, that you want
to allow to create signed URLs for private content. If you want to
require signed URLs in requests for objects in the target origin that
match the PathPattern for this cache behavior, specify true for
Enabled, and specify the applicable values for Quantity and Items. For
more information, go to Using a Signed URL to Serve Private Content in
the Amazon CloudFront Developer Guide. If you don't want to require
signed URLs in requests for objects that match PathPattern, specify
false for Enabled and 0 for Quantity. Omit Items. To add, change, or
remove one or more trusted signers, change Enabled to true (if it's
currently false), change Quantity as applicable, and specify all of the
trusted signers that you want to include in the updated distribution.


=head2 B<REQUIRED> ViewerProtocolPolicy => Str

  Use this element to specify the protocol that users can use to access
the files in the origin specified by TargetOriginId when a request
matches the path pattern in PathPattern. If you want CloudFront to
allow end users to use any available protocol, specify allow-all. If
you want CloudFront to require HTTPS, specify https. If you want
CloudFront to respond to an HTTP request with an HTTP status code of
301 (Moved Permanently) and the HTTPS URL, specify redirect-to-https.
The viewer then resubmits the request using the HTTPS URL.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudFront>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

