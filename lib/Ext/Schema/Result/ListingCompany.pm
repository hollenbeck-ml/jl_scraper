use utf8;
package Ext::Schema::Result::ListingCompany;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Ext::Schema::Result::ListingCompany

=cut

use strict;
use warnings;

use Moose;
use MooseX::NonMoose;
use MooseX::MarkAsMethods autoclean => 1;
extends 'DBIx::Class::Core';

=head1 COMPONENTS LOADED

=over 4

=item * L<DBIx::Class::InflateColumn::DateTime>

=back

=cut

__PACKAGE__->load_components("InflateColumn::DateTime");

=head1 TABLE: C<listing_company>

=cut

__PACKAGE__->table("listing_company");

=head1 ACCESSORS

=head2 listing_company_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_auto_increment: 1
  is_nullable: 0

=head2 name

  data_type: 'varchar'
  is_nullable: 1
  size: 128

=head2 blacklisted

  data_type: 'tinyint'
  default_value: 0
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "listing_company_id",
  {
    data_type => "integer",
    extra => { unsigned => 1 },
    is_auto_increment => 1,
    is_nullable => 0,
  },
  "name",
  { data_type => "varchar", is_nullable => 1, size => 128 },
  "blacklisted",
  { data_type => "tinyint", default_value => 0, is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</listing_company_id>

=back

=cut

__PACKAGE__->set_primary_key("listing_company_id");


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2017-04-30 22:49:02
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:maufrgqqq0cbxkecz0spmw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
