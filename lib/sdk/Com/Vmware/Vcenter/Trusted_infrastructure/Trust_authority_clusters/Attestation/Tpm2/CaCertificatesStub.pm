########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file CaCertificatesStub.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vcenter::Trusted_infrastructure;
#use Com::Vmware::Vapi::Std;
#use Com::Vmware::Vapi::Std::Errors;

package Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Attestation::Tpm2::CaCertificatesStub;

## @class Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Attestation::Tpm2::CaCertificates
#
#The {@name CaCertificates} {@term service} provides {@term
#operations} to manage Trusted Platform Module (TPM) CA certificates.
#<p>
#Endorsement Keys are typically packaged in a certificate that is
#signed by a certificate authority (CA). This {@term service} allows
#the CA certificate to be registered with the Attestation Service in
#order to validate TPM EK certificates when presented at attestation
#time.
#

#
# Core Perl modules
#
use strict;
use warnings;
use Carp;

#
# Vapi Perl modules
#
use Com::Vmware::Vapi::Bindings::Type::BlobType;
use Com::Vmware::Vapi::Bindings::Type::BooleanType;
use Com::Vmware::Vapi::Bindings::Type::DateTimeType;
use Com::Vmware::Vapi::Bindings::Type::DoubleType;
use Com::Vmware::Vapi::Bindings::Type::EnumType;
use Com::Vmware::Vapi::Bindings::Type::ErrorType;
use Com::Vmware::Vapi::Bindings::Type::ListType;
use Com::Vmware::Vapi::Bindings::Type::LongType;
use Com::Vmware::Vapi::Bindings::Type::MapType;
use Com::Vmware::Vapi::Bindings::Type::OpaqueType;
use Com::Vmware::Vapi::Bindings::Type::OptionalType;
use Com::Vmware::Vapi::Bindings::Type::ReferenceType;
use Com::Vmware::Vapi::Bindings::Type::SecretType;
use Com::Vmware::Vapi::Bindings::Type::SetType;
use Com::Vmware::Vapi::Bindings::Type::StringType;
use Com::Vmware::Vapi::Bindings::Type::StructType;
use Com::Vmware::Vapi::Bindings::Type::DynamicStructType;
use Com::Vmware::Vapi::Bindings::Type::URIType;
use Com::Vmware::Vapi::Bindings::Type::VoidType;
use Com::Vmware::Vapi::Data::UnionValidator;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::ApiInterfaceStub);

## @method new
# Constructor to initialize the object
#
# @param ApiProvider - ApiProvider for vAPI stubs
#
# @return
# Blessed object
#
sub new
{
   my ($class, %args) = @_;
   my $api_provider = $args {api_provider};
   $class = ref($class) || $class;
      #
   # properties for list operation
   #
   my $list_input_type = new Com::Vmware::Vapi::Bindings::Type::StructType(
      'name' => 'operation-input',
      'fields' => {
                   'cluster' => new Com::Vmware::Vapi::Bindings::Type::StringType(),
      }
   );
   my $list_error_dict = {
      'com.vmware.vapi.std.errors.error' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std::Errors', 'type_name' => 'Error'),
      'com.vmware.vapi.std.errors.invalid_argument' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std::Errors', 'type_name' => 'InvalidArgument'),
      'com.vmware.vapi.std.errors.not_found' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std::Errors', 'type_name' => 'NotFound'),
      'com.vmware.vapi.std.errors.unauthenticated' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std::Errors', 'type_name' => 'Unauthenticated'),

      };

   my $list_input_validator_list = [
   ];
   my $list_output_validator_list = [];

   #
   # properties for create operation
   #
   my $create_input_type = new Com::Vmware::Vapi::Bindings::Type::StructType(
      'name' => 'operation-input',
      'fields' => {
                   'cluster' => new Com::Vmware::Vapi::Bindings::Type::StringType(),
                   'spec' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Attestation::Tpm2', 'type_name' => 'CaCertificates::CreateSpec'),
      }
   );
   my $create_error_dict = {
      'com.vmware.vapi.std.errors.already_exists' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std::Errors', 'type_name' => 'AlreadyExists'),
      'com.vmware.vapi.std.errors.error' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std::Errors', 'type_name' => 'Error'),
      'com.vmware.vapi.std.errors.invalid_argument' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std::Errors', 'type_name' => 'InvalidArgument'),
      'com.vmware.vapi.std.errors.not_found' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std::Errors', 'type_name' => 'NotFound'),
      'com.vmware.vapi.std.errors.unauthenticated' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std::Errors', 'type_name' => 'Unauthenticated'),

      };

   my $create_input_validator_list = [
   ];
   my $create_output_validator_list = [];

   #
   # properties for delete operation
   #
   my $delete_input_type = new Com::Vmware::Vapi::Bindings::Type::StructType(
      'name' => 'operation-input',
      'fields' => {
                   'cluster' => new Com::Vmware::Vapi::Bindings::Type::StringType(),
                   'name' => new Com::Vmware::Vapi::Bindings::Type::StringType(),
      }
   );
   my $delete_error_dict = {
      'com.vmware.vapi.std.errors.error' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std::Errors', 'type_name' => 'Error'),
      'com.vmware.vapi.std.errors.invalid_argument' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std::Errors', 'type_name' => 'InvalidArgument'),
      'com.vmware.vapi.std.errors.not_found' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std::Errors', 'type_name' => 'NotFound'),
      'com.vmware.vapi.std.errors.unauthenticated' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std::Errors', 'type_name' => 'Unauthenticated'),

      };

   my $delete_input_validator_list = [
   ];
   my $delete_output_validator_list = [];

   #
   # properties for get operation
   #
   my $get_input_type = new Com::Vmware::Vapi::Bindings::Type::StructType(
      'name' => 'operation-input',
      'fields' => {
                   'cluster' => new Com::Vmware::Vapi::Bindings::Type::StringType(),
                   'name' => new Com::Vmware::Vapi::Bindings::Type::StringType(),
      }
   );
   my $get_error_dict = {
      'com.vmware.vapi.std.errors.error' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std::Errors', 'type_name' => 'Error'),
      'com.vmware.vapi.std.errors.invalid_argument' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std::Errors', 'type_name' => 'InvalidArgument'),
      'com.vmware.vapi.std.errors.not_found' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std::Errors', 'type_name' => 'NotFound'),
      'com.vmware.vapi.std.errors.unauthenticated' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std::Errors', 'type_name' => 'Unauthenticated'),

      };

   my $get_input_validator_list = [
   ];
   my $get_output_validator_list = [];

   #
   # All the methods (operations) info in a hash
   #
   my $operations = {
      'list$task' => {
                'input_type'=> $list_input_type,
                'output_type'=> new Com::Vmware::Vapi::Bindings::Type::StringType(),
                'errors'=> $list_error_dict,
                'input_validator_list'=> $list_input_validator_list,
                'output_validator_list'=> $list_output_validator_list,
            },
      'create$task' => {
                'input_type'=> $create_input_type,
                'output_type'=> new Com::Vmware::Vapi::Bindings::Type::StringType(),
                'errors'=> $create_error_dict,
                'input_validator_list'=> $create_input_validator_list,
                'output_validator_list'=> $create_output_validator_list,
            },
      'delete$task' => {
                'input_type'=> $delete_input_type,
                'output_type'=> new Com::Vmware::Vapi::Bindings::Type::StringType(),
                'errors'=> $delete_error_dict,
                'input_validator_list'=> $delete_input_validator_list,
                'output_validator_list'=> $delete_output_validator_list,
            },
      'get$task' => {
                'input_type'=> $get_input_type,
                'output_type'=> new Com::Vmware::Vapi::Bindings::Type::StringType(),
                'errors'=> $get_error_dict,
                'input_validator_list'=> $get_input_validator_list,
                'output_validator_list'=> $get_output_validator_list,
            },
   };

   my $self = $class->SUPER::new ('api_provider' => $api_provider,
                                  'iface_name' => 'com.vmware.vcenter.trusted_infrastructure.trust_authority_clusters.attestation.tpm2.ca_certificates',
                                  'operations' => $operations
                                 );
   bless $self, $class;
   return $self;
}

1;
