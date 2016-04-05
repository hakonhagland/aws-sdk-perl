package Paws::IoT;
  warn "Paws::IoT is not stable / supported / entirely developed";
  use Moose;
  sub service { 'iot' }
  sub version { '2015-05-28' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller', 'Paws::Net::RestJsonResponse';

  
  sub AcceptCertificateTransfer {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::AcceptCertificateTransfer', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AttachPrincipalPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::AttachPrincipalPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AttachThingPrincipal {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::AttachThingPrincipal', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CancelCertificateTransfer {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::CancelCertificateTransfer', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateCertificateFromCsr {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::CreateCertificateFromCsr', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateKeysAndCertificate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::CreateKeysAndCertificate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreatePolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::CreatePolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreatePolicyVersion {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::CreatePolicyVersion', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateThing {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::CreateThing', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateTopicRule {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::CreateTopicRule', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteCertificate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::DeleteCertificate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeletePolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::DeletePolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeletePolicyVersion {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::DeletePolicyVersion', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteThing {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::DeleteThing', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteTopicRule {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::DeleteTopicRule', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeCertificate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::DescribeCertificate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeEndpoint {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::DescribeEndpoint', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeThing {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::DescribeThing', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DetachPrincipalPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::DetachPrincipalPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DetachThingPrincipal {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::DetachThingPrincipal', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisableTopicRule {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::DisableTopicRule', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub EnableTopicRule {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::EnableTopicRule', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetLoggingOptions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::GetLoggingOptions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::GetPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetPolicyVersion {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::GetPolicyVersion', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetTopicRule {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::GetTopicRule', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListCertificates {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::ListCertificates', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListPolicies {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::ListPolicies', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListPolicyVersions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::ListPolicyVersions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListPrincipalPolicies {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::ListPrincipalPolicies', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListPrincipalThings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::ListPrincipalThings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListThingPrincipals {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::ListThingPrincipals', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListThings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::ListThings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTopicRules {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::ListTopicRules', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RejectCertificateTransfer {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::RejectCertificateTransfer', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ReplaceTopicRule {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::ReplaceTopicRule', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SetDefaultPolicyVersion {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::SetDefaultPolicyVersion', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SetLoggingOptions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::SetLoggingOptions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TransferCertificate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::TransferCertificate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateCertificate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::UpdateCertificate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateThing {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::UpdateThing', @_);
    return $self->caller->do_call($self, $call_object);
  }
  


  sub operations { qw/AcceptCertificateTransfer AttachPrincipalPolicy AttachThingPrincipal CancelCertificateTransfer CreateCertificateFromCsr CreateKeysAndCertificate CreatePolicy CreatePolicyVersion CreateThing CreateTopicRule DeleteCertificate DeletePolicy DeletePolicyVersion DeleteThing DeleteTopicRule DescribeCertificate DescribeEndpoint DescribeThing DetachPrincipalPolicy DetachThingPrincipal DisableTopicRule EnableTopicRule GetLoggingOptions GetPolicy GetPolicyVersion GetTopicRule ListCertificates ListPolicies ListPolicyVersions ListPrincipalPolicies ListPrincipalThings ListThingPrincipals ListThings ListTopicRules RejectCertificateTransfer ReplaceTopicRule SetDefaultPolicyVersion SetLoggingOptions TransferCertificate UpdateCertificate UpdateThing / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT - Perl Interface to AWS AWS IoT

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('IoT');
  my $res = $obj->Method(
    Arg1 => $val1,
    Arg2 => [ 'V1', 'V2' ],
    # if Arg3 is an object, the HashRef will be used as arguments to the constructor
    # of the arguments type
    Arg3 => { Att1 => 'Val1' },
    # if Arg4 is an array of objects, the HashRefs will be passed as arguments to
    # the constructor of the arguments type
    Arg4 => [ { Att1 => 'Val1'  }, { Att1 => 'Val2' } ],
  );

=head1 DESCRIPTION

AWS IoT

AWS IoT provides secure, bi-directional communication between
Internet-connected things (such as sensors, actuators, embedded
devices, or smart appliances) and the AWS cloud. You can discover your
custom IoT-Data endpoint to communicate with, configure rules for data
processing and integration with other services, organize resources
associated with each thing (Thing Registry), configure logging, and
create and manage policies and credentials to authenticate things.

For more information about how AWS IoT works, see the Developer Guide.

=head1 METHODS

=head2 AcceptCertificateTransfer(CertificateId => Str, [SetAsActive => Bool])

Each argument is described in detail in: L<Paws::IoT::AcceptCertificateTransfer>

Returns: nothing

  Accepts a pending certificate transfer. The default state of the
certificate is INACTIVE.

To check for pending certificate transfers, call ListCertificates to
enumerate your certificates.


=head2 AttachPrincipalPolicy(PolicyName => Str, Principal => Str)

Each argument is described in detail in: L<Paws::IoT::AttachPrincipalPolicy>

Returns: nothing

  Attaches the specified policy to the specified principal (certificate
or other credential).


=head2 AttachThingPrincipal(Principal => Str, ThingName => Str)

Each argument is described in detail in: L<Paws::IoT::AttachThingPrincipal>

Returns: a L<Paws::IoT::AttachThingPrincipalResponse> instance

  Attaches the specified principal to the specified thing.


=head2 CancelCertificateTransfer(CertificateId => Str)

Each argument is described in detail in: L<Paws::IoT::CancelCertificateTransfer>

Returns: nothing

  Cancels a pending transfer for the specified certificate.

B<Note> Only the transfer source account can use this operation to
cancel a transfer. (Transfer destinations can use
RejectCertificateTransfer instead.) After transfer, AWS IoT returns the
certificate to the source account in the INACTIVE state. After the
destination account has accepted the transfer, the transfer cannot be
cancelled.

After a certificate transfer is cancelled, the status of the
certificate changes from PENDING_TRANSFER to INACTIVE.


=head2 CreateCertificateFromCsr(CertificateSigningRequest => Str, [SetAsActive => Bool])

Each argument is described in detail in: L<Paws::IoT::CreateCertificateFromCsr>

Returns: a L<Paws::IoT::CreateCertificateFromCsrResponse> instance

  Creates an X.509 certificate using the specified certificate signing
request.

B<Note> Reusing the same certificate signing request (CSR) results in a
distinct certificate.

You can create multiple certificates in a batch by creating a
directory, copying multiple .csr files into that directory, and then
specifying that directory on the command line. The following commands
show how to create a batch of certificates given a batch of CSRs.

Assuming a set of CSRs are located inside of the directory
my-csr-directory:

E<gt>

On Linux and OS X, the command is:

$ ls my-csr-directory/ | xargs -I {} aws iot
create-certificate-from-csr --certificate-signing-request
file://my-csr-directory/{}

This command lists all of the CSRs in my-csr-directory and pipes each
CSR file name to the aws iot create-certificate-from-csr AWS CLI
command to create a certificate for the corresponding CSR.

The aws iot create-certificate-from-csr part of the command can also be
run in parallel to speed up the certificate creation process:

$ ls my-csr-directory/ | xargs -P 10 -I {} aws iot
create-certificate-from-csr --certificate-signing-request
file://my-csr-directory/{}

On Windows PowerShell, the command to create certificates for all CSRs
in my-csr-directory is:

E<gt> ls -Name my-csr-directory | %{aws iot create-certificate-from-csr
--certificate-signing-request file://my-csr-directory/$_}

On a Windows command prompt, the command to create certificates for all
CSRs in my-csr-directory is:

E<gt> forfiles /p my-csr-directory /c "cmd /c aws iot
create-certificate-from-csr --certificate-signing-request file://@path"


=head2 CreateKeysAndCertificate([SetAsActive => Bool])

Each argument is described in detail in: L<Paws::IoT::CreateKeysAndCertificate>

Returns: a L<Paws::IoT::CreateKeysAndCertificateResponse> instance

  Creates a 2048-bit RSA key pair and issues an X.509 certificate using
the issued public key.

B<Note> This is the only time AWS IoT issues the private key for this
certificate, so it is important to keep it in a secure location.


=head2 CreatePolicy(PolicyDocument => Str, PolicyName => Str)

Each argument is described in detail in: L<Paws::IoT::CreatePolicy>

Returns: a L<Paws::IoT::CreatePolicyResponse> instance

  Creates an AWS IoT policy.

The created policy is the default version for the policy. This
operation creates a policy version with a version identifier of B<1>
and sets B<1> as the policy's default version.


=head2 CreatePolicyVersion(PolicyDocument => Str, PolicyName => Str, [SetAsDefault => Bool])

Each argument is described in detail in: L<Paws::IoT::CreatePolicyVersion>

Returns: a L<Paws::IoT::CreatePolicyVersionResponse> instance

  Creates a new version of the specified AWS IoT policy. To update a
policy, create a new policy version. A managed policy can have up to
five versions. If the policy has five versions, you must use
DeletePolicyVersion to delete an existing version before you create a
new one.

Optionally, you can set the new version as the policy's default
version. The default version is the operative version (that is, the
version that is in effect for the certificates to which the policy is
attached).


=head2 CreateThing(ThingName => Str, [AttributePayload => L<Paws::IoT::AttributePayload>])

Each argument is described in detail in: L<Paws::IoT::CreateThing>

Returns: a L<Paws::IoT::CreateThingResponse> instance

  Creates a thing in the Thing Registry.


=head2 CreateTopicRule(RuleName => Str, TopicRulePayload => L<Paws::IoT::TopicRulePayload>)

Each argument is described in detail in: L<Paws::IoT::CreateTopicRule>

Returns: nothing

  Creates a rule. Creating rules is an administrator-level action. Any
user who has permission to create rules will be able to access data
processed by the rule.


=head2 DeleteCertificate(CertificateId => Str)

Each argument is described in detail in: L<Paws::IoT::DeleteCertificate>

Returns: nothing

  Deletes the specified certificate.

A certificate cannot be deleted if it has a policy attached to it or if
its status is set to ACTIVE. To delete a certificate, first use the
DetachPrincipalPolicy API to detach all policies. Next, use the
UpdateCertificate API to set the certificate to the INACTIVE status.


=head2 DeletePolicy(PolicyName => Str)

Each argument is described in detail in: L<Paws::IoT::DeletePolicy>

Returns: nothing

  Deletes the specified policy.

A policy cannot be deleted if it has non-default versions or it is
attached to any certificate.

To delete a policy, use the DeletePolicyVersion API to delete all
non-default versions of the policy; use the DetachPrincipalPolicy API
to detach the policy from any certificate; and then use the
DeletePolicy API to delete the policy.

When a policy is deleted using DeletePolicy, its default version is
deleted with it.


=head2 DeletePolicyVersion(PolicyName => Str, PolicyVersionId => Str)

Each argument is described in detail in: L<Paws::IoT::DeletePolicyVersion>

Returns: nothing

  Deletes the specified version of the specified policy. You cannot
delete the default version of a policy using this API. To delete the
default version of a policy, use DeletePolicy. To find out which
version of a policy is marked as the default version, use
ListPolicyVersions.


=head2 DeleteThing(ThingName => Str)

Each argument is described in detail in: L<Paws::IoT::DeleteThing>

Returns: a L<Paws::IoT::DeleteThingResponse> instance

  Deletes the specified thing from the Thing Registry.


=head2 DeleteTopicRule(RuleName => Str)

Each argument is described in detail in: L<Paws::IoT::DeleteTopicRule>

Returns: nothing

  Deletes the specified rule.


=head2 DescribeCertificate(CertificateId => Str)

Each argument is described in detail in: L<Paws::IoT::DescribeCertificate>

Returns: a L<Paws::IoT::DescribeCertificateResponse> instance

  Gets information about the specified certificate.


=head2 DescribeEndpoint()

Each argument is described in detail in: L<Paws::IoT::DescribeEndpoint>

Returns: a L<Paws::IoT::DescribeEndpointResponse> instance

  Returns a unique endpoint specific to the AWS account making the call.
You specify the following URI when updating state information for your
thing: https://I<endpoint>/things/I<thingName>/shadow.


=head2 DescribeThing(ThingName => Str)

Each argument is described in detail in: L<Paws::IoT::DescribeThing>

Returns: a L<Paws::IoT::DescribeThingResponse> instance

  Gets information about the specified thing.


=head2 DetachPrincipalPolicy(PolicyName => Str, Principal => Str)

Each argument is described in detail in: L<Paws::IoT::DetachPrincipalPolicy>

Returns: nothing

  Removes the specified policy from the specified certificate.


=head2 DetachThingPrincipal(Principal => Str, ThingName => Str)

Each argument is described in detail in: L<Paws::IoT::DetachThingPrincipal>

Returns: a L<Paws::IoT::DetachThingPrincipalResponse> instance

  Detaches the specified principal from the specified thing.


=head2 DisableTopicRule(RuleName => Str)

Each argument is described in detail in: L<Paws::IoT::DisableTopicRule>

Returns: nothing

  Disables the specified rule.


=head2 EnableTopicRule(RuleName => Str)

Each argument is described in detail in: L<Paws::IoT::EnableTopicRule>

Returns: nothing

  Enables the specified rule.


=head2 GetLoggingOptions()

Each argument is described in detail in: L<Paws::IoT::GetLoggingOptions>

Returns: a L<Paws::IoT::GetLoggingOptionsResponse> instance

  Gets the logging options.


=head2 GetPolicy(PolicyName => Str)

Each argument is described in detail in: L<Paws::IoT::GetPolicy>

Returns: a L<Paws::IoT::GetPolicyResponse> instance

  Gets information about the specified policy with the policy document of
the default version.


=head2 GetPolicyVersion(PolicyName => Str, PolicyVersionId => Str)

Each argument is described in detail in: L<Paws::IoT::GetPolicyVersion>

Returns: a L<Paws::IoT::GetPolicyVersionResponse> instance

  Gets information about the specified policy version.


=head2 GetTopicRule(RuleName => Str)

Each argument is described in detail in: L<Paws::IoT::GetTopicRule>

Returns: a L<Paws::IoT::GetTopicRuleResponse> instance

  Gets information about the specified rule.


=head2 ListCertificates([AscendingOrder => Bool, Marker => Str, PageSize => Int])

Each argument is described in detail in: L<Paws::IoT::ListCertificates>

Returns: a L<Paws::IoT::ListCertificatesResponse> instance

  Lists your certificates.

The results are paginated with a default page size of 25. You can use
the returned marker to retrieve additional results.


=head2 ListPolicies([AscendingOrder => Bool, Marker => Str, PageSize => Int])

Each argument is described in detail in: L<Paws::IoT::ListPolicies>

Returns: a L<Paws::IoT::ListPoliciesResponse> instance

  Lists your policies.


=head2 ListPolicyVersions(PolicyName => Str)

Each argument is described in detail in: L<Paws::IoT::ListPolicyVersions>

Returns: a L<Paws::IoT::ListPolicyVersionsResponse> instance

  Lists the versions of the specified policy, and identifies the default
version.


=head2 ListPrincipalPolicies(Principal => Str, [AscendingOrder => Bool, Marker => Str, PageSize => Int])

Each argument is described in detail in: L<Paws::IoT::ListPrincipalPolicies>

Returns: a L<Paws::IoT::ListPrincipalPoliciesResponse> instance

  Lists the policies attached to the specified principal. If you use an
Cognito identity, the ID must be in AmazonCognito Identity format.


=head2 ListPrincipalThings(Principal => Str, [MaxResults => Int, NextToken => Str])

Each argument is described in detail in: L<Paws::IoT::ListPrincipalThings>

Returns: a L<Paws::IoT::ListPrincipalThingsResponse> instance

  Lists the things associated with the specified principal.


=head2 ListThingPrincipals(ThingName => Str)

Each argument is described in detail in: L<Paws::IoT::ListThingPrincipals>

Returns: a L<Paws::IoT::ListThingPrincipalsResponse> instance

  Lists the principals associated with the specified thing.


=head2 ListThings([AttributeName => Str, AttributeValue => Str, MaxResults => Int, NextToken => Str])

Each argument is described in detail in: L<Paws::IoT::ListThings>

Returns: a L<Paws::IoT::ListThingsResponse> instance

  Lists your things. You can pass an AttributeName or AttributeValue to
filter your things (for example, "ListThings where AttributeName=Color
and AttributeValue=Red").


=head2 ListTopicRules([MaxResults => Int, NextToken => Str, RuleDisabled => Bool, Topic => Str])

Each argument is described in detail in: L<Paws::IoT::ListTopicRules>

Returns: a L<Paws::IoT::ListTopicRulesResponse> instance

  Lists the rules for the specific topic.


=head2 RejectCertificateTransfer(CertificateId => Str)

Each argument is described in detail in: L<Paws::IoT::RejectCertificateTransfer>

Returns: nothing

  Rejects a pending certificate transfer. After AWS IoT rejects a
certificate transfer, the certificate status changes from
B<PENDING_TRANFER> to B<INACTIVE>.

To check for pending certificate transfers, call ListCertificates to
enumerate your certificates.

This operation can only be called by the transfer destination. After it
is called, the certificate will be returned to the source's account in
the INACTIVE state.


=head2 ReplaceTopicRule(RuleName => Str, TopicRulePayload => L<Paws::IoT::TopicRulePayload>)

Each argument is described in detail in: L<Paws::IoT::ReplaceTopicRule>

Returns: nothing

  Replaces the specified rule. You must specify all parameters for the
new rule. Creating rules is an administrator-level action. Any user who
has permission to create rules will be able to access data processed by
the rule.


=head2 SetDefaultPolicyVersion(PolicyName => Str, PolicyVersionId => Str)

Each argument is described in detail in: L<Paws::IoT::SetDefaultPolicyVersion>

Returns: nothing

  Sets the specified version of the specified policy as the policy's
default (operative) version. This action affects all certificates to
which the policy is attached. To list the principals the policy is
attached to, use the ListPrincipalPolicy API.


=head2 SetLoggingOptions(LoggingOptionsPayload => L<Paws::IoT::LoggingOptionsPayload>)

Each argument is described in detail in: L<Paws::IoT::SetLoggingOptions>

Returns: nothing

  Sets the logging options.


=head2 TransferCertificate(CertificateId => Str, TargetAwsAccount => Str)

Each argument is described in detail in: L<Paws::IoT::TransferCertificate>

Returns: a L<Paws::IoT::TransferCertificateResponse> instance

  Transfers the specified certificate to the specified AWS account.

You can cancel the transfer until it is acknowledged by the recipient.

No notification is sent to the transfer destination's account. It is up
to the caller to notify the transfer target.

The certificate being transferred must not be in the ACTIVE state. You
can use the UpdateCertificate API to deactivate it.

The certificate must not have any policies attached to it. You can use
the DetachPrincipalPolicy API to detach them.


=head2 UpdateCertificate(CertificateId => Str, NewStatus => Str)

Each argument is described in detail in: L<Paws::IoT::UpdateCertificate>

Returns: nothing

  Updates the status of the specified certificate. This operation is
idempotent.

Moving a certificate from the ACTIVE state (including REVOKED) will not
disconnect currently connected devices, but these devices will be
unable to reconnect.

The ACTIVE state is required to authenticate devices connecting to AWS
IoT using a certificate.


=head2 UpdateThing(AttributePayload => L<Paws::IoT::AttributePayload>, ThingName => Str)

Each argument is described in detail in: L<Paws::IoT::UpdateThing>

Returns: a L<Paws::IoT::UpdateThingResponse> instance

  Updates the data for a thing.


=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

