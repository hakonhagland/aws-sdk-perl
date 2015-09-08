package Paws::SNS::MessageAttributeMap;
  use Moose;
  with 'Paws::API::StrToObjMapParser';

  use MooseX::ClassAttribute;
  class_has xml_keys =>(is => 'ro', default => 'Name');
  class_has xml_values =>(is => 'ro', default => 'Value');

  has Map => (is => 'ro', isa => 'HashRef[Paws::SNS::MessageAttributeValue]');
1
