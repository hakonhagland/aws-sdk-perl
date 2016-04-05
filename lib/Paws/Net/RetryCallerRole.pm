package Paws::Net::RetryCallerRole;
  use Moose::Role;
  use Time::HiRes 'sleep';
  use Paws::API::Retry;

  sub do_call {
    my ($self, $service, $call_object) = @_;
   
    my $tracker = Paws::API::Retry->new(
      %{ $service->retry }, 
      max_tries => $service->max_attempts,
      retry_rules => $service->retriables,
    );

    do {
      $tracker->one_more_try;

      $tracker->operation_result($self->send_request($service, $call_object));

      sleep $tracker->sleep_time if($tracker->should_retry);
    } while ($tracker->should_retry);

    if ($tracker->result_is_exception){
      $tracker->operation_result->throw;
    } else {
      return $tracker->operation_result;
    }
  }

  requires 'send_request';
1;
