package Paws::DeviceFarm::Run;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', xmlname => 'arn', request_name => 'arn', traits => ['Unwrapped','NameInRequest']);
  has BillingMethod => (is => 'ro', isa => 'Str', xmlname => 'billingMethod', request_name => 'billingMethod', traits => ['Unwrapped','NameInRequest']);
  has CompletedJobs => (is => 'ro', isa => 'Int', xmlname => 'completedJobs', request_name => 'completedJobs', traits => ['Unwrapped','NameInRequest']);
  has Counters => (is => 'ro', isa => 'Paws::DeviceFarm::Counters', xmlname => 'counters', request_name => 'counters', traits => ['Unwrapped','NameInRequest']);
  has Created => (is => 'ro', isa => 'Str', xmlname => 'created', request_name => 'created', traits => ['Unwrapped','NameInRequest']);
  has DeviceMinutes => (is => 'ro', isa => 'Paws::DeviceFarm::DeviceMinutes', xmlname => 'deviceMinutes', request_name => 'deviceMinutes', traits => ['Unwrapped','NameInRequest']);
  has Message => (is => 'ro', isa => 'Str', xmlname => 'message', request_name => 'message', traits => ['Unwrapped','NameInRequest']);
  has Name => (is => 'ro', isa => 'Str', xmlname => 'name', request_name => 'name', traits => ['Unwrapped','NameInRequest']);
  has NetworkProfile => (is => 'ro', isa => 'Paws::DeviceFarm::NetworkProfile', xmlname => 'networkProfile', request_name => 'networkProfile', traits => ['Unwrapped','NameInRequest']);
  has Platform => (is => 'ro', isa => 'Str', xmlname => 'platform', request_name => 'platform', traits => ['Unwrapped','NameInRequest']);
  has Result => (is => 'ro', isa => 'Str', xmlname => 'result', request_name => 'result', traits => ['Unwrapped','NameInRequest']);
  has Started => (is => 'ro', isa => 'Str', xmlname => 'started', request_name => 'started', traits => ['Unwrapped','NameInRequest']);
  has Status => (is => 'ro', isa => 'Str', xmlname => 'status', request_name => 'status', traits => ['Unwrapped','NameInRequest']);
  has Stopped => (is => 'ro', isa => 'Str', xmlname => 'stopped', request_name => 'stopped', traits => ['Unwrapped','NameInRequest']);
  has TotalJobs => (is => 'ro', isa => 'Int', xmlname => 'totalJobs', request_name => 'totalJobs', traits => ['Unwrapped','NameInRequest']);
  has Type => (is => 'ro', isa => 'Str', xmlname => 'type', request_name => 'type', traits => ['Unwrapped','NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::DeviceFarm::Run

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DeviceFarm::Run object:

  $service_obj->Method(Att1 => { Arn => $value, ..., Type => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DeviceFarm::Run object:

  $result = $service_obj->Method(...);
  $result->Att1->Arn

=head1 DESCRIPTION

Represents an app on a set of devices with a specific test and
configuration.

=head1 ATTRIBUTES


=head2 Arn => Str

  The run's ARN.


=head2 BillingMethod => Str

  Specifies the billing method for a test run: C<metered> or
C<unmetered>. If the parameter is not specified, the default value is
C<metered>.


=head2 CompletedJobs => Int

  The total number of completed jobs.


=head2 Counters => L<Paws::DeviceFarm::Counters>

  The run's result counters.


=head2 Created => Str

  When the run was created.


=head2 DeviceMinutes => L<Paws::DeviceFarm::DeviceMinutes>

  Represents the total (metered or unmetered) minutes used by the test
run.


=head2 Message => Str

  A message about the run's result.


=head2 Name => Str

  The run's name.


=head2 NetworkProfile => L<Paws::DeviceFarm::NetworkProfile>

  The network profile being used for a test run.


=head2 Platform => Str

  The run's platform.

Allowed values include:

=over

=item *

ANDROID: The Android platform.

=item *

IOS: The iOS platform.

=back



=head2 Result => Str

  The run's result.

Allowed values include:

=over

=item *

PENDING: A pending condition.

=item *

PASSED: A passing condition.

=item *

WARNED: A warning condition.

=item *

FAILED: A failed condition.

=item *

SKIPPED: A skipped condition.

=item *

ERRORED: An error condition.

=item *

STOPPED: A stopped condition.

=back



=head2 Started => Str

  The run's start time.


=head2 Status => Str

  The run's status.

Allowed values include:

=over

=item *

PENDING: A pending status.

=item *

PENDING_CONCURRENCY: A pending concurrency status.

=item *

PENDING_DEVICE: A pending device status.

=item *

PROCESSING: A processing status.

=item *

SCHEDULING: A scheduling status.

=item *

PREPARING: A preparing status.

=item *

RUNNING: A running status.

=item *

COMPLETED: A completed status.

=item *

STOPPING: A stopping status.

=back



=head2 Stopped => Str

  The run's stop time.


=head2 TotalJobs => Int

  The total number of jobs for the run.


=head2 Type => Str

  The run's type.

Must be one of the following values:

=over

=item *

BUILTIN_FUZZ: The built-in fuzz type.

=item *

BUILTIN_EXPLORER: For Android, an app explorer that will traverse an
Android app, interacting with it and capturing screenshots at the same
time.

=item *

APPIUM_JAVA_JUNIT: The Appium Java JUnit type.

=item *

APPIUM_JAVA_TESTNG: The Appium Java TestNG type.

=item *

APPIUM_PYTHON: The Appium Python type.

=item *

APPIUM_WEB_JAVA_JUNIT: The Appium Java JUnit type for Web apps.

=item *

APPIUM_WEB_JAVA_TESTNG: The Appium Java TestNG type for Web apps.

=item *

APPIUM_WEB_PYTHON: The Appium Python type for Web apps.

=item *

CALABASH: The Calabash type.

=item *

INSTRUMENTATION: The Instrumentation type.

=item *

UIAUTOMATION: The uiautomation type.

=item *

UIAUTOMATOR: The uiautomator type.

=item *

XCTEST: The XCode test type.

=item *

XCTEST_UI: The XCode UI test type.

=back




=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DeviceFarm>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

