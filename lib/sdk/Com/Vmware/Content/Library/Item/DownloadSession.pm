########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file DownloadSession.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Content::Library::Item::DownloadSession
# The  ``Com::Vmware::Content::Library::Item::DownloadSession``   *interface* 
#     manipulates download sessions, which are used to download content from the Content
#     Library Service. <p>
# 
# A download session is an object that tracks the download of content (that is,
#     downloading content from the Content Library Service) and acts as a lease to keep the
#     download links available. </p>
# 
# <p>
# 
# The  class Com::Vmware::Content::Library::Item::Downloadsession::File   *interface* 
#     provides access to the download links.</p>
#
#
# Constant String::RESOURCE_TYPE #
#Resource type for a download session.

package Com::Vmware::Content::Library::Item::DownloadSession;

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
use Com::Vmware::Content::Library::Item::DownloadSessionStub;

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
# Creates a new download session.
#
# Note:
# Privileges required for this operation are ContentLibrary.DownloadSession.
#
# @param client_token [OPTIONAL] A unique token generated by the client for each creation request. The token should be
#     a universally unique identifier (UUID), for example: 
#     ``b8a2a2e3-2314-43cd-a871-6ede0f429751`` . This token can be used to guarantee
#     idempotent creation.
# If not specified creation is not idempotent.
# . The value must be String or None.
#
# @param create_spec [REQUIRED]  Specification for the new download session to be created.
# . The value must be Com::Vmware::Content::Library::Item::DownloadSessionModel.
#
# @retval 
# Identifier of the new download session being created.
# The value will be an identifier for the resource type
#     getQualifiedName(com.vmware.content.library.item.DownloadSession).
# The return type will be str
#
# @throw Com::Vmware::Vapi::Std::Errors::InvalidArgument 
#  if the session specification is not valid.
# @throw Com::Vmware::Vapi::Std::Errors::InvalidArgument 
#  format.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
#  if the library item targeted by the download does not exist.
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized
# if you do not have all of the privileges described as follows: <ul>
# <li> The resource  ``com.vmware.content.library.Item``  referenced by the  *field*  
#     :attr:`Com::Vmware::Content::Library::Item::DownloadSessionModel.library_item_id` 
#     requires  ``ContentLibrary.DownloadSession`` . </li>
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
# Gets the download session with the specified identifier, including the most up-to-date
# status information for the session.
#
# Note:
# Privileges required for this operation are System.Anonymous.
#
# @param download_session_id [REQUIRED]  Identifier of the download session to retrieve.
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.content.library.item.DownloadSession).
# . The value must be str.
#
# @retval 
# The  class Com::Vmware::Content::Library::Item::DownloadSessionModel  instance with
#     the given  ``download_session_id`` .
# The return type will be Com::Vmware::Content::Library::Item::DownloadSessionModel
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
#  if no download session with the given  ``download_session_id``  exists.
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized
# if you do not have all of the privileges described as follows: <ul>
#  <li>  *Method*  execution requires  ``System.Anonymous`` . </li>
# </ul>
#

sub get {
   my ($self, %args) = @_;
   my $download_session_id = $args {download_session_id};

   $self->validate_args (method_name => 'get',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'get',
                         method_args => \%args);
}


## @method list ()
# Lists the identifiers of the download sessions created by the calling user. Optionally may
# filter by library item.
#
# Note:
# Privileges required for this operation are ContentLibrary.DownloadSession.
#
# @param library_item_id [OPTIONAL]  Library item identifier on which to filter results.
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.content.library.item.DownloadSession).
# If not specified all download session identifiers are listed.
# . The value must be str or None.
#
# @retval 
# The  *list*  of identifiers of all download sessions created by the calling user.
# The value will be an identifier for the resource type
#     getQualifiedName(com.vmware.content.library.item.DownloadSession).
# The return type will be Array of str
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
#  if a library item identifier is given for an item which does not exist.
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized
# if you do not have all of the privileges described as follows: <ul>
# <li> The resource  ``com.vmware.content.library.item.DownloadSession``  referenced by
#     the  *parameter*   ``library_item_id``  requires  ``ContentLibrary.DownloadSession`` .
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


## @method keep_alive ()
# Keeps a download session alive. This operation is allowed only if the session is in the 
# :attr:`Com::Vmware::Content::Library::Item::DownloadSessionModel::State.ACTIVE`  state.
# <p>
# 
# If there is no activity for a download session for a certain period of time, the download
# session will expire. The download session expiration timeout is configurable in the
# Content Library Service system configuration. The default is five minutes. Invoking this 
# *method*  enables a client to specifically extend the lifetime of an active download
# session.</p>
#
# Note:
# Privileges required for this operation are System.Anonymous.
#
# @param download_session_id [REQUIRED]  Identifier of the download session whose lifetime should be extended.
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.content.library.item.DownloadSession).
# . The value must be str.
#
# @param progress [OPTIONAL] Optional update to the progress property of the session. If specified, the new
#     progress should be greater then the current progress. See 
#     :attr:`Com::Vmware::Content::Library::Item::DownloadSessionModel.client_progress` .
# If not specified the progress is not updated.
# . The value must be Long or None.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
#  if no download session with the given identifier exists.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState 
# if the download session is not in the 
#     :attr:`Com::Vmware::Content::Library::Item::DownloadSessionModel::State.ACTIVE` 
#     state.
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized
# if you do not have all of the privileges described as follows: <ul>
#  <li>  *Method*  execution requires  ``System.Anonymous`` . </li>
# </ul>
#

sub keep_alive {
   my ($self, %args) = @_;
   my $download_session_id = $args {download_session_id};
   my $progress = $args {progress};

   $self->validate_args (method_name => 'keep_alive',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'keep_alive',
                         method_args => \%args);
}


## @method cancel ()
# Cancels the download session. This  *method*  will abort any ongoing transfers and
# invalidate transfer urls that the client may be downloading from.
#
# Note:
# Privileges required for this operation are System.Anonymous.
#
# @param download_session_id [REQUIRED]  Identifer of the download session that should be canceled.
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.content.library.item.DownloadSession).
# . The value must be str.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
#  if no download session with the given identifier exists.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState 
# if the download session is not in the 
#     :attr:`Com::Vmware::Content::Library::Item::DownloadSessionModel::State.ACTIVE` 
#     state.
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized
# if you do not have all of the privileges described as follows: <ul>
#  <li>  *Method*  execution requires  ``System.Anonymous`` . </li>
# </ul>
#

sub cancel {
   my ($self, %args) = @_;
   my $download_session_id = $args {download_session_id};

   $self->validate_args (method_name => 'cancel',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'cancel',
                         method_args => \%args);
}


## @method delete ()
# Deletes a download session. This removes the session and all information associated with
# it. <p>
# 
# Removing a download session leaves any current transfers for that session in an
# indeterminate state (there is no guarantee that the transfers will be able to complete).
# However there will no longer be a means of inspecting the status of those downloads except
# by seeing the effect on the library item. </p>
# 
# <p>
# 
# Download sessions for which there is no download activity or which are complete will
# automatically be expired and then deleted after a period of time.</p>
#
# Note:
# Privileges required for this operation are System.Anonymous.
#
# @param download_session_id [REQUIRED]  Identifier of the download session to be deleted.
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.content.library.item.DownloadSession).
# . The value must be str.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
#  if the download session does not exist.
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized
# if you do not have all of the privileges described as follows: <ul>
#  <li>  *Method*  execution requires  ``System.Anonymous`` . </li>
# </ul>
#

sub delete {
   my ($self, %args) = @_;
   my $download_session_id = $args {download_session_id};

   $self->validate_args (method_name => 'delete',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'delete',
                         method_args => \%args);
}


## @method fail ()
# Terminates the download session with a client specified error message. <p>
# 
# This is useful in transmitting client side failures (for example, not being able to
# download a file) to the server side.</p>
#
# Note:
# Privileges required for this operation are System.Anonymous.
#
# @param download_session_id [REQUIRED]  Identifier of the download session to fail.
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.content.library.item.DownloadSession).
# . The value must be str.
#
# @param client_error_message [REQUIRED] Client side error message. This can be useful in providing some extra details about
#     the client side failure. Note that the message won&apos;t be translated to the
#     user&apos;s locale.
# . The value must be String.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
#  if the download session does not exist.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState 
# if the download session is not in the 
#     :attr:`Com::Vmware::Content::Library::Item::DownloadSessionModel::State.ACTIVE` 
#     state.
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized
# if you do not have all of the privileges described as follows: <ul>
#  <li>  *Method*  execution requires  ``System.Anonymous`` . </li>
# </ul>
#

sub fail {
   my ($self, %args) = @_;
   my $download_session_id = $args {download_session_id};
   my $client_error_message = $args {client_error_message};

   $self->validate_args (method_name => 'fail',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'fail',
                         method_args => \%args);
}


1;

#########################################################################################
# Begins enumerations for the Com::Vmware::Content::Library::Item::DownloadSession service
#########################################################################################



#########################################################################################
# Ends enumerations for the Com::Vmware::Content::Library::Item::DownloadSession service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Content::Library::Item::DownloadSession service
#########################################################################################


#########################################################################################
# Ends structures for the Com::Vmware::Content::Library::Item::DownloadSession service
#########################################################################################