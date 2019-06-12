
package Paws::IoTEventsData::BatchUpdateDetectorResponse;
  use Moose;
  has BatchUpdateDetectorErrorEntries => (is => 'ro', isa => 'ArrayRef[Paws::IoTEventsData::BatchUpdateDetectorErrorEntry]', traits => ['NameInRequest'], request_name => 'batchUpdateDetectorErrorEntries');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTEventsData::BatchUpdateDetectorResponse

=head1 ATTRIBUTES


=head2 BatchUpdateDetectorErrorEntries => ArrayRef[L<Paws::IoTEventsData::BatchUpdateDetectorErrorEntry>]

A list of those detector updates which resulted in errors. (The
specific update did not occur if an error is listed here.)


=head2 _request_id => Str


=cut

