
package Paws::Robomaker::SyncDeploymentJobResponse;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'arn');
  has CreatedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createdAt');
  has DeploymentApplicationConfigs => (is => 'ro', isa => 'ArrayRef[Paws::Robomaker::DeploymentApplicationConfig]', traits => ['NameInRequest'], request_name => 'deploymentApplicationConfigs');
  has DeploymentConfig => (is => 'ro', isa => 'Paws::Robomaker::DeploymentConfig', traits => ['NameInRequest'], request_name => 'deploymentConfig');
  has FailureCode => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'failureCode');
  has FailureReason => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'failureReason');
  has Fleet => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'fleet');
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Robomaker::SyncDeploymentJobResponse

=head1 ATTRIBUTES


=head2 Arn => Str

The Amazon Resource Name (ARN) of the synchronization request.


=head2 CreatedAt => Str

The time, in milliseconds since the epoch, when the fleet was created.


=head2 DeploymentApplicationConfigs => ArrayRef[L<Paws::Robomaker::DeploymentApplicationConfig>]

Information about the deployment application configurations.


=head2 DeploymentConfig => L<Paws::Robomaker::DeploymentConfig>

Information about the deployment configuration.


=head2 FailureCode => Str

The failure code if the job fails.

Valid values are: C<"ResourceNotFound">, C<"FailureThresholdBreached">, C<"RobotDeploymentNoResponse">, C<"GreengrassDeploymentFailed">, C<"MissingRobotArchitecture">, C<"MissingRobotApplicationArchitecture">, C<"MissingRobotDeploymentResource">, C<"GreengrassGroupVersionDoesNotExist">, C<"ExtractingBundleFailure">, C<"PreLaunchFileFailure">, C<"PostLaunchFileFailure">, C<"BadPermissionError">, C<"InternalServerError">
=head2 FailureReason => Str

The failure reason if the job fails.


=head2 Fleet => Str

The Amazon Resource Name (ARN) of the fleet.


=head2 Status => Str

The status of the synchronization job.

Valid values are: C<"Pending">, C<"Preparing">, C<"InProgress">, C<"Failed">, C<"Succeeded">
=head2 _request_id => Str


=cut
