use utf8;
package Ext::Schema::Result::CompanyBookmark;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Ext::Schema::Result::CompanyBookmark

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

=head1 TABLE: C<company_bookmark>

=cut

__PACKAGE__->table("company_bookmark");

=head1 ACCESSORS

=head2 bookmark_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_auto_increment: 1
  is_nullable: 0

=head2 company_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_foreign_key: 1
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "bookmark_id",
  {
    data_type => "integer",
    extra => { unsigned => 1 },
    is_auto_increment => 1,
    is_nullable => 0,
  },
  "company_id",
  {
    data_type => "integer",
    extra => { unsigned => 1 },
    is_foreign_key => 1,
    is_nullable => 1,
  },
);

=head1 PRIMARY KEY

=over 4

=item * L</bookmark_id>

=back

=cut

__PACKAGE__->set_primary_key("bookmark_id");

=head1 RELATIONS

=head2 company

Type: belongs_to

Related object: L<Ext::Schema::Result::PotentialEmployer>

=cut

__PACKAGE__->belongs_to(
  "company",
  "Ext::Schema::Result::PotentialEmployer",
  { company_id => "company_id" },
  {
    is_deferrable => 1,
    join_type     => "LEFT",
    on_delete     => "RESTRICT",
    on_update     => "RESTRICT",
  },
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2017-04-30 14:11:56
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:CfNS01/X1sfnR9qIuzQHMQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
