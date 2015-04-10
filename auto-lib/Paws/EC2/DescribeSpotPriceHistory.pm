
package Paws::EC2::DescribeSpotPriceHistory {
  use Moose;
  has AvailabilityZone => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'availabilityZone' );
  has DryRun => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'dryRun' );
  has EndTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'endTime' );
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Filter]', traits => ['NameInRequest'], request_name => 'Filter' );
  has InstanceTypes => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['NameInRequest'], request_name => 'InstanceType' );
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );
  has ProductDescriptions => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['NameInRequest'], request_name => 'ProductDescription' );
  has StartTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'startTime' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeSpotPriceHistory');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::DescribeSpotPriceHistoryResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeSpotPriceHistory - Arguments for method DescribeSpotPriceHistory on Paws::EC2

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeSpotPriceHistory on the 
Amazon Elastic Compute Cloud service. Use the attributes of this class
as arguments to method DescribeSpotPriceHistory.

You shouln't make instances of this class. Each attribute should be used as a named argument in the call to DescribeSpotPriceHistory.

As an example:

  $service_obj->DescribeSpotPriceHistory(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES

=head2 AvailabilityZone => Str

  

Filters the results by the specified Availability Zone.










=head2 DryRun => Bool

  

=head2 EndTime => Str

  

The date and time, up to the current date, from which to stop
retrieving the price history data.










=head2 Filters => ArrayRef[Paws::EC2::Filter]

  

One or more filters.

=over

=item *

C<availability-zone> - The Availability Zone for which prices should be
returned.

=item *

C<instance-type> - The type of instance (for example, C<m1.small>).

=item *

C<product-description> - The product description for the Spot Price
(C<Linux/UNIX> | C<SUSE Linux> | C<Windows> | C<Linux/UNIX (Amazon
VPC)> | C<SUSE Linux (Amazon VPC)> | C<Windows (Amazon VPC)>).

=item *

C<spot-price> - The Spot Price. The value must match exactly (or use
wildcards; greater than or less than comparison is not supported).

=item *

C<timestamp> - The timestamp of the Spot Price history (for example,
2010-08-16T05:06:11.000Z). You can use wildcards (* and ?). Greater
than or less than comparison is not supported.

=back










=head2 InstanceTypes => ArrayRef[Str]

  

Filters the results by the specified instance types.










=head2 MaxResults => Int

  

The maximum number of results to return for the request in a single
page. The remaining results of the initial request can be seen by
sending another request with the returned C<NextToken> value. This
value can be between 5 and 1000; if C<MaxResults> is given a value
larger than 1000, only 1000 results are returned.










=head2 NextToken => Str

  

The token to retrieve the next page of results.










=head2 ProductDescriptions => ArrayRef[Str]

  

Filters the results by the specified basic product descriptions.










=head2 StartTime => Str

  

The date and time, up to the past 90 days, from which to start
retrieving the price history data.












=head1 SEE ALSO

This class forms part of L<Paws>, and documents parameters for DescribeSpotPriceHistory in Paws::EC2

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

