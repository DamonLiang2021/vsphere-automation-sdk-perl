########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file UpdateSession.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Content::Library::Item::UpdateSession
# The  ``Com::Vmware::Content::Library::Item::UpdateSession``   *interface*  manipulates
#     sessions that are used to upload content into the Content Library Service, and/or to
#     remove files from a library item. <p>
# 
# An update session is a resource which tracks changes to content. An update session is
#     created with a set of files that are intended to be uploaded to a specific  class
#     Com::Vmware::Content::Library::ItemModel , or removed from an item. The session object
#     can be used to track the uploads and inspect the changes that are being made to the
#     item by that upload. It can also serve as a channel to check on the result of the
#     upload, and status messages such as errors and warnings for the upload. </p>
# 
# <p>
# 
# Modifications are not visible to other clients unless the session is completed and all
#     necessary files have been received. </p>
# 
# <p>
# 
# The management of the files within the session is done through the  class
#     Com::Vmware::Content::Library::Item::Updatesession::File   *interface* .</p>
#
#
# Constant String::RESOURCE_TYPE #
#Resource type for an update session.

package Com::Vmware::Content::Library::Item::UpdateSession;

#
# Core Perl modules
#
use strict;
use warnings;
use Carp;

#
# Vapi Perl modules
#
use Com::Vmware::Vapi::Bindings::Type::StructType;
use Com::Vmware::Content::Library::Item::UpdateSessionStub;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiInterface);

## @method new ()
# Constructor to initialize the object
#
# @param api_provider - protocol connection to use with
#                      stubs created by this factory
# @param StubConfig - Stub's additional configuration
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $stub_config = $args {stub_config};
   my $api_provider = $args {api_provider};

   my $self = $class->SUPER::new('stub_config' => $stub_config,
                                 'api_provider' => $api_provider);
   bless $self, $class;
   return $self;
}

## @method create ()
# Creates a new update session. An update session is used to make modifications to a library
# item. Modifications are not visible to other clients unless the session is completed and
# all necessary files have been received. <p>
# 
# Content Library Service allows only one single update session to be active for a specific
# library item.</p>
#
# Note:
# Privileges required for this operation are ContentLibrary.UpdateSession.
#
# @param client_token [OPTIONAL] Unique token generated by the client for each creation request. The token should be a
#     universally unique identifier (UUID), for example: 
#     ``b8a2a2e3-2314-43cd-a871-6ede0f429751`` . This token can be used to guarantee
#     idempotent creation.
# If not specified creation is not idempotent.
# . The value must be String or None.
#
# @param create_spec [REQUIRED]  Specification for the new update session to be created.
# . The value must be Com::Vmware::Content::Library::Item::UpdateSessionModel.
#
# @retval 
# Identifier of the new update session being created.
# The value will be an identifier for the resource type
#     getQualifiedName(com.vmware.content.library.item.UpdateSession).
# The return type will be str
#
# @throw Com::Vmware::Vapi::Std::Errors::InvalidArgument 
#  if the session specification is not valid.
# @throw Com::Vmware::Vapi::Std::Errors::InvalidArgument 
#  if the  ``client_token``  does not conform to the UUID format.
#
# @throw Com::Vmware::Vapi::Std::Errors::InvalidElementType 
#  if the update session is being created on a subscribed library item.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
#  if the item targeted for update does not exist.
#
# @throw Com::Vmware::Vapi::Std::Errors::ResourceBusy 
#  if there is another update session on the same library item.
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized
# if you do not have all of the privileges described as follows: <ul>
# <li> The resource  ``com.vmware.content.library.Item``  referenced by the  *field*  
#     :attr:`Com::Vmware::Content::Library::Item::UpdateSessionModel.library_item_id` 
#     requires  ``ContentLibrary.UpdateSession`` . </li>
# </ul>
#

sub create {
   my ($self, %args) = @_;
   my $client_token = $args {client_token};
   my $create_spec = $args {create_spec};

   $self->validate_args (method_name => 'create',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'create',
                         method_args => \%args);
}


## @method get ()
# Gets the update session with the specified identifier, including the most up-to-date
# status information for the session.
#
# Note:
# Privileges required for this operation are System.Anonymous.
#
# @param update_session_id [REQUIRED]  Identifier of the update session to retrieve.
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.content.library.item.UpdateSession).
# . The value must be str.
#
# @retval 
# The  class Com::Vmware::Content::Library::Item::UpdateSessionModel  instance with the
#     given  ``update_session_id`` .
# The return type will be Com::Vmware::Content::Library::Item::UpdateSessionModel
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
#  if no update session with the given identifier exists.
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized
# if you do not have all of the privileges described as follows: <ul>
#  <li>  *Method*  execution requires  ``System.Anonymous`` . </li>
# </ul>
#

sub get {
   my ($self, %args) = @_;
   my $update_session_id = $args {update_session_id};

   $self->validate_args (method_name => 'get',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'get',
                         method_args => \%args);
}


## @method list ()
# Lists the identifiers of the update session created by the calling user. Optionally may
# filter by library item.
#
# Note:
# Privileges required for this operation are ContentLibrary.UpdateSession.
#
# @param library_item_id [OPTIONAL]  Optional library item identifier on which to filter results.
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.content.library.item.UpdateSession).
# If not specified the results are not filtered.
# . The value must be str or None.
#
# @retval 
# The  *list*  of identifiers of all update sessions created by the calling user.
# The value will be an identifier for the resource type
#     getQualifiedName(com.vmware.content.library.item.UpdateSession).
# The return type will be Array of str
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
#  if a library item identifier is given for an item which does not exist.
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized
# if you do not have all of the privileges described as follows: <ul>
# <li> The resource  ``com.vmware.content.library.item.UpdateSession``  referenced by
#     the  *parameter*   ``library_item_id``  requires  ``ContentLibrary.UpdateSession`` .
#     </li>
# </ul>
#

sub list {
   my ($self, %args) = @_;
   my $library_item_id = $args {library_item_id};

   $self->validate_args (method_name => 'list',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'list',
                         method_args => \%args);
}


## @method complete ()
# Completes the update session. This indicates that the client has finished making all the
# changes required to the underlying library item. If the client is pushing the content to
# the server, the library item will be updated once this call returns. If the server is
# pulling the content, the call may return before the changes become visible. In that case,
# the client can track the session to know when the server is done. <p>
# 
# This  *method*  requires the session to be in the 
# :attr:`Com::Vmware::Content::Library::Item::UpdateSessionModel::State.ACTIVE`  state. </p>
# 
# <p>
# 
# Depending on the type of the library item associated with this session, a type adapter may
# be invoked to verify the validity of the files uploaded. The user can explicitly validate
# the session before completing the session by using the 
# :func:`Com::Vmware::Content::Library::Item::Updatesession::File.validate`   *method* .
# </p>
# 
# <p>
# 
# Modifications are not visible to other clients unless the session is completed and all
# necessary files have been received.</p>
#
# Note:
# Privileges required for this operation are System.Anonymous.
#
# @param update_session_id [REQUIRED]  Identifier of the update session that should be completed.
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.content.library.item.UpdateSession).
# . The value must be str.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
#  if no update session with the given identifier exists.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState 
# if the update session is not in the 
#     :attr:`Com::Vmware::Content::Library::Item::UpdateSessionModel::State.ACTIVE`  state,
#     or if some of the files that will be uploaded by the client aren&apos;t received
#     correctly.
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized
# if you do not have all of the privileges described as follows: <ul>
#  <li>  *Method*  execution requires  ``System.Anonymous`` . </li>
# </ul>
#

sub complete {
   my ($self, %args) = @_;
   my $update_session_id = $args {update_session_id};

   $self->validate_args (method_name => 'complete',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'complete',
                         method_args => \%args);
}


## @method keep_alive ()
# Keeps an update session alive. <p>
# 
# If there is no activity for an update session after a period of time, the update session
# will expire, then be deleted. The update session expiration timeout is configurable in the
# Content Library Service system configuration. The default is five minutes. Invoking this 
# *method*  enables a client to specifically extend the lifetime of the update session.</p>
#
# Note:
# Privileges required for this operation are System.Anonymous.
#
# @param update_session_id [REQUIRED]  Identifier of the update session whose lifetime should be extended.
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.content.library.item.UpdateSession).
# . The value must be str.
#
# @param client_progress [OPTIONAL] Optional update to the progress property of the session. If specified, the new
#     progress should be greater then the current progress. See 
#     :attr:`Com::Vmware::Content::Library::Item::UpdateSessionModel.client_progress` .
# If not specified the progress is not updated.
# . The value must be Long or None.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
#  if no update session with the given identifier exists.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState 
# if the update session is not in the 
#     :attr:`Com::Vmware::Content::Library::Item::UpdateSessionModel::State.ACTIVE`  state.
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized
# if you do not have all of the privileges described as follows: <ul>
#  <li>  *Method*  execution requires  ``System.Anonymous`` . </li>
# </ul>
#

sub keep_alive {
   my ($self, %args) = @_;
   my $update_session_id = $args {update_session_id};
   my $client_progress = $args {client_progress};

   $self->validate_args (method_name => 'keep_alive',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'keep_alive',
                         method_args => \%args);
}


## @method cancel ()
# Cancels the update session and sets its state to 
# :attr:`Com::Vmware::Content::Library::Item::UpdateSessionModel::State.CANCELED` . This 
# *method*  will free up any temporary resources currently associated with the session. <p>
# 
#  This  *method*  is not allowed if the session has been already completed. </p>
# 
# <p>
# 
# Cancelling an update session will cancel any in progress transfers (either uploaded by the
# client or pulled by the server). Any content that has been already received will be
# scheduled for deletion.</p>
#
# Note:
# Privileges required for this operation are System.Anonymous.
#
# @param update_session_id [REQUIRED]  Identifier of the update session that should be canceled.
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.content.library.item.UpdateSession).
# . The value must be str.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
#  if no update session with the given identifier exists.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState 
# if the update session is not in the 
#     :attr:`Com::Vmware::Content::Library::Item::UpdateSessionModel::State.ACTIVE`  state.
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized
# if you do not have all of the privileges described as follows: <ul>
#  <li>  *Method*  execution requires  ``System.Anonymous`` . </li>
# </ul>
#

sub cancel {
   my ($self, %args) = @_;
   my $update_session_id = $args {update_session_id};

   $self->validate_args (method_name => 'cancel',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'cancel',
                         method_args => \%args);
}


## @method fail ()
# Terminates the update session with a client specified error message. <p>
# 
# This is useful in transmitting client side failures (for example, not being able to access
# a file) to the server side.</p>
#
# Note:
# Privileges required for this operation are System.Anonymous.
#
# @param update_session_id [REQUIRED]  Identifier of the update session to fail.
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.content.library.item.UpdateSession).
# . The value must be str.
#
# @param client_error_message [REQUIRED] Client side error message. This can be useful in providing some extra details about
#     the client side failure. Note that the message won&apos;t be translated to the
#     user&apos;s locale.
# . The value must be String.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
#  if the update session does not exist.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState 
# if the update session is not in the 
#     :attr:`Com::Vmware::Content::Library::Item::UpdateSessionModel::State.ACTIVE`  state.
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized
# if you do not have all of the privileges described as follows: <ul>
#  <li>  *Method*  execution requires  ``System.Anonymous`` . </li>
# </ul>
#

sub fail {
   my ($self, %args) = @_;
   my $update_session_id = $args {update_session_id};
   my $client_error_message = $args {client_error_message};

   $self->validate_args (method_name => 'fail',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'fail',
                         method_args => \%args);
}


## @method delete ()
# Deletes an update session. This removes the session and all information associated with
# it. <p>
# 
# Removing an update session leaves any current transfers for that session in an
# indeterminate state (there is no guarantee that the server will terminate the transfers,
# or that the transfers can be completed). However there will no longer be a means of
# inspecting the status of those uploads except by seeing the effect on the library item.
# </p>
# 
# <p>
# 
# Update sessions for which there is no upload activity or which are complete will
# automatically be deleted after a period of time.</p>
#
# Note:
# Privileges required for this operation are System.Anonymous.
#
# @param update_session_id [REQUIRED]  Identifer of the update session to delete.
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.content.library.item.UpdateSession).
# . The value must be str.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
#  if the update session does not exist.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState 
# if the update session is in the 
#     :attr:`Com::Vmware::Content::Library::Item::UpdateSessionModel::State.ACTIVE`  state.
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized
# if you do not have all of the privileges described as follows: <ul>
#  <li>  *Method*  execution requires  ``System.Anonymous`` . </li>
# </ul>
#

sub delete {
   my ($self, %args) = @_;
   my $update_session_id = $args {update_session_id};

   $self->validate_args (method_name => 'delete',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'delete',
                         method_args => \%args);
}


## @method update ()
# Updates the properties of an update session. <p>
# 
# This is an incremental update to the update session. Any  *field*  in the  class
# Com::Vmware::Content::Library::Item::UpdateSessionModel   *class*  that is  *null*  will
# not be modified. </p>
# 
# <p>
# 
# This  *method*  will only update the property 
# :attr:`Com::Vmware::Content::Library::Item::UpdateSessionModel.warning_behavior`  of the
# update session. This will not, for example, update the 
# :attr:`Com::Vmware::Content::Library::Item::UpdateSessionModel.library_item_id`  or 
# :attr:`Com::Vmware::Content::Library::Item::UpdateSessionModel.state`  of an update
# session. </p>
# 
# <p>
# 
# This  *method*  requires the session to be in the 
# :attr:`Com::Vmware::Content::Library::Item::UpdateSessionModel::State.ACTIVE`  state.</p>
# 
# . This  *method*  was added in vSphere API 6.7 U1.
#
# Note:
# Privileges required for this operation are System.Anonymous.
#
# @param update_session_id [REQUIRED]  Identifer of the update session that should be updated.
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.content.library.item.UpdateSession).
# . The value must be str.
#
# @param update_spec [REQUIRED]  Specification for the new property values to be set on the update session.
# . The value must be Com::Vmware::Content::Library::Item::UpdateSessionModel.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
#  if the update session does not exist.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState 
# if the update session is not in the 
#     :attr:`Com::Vmware::Content::Library::Item::UpdateSessionModel::State.ACTIVE`  state.
#
# @throw Com::Vmware::Vapi::Std::Errors::InvalidArgument 
#  if the update session specification is not valid.
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized
# if you do not have all of the privileges described as follows: <ul>
#  <li>  *Method*  execution requires  ``System.Anonymous`` . </li>
# </ul>
#

sub update {
   my ($self, %args) = @_;
   my $update_session_id = $args {update_session_id};
   my $update_spec = $args {update_spec};

   $self->validate_args (method_name => 'update',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'update',
                         method_args => \%args);
}


1;

#########################################################################################
# Begins enumerations for the Com::Vmware::Content::Library::Item::UpdateSession service
#########################################################################################



#########################################################################################
# Ends enumerations for the Com::Vmware::Content::Library::Item::UpdateSession service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Content::Library::Item::UpdateSession service
#########################################################################################


#########################################################################################
# Ends structures for the Com::Vmware::Content::Library::Item::UpdateSession service
#########################################################################################