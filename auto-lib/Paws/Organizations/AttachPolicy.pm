
package Paws::Organizations::AttachPolicy;
  use Moose;
  has PolicyId => (is => 'ro', isa => 'Str', required => 1);
  has TargetId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AttachPolicy');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Organizations::AttachPolicy - Arguments for method AttachPolicy on Paws::Organizations

=head1 DESCRIPTION

This class represents the parameters used for calling the method AttachPolicy on the 
AWS Organizations service. Use the attributes of this class
as arguments to method AttachPolicy.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AttachPolicy.

As an example:

  $service_obj->AttachPolicy(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> PolicyId => Str

The unique identifier (ID) of the policy that you want to attach to the
target. You can get the ID for the policy by calling the ListPolicies
operation.

The regex pattern for a policy ID string requires "p-" followed by from
8 to 128 lower-case letters or digits.



=head2 B<REQUIRED> TargetId => Str

The unique identifier (ID) of the root, OU, or account that you want to
attach the policy to. You can get the ID by calling the ListRoots,
ListOrganizationalUnitsForParent, or ListAccounts operations.

The regex pattern for a target ID string requires one of the following:

=over

=item *

Root: a string that begins with "r-" followed by from 4 to 32
lower-case letters or digits.

=item *

Account: a string that consists of exactly 12 digits.

=item *

Organizational unit (OU): a string that begins with "ou-" followed by
from 4 to 32 lower-case letters or digits (the ID of the root that the
OU is in) followed by a second "-" dash and from 8 to 32 additional
lower-case letters or digits.

=back





=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AttachPolicy in L<Paws::Organizations>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

