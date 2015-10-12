
package Paws::Inspector::ListAssessmentAgentsResponse;
  use Moose;
  has agentList => (is => 'ro', isa => 'ArrayRef[Paws::Inspector::Agent]');
  has nextToken => (is => 'ro', isa => 'Str');


### main pod documentation begin ###

=head1 NAME

Paws::Inspector::ListAssessmentAgentsResponse

=head1 ATTRIBUTES

=head2 agentList => ArrayRef[Paws::Inspector::Agent]

  A list of ARNs specifying the agents returned by the action.
=head2 nextToken => Str

  When a response is generated, if there is more data to be listed, this
parameter is present in the response and contains the value to use for
the B<nextToken> parameter in a subsequent pagination request. If there
is no more data to be listed, this parameter is set to 'null'.


=cut

1;