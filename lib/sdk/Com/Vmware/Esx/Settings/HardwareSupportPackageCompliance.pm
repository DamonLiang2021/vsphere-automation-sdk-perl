## @class Com::Vmware::Esx::Settings::HardwareSupportPackageCompliance
#
#
# The  ``Com::Vmware::Esx::Settings::HardwareSupportPackageCompliance``   *class* 
#     contains information that describe compliance of the Hardware Support Package (HSP) on
#     the host with respect to the Hardware support Package (HSP) present in the target
#     software image specification, if any.

package Com::Vmware::Esx::Settings::HardwareSupportPackageCompliance;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Esx::Settings::HardwareSupportPackageCompliance structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{status} = $args{'status'};
   $self->{current} = $args{'current'};
   $self->{target} = $args{'target'};
   $self->{hardware_modules} = $args{'hardware_modules'};
   $self->{notifications} = $args{'notifications'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Esx::Settings::HardwareSupportPackageCompliance');
   $self->set_binding_name('name' => 'com.vmware.esx.settings.hardware_support_package_compliance');
   $self->set_binding_field('key' => 'status', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Esx::Settings', 'type_name' => 'ComplianceStatus'));
   $self->set_binding_field('key' => 'current', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Esx::Settings', 'type_name' => 'HardwareSupportPackageInfo')));
   $self->set_binding_field('key' => 'target', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Esx::Settings', 'type_name' => 'HardwareSupportPackageInfo')));
   $self->set_binding_field('key' => 'hardware_modules', 'value' => new Com::Vmware::Vapi::Bindings::Type::MapType('binding_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StructType('name' => 'map-entry', 'fields' => {'key' => new Com::Vmware::Vapi::Bindings::Type::StringType(), 'value' =>  new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Esx::Settings', 'type_name' => 'HardwareModuleFirmwareCompliance')}))));
   $self->set_binding_field('key' => 'notifications', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Esx::Settings', 'type_name' => 'Notifications'));
   bless $self, $class;
   return $self;
}

## @method get_status ()
# Gets the value of 'status' property.
#
# @retval status - The current value of the field.
# Compliance status of the Hardware Support Package (HSP).
#
# ComplianceStatus#
sub get_status {
   my ($self, %args) = @_;
   return $self->{'status'}; 	
}

## @method set_status ()
# Sets the given value for 'status' property.
# 
# @param status  - New value for the field.
# Compliance status of the Hardware Support Package (HSP).
#
sub set_status {
   my ($self, %args) = @_;
   $self->{'status'} = $args{'status'}; 
   return;	
}

## @method get_current ()
# Gets the value of 'current' property.
#
# @retval current - The current value of the field.
# Current version of the Hardware Support Package present on the host.
#
# Optional#
sub get_current {
   my ($self, %args) = @_;
   return $self->{'current'}; 	
}

## @method set_current ()
# Sets the given value for 'current' property.
# 
# @param current  - New value for the field.
# Current version of the Hardware Support Package present on the host.
#
sub set_current {
   my ($self, %args) = @_;
   $self->{'current'} = $args{'current'}; 
   return;	
}

## @method get_target ()
# Gets the value of 'target' property.
#
# @retval target - The current value of the field.
# Target version of the Hardware Support Package present in the software specification.
#
# Optional#
sub get_target {
   my ($self, %args) = @_;
   return $self->{'target'}; 	
}

## @method set_target ()
# Sets the given value for 'target' property.
# 
# @param target  - New value for the field.
# Target version of the Hardware Support Package present in the software specification.
#
sub set_target {
   my ($self, %args) = @_;
   $self->{'target'} = $args{'target'}; 
   return;	
}

## @method get_hardware_modules ()
# Gets the value of 'hardware_modules' property.
#
# @retval hardware_modules - The current value of the field.
# Compliance result for individual hardware module on the host. The key is the module
#     identifier and value is the HardwareModuleFirmwareCompliance for the device. NOTE: if
#     no individual hardware module compliance is returned by the, Hardware Support Manager
#     (HSM), this map may have no entries even if ComplianceStatus = NON_COMPLIANT
#
# Map#
sub get_hardware_modules {
   my ($self, %args) = @_;
   return $self->{'hardware_modules'}; 	
}

## @method set_hardware_modules ()
# Sets the given value for 'hardware_modules' property.
# 
# @param hardware_modules  - New value for the field.
# Compliance result for individual hardware module on the host. The key is the module
#     identifier and value is the HardwareModuleFirmwareCompliance for the device. NOTE: if
#     no individual hardware module compliance is returned by the, Hardware Support Manager
#     (HSM), this map may have no entries even if ComplianceStatus = NON_COMPLIANT
#
sub set_hardware_modules {
   my ($self, %args) = @_;
   $self->{'hardware_modules'} = $args{'hardware_modules'}; 
   return;	
}

## @method get_notifications ()
# Gets the value of 'notifications' property.
#
# @retval notifications - The current value of the field.
# Notifications describing the compliance result.
#
# Notifications#
sub get_notifications {
   my ($self, %args) = @_;
   return $self->{'notifications'}; 	
}

## @method set_notifications ()
# Sets the given value for 'notifications' property.
# 
# @param notifications  - New value for the field.
# Notifications describing the compliance result.
#
sub set_notifications {
   my ($self, %args) = @_;
   $self->{'notifications'} = $args{'notifications'}; 
   return;	
}


1;


