
package Paws::ImportExport::GetShippingLabel;
  use Moose;
  has APIVersion => (is => 'ro', isa => 'Str');
  has City => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'city' );
  has Company => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'company' );
  has Country => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'country' );
  has JobIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'jobIds' , required => 1);
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name' );
  has PhoneNumber => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'phoneNumber' );
  has PostalCode => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'postalCode' );
  has StateOrProvince => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'stateOrProvince' );
  has Street1 => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'street1' );
  has Street2 => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'street2' );
  has Street3 => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'street3' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetShippingLabel');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ImportExport::GetShippingLabelOutput');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'GetShippingLabelResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ImportExport::GetShippingLabel - Arguments for method GetShippingLabel on Paws::ImportExport

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetShippingLabel on the 
AWS Import/Export service. Use the attributes of this class
as arguments to method GetShippingLabel.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetShippingLabel.

As an example:

  $service_obj->GetShippingLabel(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 APIVersion => Str





=head2 City => Str





=head2 Company => Str





=head2 Country => Str





=head2 B<REQUIRED> JobIds => ArrayRef[Str|Undef]





=head2 Name => Str





=head2 PhoneNumber => Str





=head2 PostalCode => Str





=head2 StateOrProvince => Str





=head2 Street1 => Str





=head2 Street2 => Str





=head2 Street3 => Str






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetShippingLabel in L<Paws::ImportExport>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

