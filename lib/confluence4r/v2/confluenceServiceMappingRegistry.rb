require 'confluenceService.rb'
require 'soap/mapping'

module Confluence4R; module V2

module DefaultMappingRegistry
  EncodedRegistry = ::SOAP::Mapping::EncodedRegistry.new
  LiteralRegistry = ::SOAP::Mapping::LiteralRegistry.new
  NsBeansSoapRpcConfluenceAtlassianCom = "http://beans.soap.rpc.confluence.atlassian.com"
  NsRpcConfluenceAtlassianCom = "http://rpc.confluence.atlassian.com"
  NsXmlSoap = "http://xml.apache.org/xml-soap"

  EncodedRegistry.register(
    :class => Confluence4R::V2::RemotePageSummary,
    :schema_type => XSD::QName.new(NsBeansSoapRpcConfluenceAtlassianCom, "RemotePageSummary"),
    :schema_basetype => XSD::QName.new(NsBeansSoapRpcConfluenceAtlassianCom, "AbstractRemotePageSummary"),
    :schema_element => [
      ["id", ["SOAP::SOAPLong", XSD::QName.new(nil, "id")]],
      ["permissions", ["SOAP::SOAPInt", XSD::QName.new(nil, "permissions")]],
      ["space", ["SOAP::SOAPString", XSD::QName.new(nil, "space")]],
      ["title", ["SOAP::SOAPString", XSD::QName.new(nil, "title")]],
      ["url", ["SOAP::SOAPString", XSD::QName.new(nil, "url")]],
      ["parentId", ["SOAP::SOAPLong", XSD::QName.new(nil, "parentId")]],
      ["version", ["SOAP::SOAPInt", XSD::QName.new(nil, "version")]]
    ]
  )

  EncodedRegistry.register(
    :class => Confluence4R::V2::RemotePage,
    :schema_type => XSD::QName.new(NsBeansSoapRpcConfluenceAtlassianCom, "RemotePage"),
    :schema_basetype => XSD::QName.new(NsBeansSoapRpcConfluenceAtlassianCom, "RemotePageSummary"),
    :schema_element => [
      ["id", ["SOAP::SOAPLong", XSD::QName.new(nil, "id")]],
      ["permissions", ["SOAP::SOAPInt", XSD::QName.new(nil, "permissions")]],
      ["space", ["SOAP::SOAPString", XSD::QName.new(nil, "space")]],
      ["title", ["SOAP::SOAPString", XSD::QName.new(nil, "title")]],
      ["url", ["SOAP::SOAPString", XSD::QName.new(nil, "url")]],
      ["parentId", ["SOAP::SOAPLong", XSD::QName.new(nil, "parentId")]],
      ["version", ["SOAP::SOAPInt", XSD::QName.new(nil, "version")]],
      ["content", ["SOAP::SOAPString", XSD::QName.new(nil, "content")]],
      ["contentStatus", ["SOAP::SOAPString", XSD::QName.new(nil, "contentStatus")]],
      ["created", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "created")]],
      ["creator", ["SOAP::SOAPString", XSD::QName.new(nil, "creator")]],
      ["current", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "current")]],
      ["homePage", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "homePage")]],
      ["modified", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "modified")]],
      ["modifier", ["SOAP::SOAPString", XSD::QName.new(nil, "modifier")]]
    ]
  )

  EncodedRegistry.register(
    :class => Confluence4R::V2::RemotePageUpdateOptions,
    :schema_type => XSD::QName.new(NsBeansSoapRpcConfluenceAtlassianCom, "RemotePageUpdateOptions"),
    :schema_element => [
      ["minorEdit", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "minorEdit")]],
      ["versionComment", ["SOAP::SOAPString", XSD::QName.new(nil, "versionComment")]]
    ]
  )

  EncodedRegistry.register(
    :class => Confluence4R::V2::RemoteSearchResult,
    :schema_type => XSD::QName.new(NsBeansSoapRpcConfluenceAtlassianCom, "RemoteSearchResult"),
    :schema_element => [
      ["excerpt", ["SOAP::SOAPString", XSD::QName.new(nil, "excerpt")]],
      ["id", ["SOAP::SOAPLong", XSD::QName.new(nil, "id")]],
      ["title", ["SOAP::SOAPString", XSD::QName.new(nil, "title")]],
      ["type", ["SOAP::SOAPString", XSD::QName.new(nil, "type")]],
      ["url", ["SOAP::SOAPString", XSD::QName.new(nil, "url")]]
    ]
  )

  EncodedRegistry.register(
    :class => Confluence4R::V2::RemoteSpaceSummary,
    :schema_type => XSD::QName.new(NsBeansSoapRpcConfluenceAtlassianCom, "RemoteSpaceSummary"),
    :schema_element => [
      ["key", ["SOAP::SOAPString", XSD::QName.new(nil, "key")]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")]],
      ["type", ["SOAP::SOAPString", XSD::QName.new(nil, "type")]],
      ["url", ["SOAP::SOAPString", XSD::QName.new(nil, "url")]]
    ]
  )

  EncodedRegistry.register(
    :class => Confluence4R::V2::RemoteSpace,
    :schema_type => XSD::QName.new(NsBeansSoapRpcConfluenceAtlassianCom, "RemoteSpace"),
    :schema_basetype => XSD::QName.new(NsBeansSoapRpcConfluenceAtlassianCom, "RemoteSpaceSummary"),
    :schema_element => [
      ["key", ["SOAP::SOAPString", XSD::QName.new(nil, "key")]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")]],
      ["type", ["SOAP::SOAPString", XSD::QName.new(nil, "type")]],
      ["url", ["SOAP::SOAPString", XSD::QName.new(nil, "url")]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(nil, "description")]],
      ["homePage", ["SOAP::SOAPLong", XSD::QName.new(nil, "homePage")]],
      ["spaceGroup", ["SOAP::SOAPString", XSD::QName.new(nil, "spaceGroup")]]
    ]
  )

  EncodedRegistry.register(
    :class => Confluence4R::V2::RemoteComment,
    :schema_type => XSD::QName.new(NsBeansSoapRpcConfluenceAtlassianCom, "RemoteComment"),
    :schema_element => [
      ["content", ["SOAP::SOAPString", XSD::QName.new(nil, "content")]],
      ["created", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "created")]],
      ["creator", ["SOAP::SOAPString", XSD::QName.new(nil, "creator")]],
      ["id", ["SOAP::SOAPLong", XSD::QName.new(nil, "id")]],
      ["modified", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "modified")]],
      ["modifier", ["SOAP::SOAPString", XSD::QName.new(nil, "modifier")]],
      ["pageId", ["SOAP::SOAPLong", XSD::QName.new(nil, "pageId")]],
      ["parentId", ["SOAP::SOAPLong", XSD::QName.new(nil, "parentId")]],
      ["title", ["SOAP::SOAPString", XSD::QName.new(nil, "title")]],
      ["url", ["SOAP::SOAPString", XSD::QName.new(nil, "url")]]
    ]
  )

  EncodedRegistry.register(
    :class => Confluence4R::V2::RemoteServerInfo,
    :schema_type => XSD::QName.new(NsBeansSoapRpcConfluenceAtlassianCom, "RemoteServerInfo"),
    :schema_element => [
      ["baseUrl", ["SOAP::SOAPString", XSD::QName.new(nil, "baseUrl")]],
      ["buildId", ["SOAP::SOAPString", XSD::QName.new(nil, "buildId")]],
      ["developmentBuild", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "developmentBuild")]],
      ["majorVersion", ["SOAP::SOAPInt", XSD::QName.new(nil, "majorVersion")]],
      ["minorVersion", ["SOAP::SOAPInt", XSD::QName.new(nil, "minorVersion")]],
      ["patchLevel", ["SOAP::SOAPInt", XSD::QName.new(nil, "patchLevel")]]
    ]
  )

  EncodedRegistry.register(
    :class => Confluence4R::V2::RemoteUser,
    :schema_type => XSD::QName.new(NsBeansSoapRpcConfluenceAtlassianCom, "RemoteUser"),
    :schema_element => [
      ["email", ["SOAP::SOAPString", XSD::QName.new(nil, "email")]],
      ["fullname", ["SOAP::SOAPString", XSD::QName.new(nil, "fullname")]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")]],
      ["url", ["SOAP::SOAPString", XSD::QName.new(nil, "url")]]
    ]
  )

  EncodedRegistry.register(
    :class => Confluence4R::V2::RemoteLabel,
    :schema_type => XSD::QName.new(NsBeansSoapRpcConfluenceAtlassianCom, "RemoteLabel"),
    :schema_element => [
      ["id", ["SOAP::SOAPLong", XSD::QName.new(nil, "id")]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")]],
      ["namespace", ["SOAP::SOAPString", XSD::QName.new(nil, "namespace")]],
      ["owner", ["SOAP::SOAPString", XSD::QName.new(nil, "owner")]]
    ]
  )

  EncodedRegistry.register(
    :class => Confluence4R::V2::RemoteSpaceGroup,
    :schema_type => XSD::QName.new(NsBeansSoapRpcConfluenceAtlassianCom, "RemoteSpaceGroup"),
    :schema_element => [
      ["creatorName", ["SOAP::SOAPString", XSD::QName.new(nil, "creatorName")]],
      ["key", ["SOAP::SOAPString", XSD::QName.new(nil, "key")]],
      ["licenseKey", ["SOAP::SOAPString", XSD::QName.new(nil, "licenseKey")]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")]]
    ]
  )

  EncodedRegistry.register(
    :class => Confluence4R::V2::RemoteAttachment,
    :schema_type => XSD::QName.new(NsBeansSoapRpcConfluenceAtlassianCom, "RemoteAttachment"),
    :schema_element => [
      ["comment", ["SOAP::SOAPString", XSD::QName.new(nil, "comment")]],
      ["contentType", ["SOAP::SOAPString", XSD::QName.new(nil, "contentType")]],
      ["created", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "created")]],
      ["creator", ["SOAP::SOAPString", XSD::QName.new(nil, "creator")]],
      ["fileName", ["SOAP::SOAPString", XSD::QName.new(nil, "fileName")]],
      ["fileSize", ["SOAP::SOAPLong", XSD::QName.new(nil, "fileSize")]],
      ["id", ["SOAP::SOAPLong", XSD::QName.new(nil, "id")]],
      ["pageId", ["SOAP::SOAPLong", XSD::QName.new(nil, "pageId")]],
      ["title", ["SOAP::SOAPString", XSD::QName.new(nil, "title")]],
      ["url", ["SOAP::SOAPString", XSD::QName.new(nil, "url")]]
    ]
  )

  EncodedRegistry.register(
    :class => Confluence4R::V2::RemoteContentPermission,
    :schema_type => XSD::QName.new(NsBeansSoapRpcConfluenceAtlassianCom, "RemoteContentPermission"),
    :schema_element => [
      ["groupName", ["SOAP::SOAPString", XSD::QName.new(nil, "groupName")]],
      ["type", ["SOAP::SOAPString", XSD::QName.new(nil, "type")]],
      ["userName", ["SOAP::SOAPString", XSD::QName.new(nil, "userName")]]
    ]
  )

  EncodedRegistry.register(
    :class => Confluence4R::V2::RemoteContentPermissionSet,
    :schema_type => XSD::QName.new(NsBeansSoapRpcConfluenceAtlassianCom, "RemoteContentPermissionSet"),
    :schema_element => [
      ["contentPermissions", ["Confluence4R::V2::ArrayOf_tns1_RemoteContentPermission", XSD::QName.new(nil, "contentPermissions")]],
      ["type", ["SOAP::SOAPString", XSD::QName.new(nil, "type")]]
    ]
  )

  EncodedRegistry.register(
    :class => Confluence4R::V2::RemoteContentSummary,
    :schema_type => XSD::QName.new(NsBeansSoapRpcConfluenceAtlassianCom, "RemoteContentSummary"),
    :schema_element => [
      ["created", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "created")]],
      ["creator", ["SOAP::SOAPString", XSD::QName.new(nil, "creator")]],
      ["id", ["SOAP::SOAPLong", XSD::QName.new(nil, "id")]],
      ["modified", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "modified")]],
      ["modifier", ["SOAP::SOAPString", XSD::QName.new(nil, "modifier")]],
      ["space", ["SOAP::SOAPString", XSD::QName.new(nil, "space")]],
      ["status", ["SOAP::SOAPString", XSD::QName.new(nil, "status")]],
      ["title", ["SOAP::SOAPString", XSD::QName.new(nil, "title")]],
      ["type", ["SOAP::SOAPString", XSD::QName.new(nil, "type")]]
    ]
  )

  EncodedRegistry.register(
    :class => Confluence4R::V2::RemoteContentSummaries,
    :schema_type => XSD::QName.new(NsBeansSoapRpcConfluenceAtlassianCom, "RemoteContentSummaries"),
    :schema_element => [
      ["content", ["Confluence4R::V2::ArrayOf_tns1_RemoteContentSummary", XSD::QName.new(nil, "content")]],
      ["offset", ["SOAP::SOAPInt", XSD::QName.new(nil, "offset")]],
      ["totalAvailable", ["SOAP::SOAPInt", XSD::QName.new(nil, "totalAvailable")]]
    ]
  )

  EncodedRegistry.register(
    :class => Confluence4R::V2::RemoteConfluenceUser,
    :schema_type => XSD::QName.new(NsBeansSoapRpcConfluenceAtlassianCom, "RemoteConfluenceUser"),
    :schema_element => [
      ["email", ["SOAP::SOAPString", XSD::QName.new(nil, "email")]],
      ["fullname", ["SOAP::SOAPString", XSD::QName.new(nil, "fullname")]],
      ["key", ["SOAP::SOAPString", XSD::QName.new(nil, "key")]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")]],
      ["url", ["SOAP::SOAPString", XSD::QName.new(nil, "url")]]
    ]
  )

  EncodedRegistry.register(
    :class => Confluence4R::V2::RemoteClusterInformation,
    :schema_type => XSD::QName.new(NsBeansSoapRpcConfluenceAtlassianCom, "RemoteClusterInformation"),
    :schema_element => [
      ["description", ["SOAP::SOAPString", XSD::QName.new(nil, "description")]],
      ["memberCount", ["SOAP::SOAPInt", XSD::QName.new(nil, "memberCount")]],
      ["members", ["Confluence4R::V2::ArrayOf_xsd_anyType", XSD::QName.new(nil, "members")]],
      ["multicastAddress", ["SOAP::SOAPString", XSD::QName.new(nil, "multicastAddress")]],
      ["multicastPort", ["SOAP::SOAPString", XSD::QName.new(nil, "multicastPort")]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")]],
      ["running", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "running")]]
    ]
  )

  EncodedRegistry.register(
    :class => Confluence4R::V2::RemotePermission,
    :schema_type => XSD::QName.new(NsBeansSoapRpcConfluenceAtlassianCom, "RemotePermission"),
    :schema_element => [
      ["lockType", ["SOAP::SOAPString", XSD::QName.new(nil, "lockType")]],
      ["lockedBy", ["SOAP::SOAPString", XSD::QName.new(nil, "lockedBy")]]
    ]
  )

  EncodedRegistry.register(
    :class => Confluence4R::V2::RemotePageHistory,
    :schema_type => XSD::QName.new(NsBeansSoapRpcConfluenceAtlassianCom, "RemotePageHistory"),
    :schema_element => [
      ["id", ["SOAP::SOAPLong", XSD::QName.new(nil, "id")]],
      ["modified", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "modified")]],
      ["modifier", ["SOAP::SOAPString", XSD::QName.new(nil, "modifier")]],
      ["version", ["SOAP::SOAPInt", XSD::QName.new(nil, "version")]]
    ]
  )

  EncodedRegistry.register(
    :class => Confluence4R::V2::RemoteNodeStatus,
    :schema_type => XSD::QName.new(NsBeansSoapRpcConfluenceAtlassianCom, "RemoteNodeStatus"),
    :schema_element => [
      ["jVMstats", ["Confluence4R::V2::Map", XSD::QName.new(nil, "JVMstats")]],
      ["buildStats", ["Confluence4R::V2::Map", XSD::QName.new(nil, "buildStats")]],
      ["nodeId", ["SOAP::SOAPInt", XSD::QName.new(nil, "nodeId")]],
      ["props", ["Confluence4R::V2::Map", XSD::QName.new(nil, "props")]]
    ]
  )

  EncodedRegistry.register(
    :class => Confluence4R::V2::RemoteBlogEntrySummary,
    :schema_type => XSD::QName.new(NsBeansSoapRpcConfluenceAtlassianCom, "RemoteBlogEntrySummary"),
    :schema_basetype => XSD::QName.new(NsBeansSoapRpcConfluenceAtlassianCom, "AbstractRemotePageSummary"),
    :schema_element => [
      ["id", ["SOAP::SOAPLong", XSD::QName.new(nil, "id")]],
      ["permissions", ["SOAP::SOAPInt", XSD::QName.new(nil, "permissions")]],
      ["space", ["SOAP::SOAPString", XSD::QName.new(nil, "space")]],
      ["title", ["SOAP::SOAPString", XSD::QName.new(nil, "title")]],
      ["url", ["SOAP::SOAPString", XSD::QName.new(nil, "url")]],
      ["author", ["SOAP::SOAPString", XSD::QName.new(nil, "author")]],
      ["publishDate", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "publishDate")]]
    ]
  )

  EncodedRegistry.register(
    :class => Confluence4R::V2::RemoteBlogEntry,
    :schema_type => XSD::QName.new(NsBeansSoapRpcConfluenceAtlassianCom, "RemoteBlogEntry"),
    :schema_basetype => XSD::QName.new(NsBeansSoapRpcConfluenceAtlassianCom, "RemoteBlogEntrySummary"),
    :schema_element => [
      ["id", ["SOAP::SOAPLong", XSD::QName.new(nil, "id")]],
      ["permissions", ["SOAP::SOAPInt", XSD::QName.new(nil, "permissions")]],
      ["space", ["SOAP::SOAPString", XSD::QName.new(nil, "space")]],
      ["title", ["SOAP::SOAPString", XSD::QName.new(nil, "title")]],
      ["url", ["SOAP::SOAPString", XSD::QName.new(nil, "url")]],
      ["author", ["SOAP::SOAPString", XSD::QName.new(nil, "author")]],
      ["publishDate", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "publishDate")]],
      ["content", ["SOAP::SOAPString", XSD::QName.new(nil, "content")]],
      ["version", ["SOAP::SOAPInt", XSD::QName.new(nil, "version")]]
    ]
  )

  EncodedRegistry.register(
    :class => Confluence4R::V2::RemoteSpacePermissionSet,
    :schema_type => XSD::QName.new(NsBeansSoapRpcConfluenceAtlassianCom, "RemoteSpacePermissionSet"),
    :schema_element => [
      ["spacePermissions", ["Confluence4R::V2::ArrayOf_tns1_RemoteContentPermission", XSD::QName.new(nil, "spacePermissions")]],
      ["type", ["SOAP::SOAPString", XSD::QName.new(nil, "type")]]
    ]
  )

  EncodedRegistry.register(
    :class => Confluence4R::V2::RemoteUserInformation,
    :schema_type => XSD::QName.new(NsBeansSoapRpcConfluenceAtlassianCom, "RemoteUserInformation"),
    :schema_element => [
      ["content", ["SOAP::SOAPString", XSD::QName.new(nil, "content")]],
      ["creationDate", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "creationDate")]],
      ["creatorName", ["SOAP::SOAPString", XSD::QName.new(nil, "creatorName")]],
      ["id", ["SOAP::SOAPLong", XSD::QName.new(nil, "id")]],
      ["lastModificationDate", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "lastModificationDate")]],
      ["lastModifierName", ["SOAP::SOAPString", XSD::QName.new(nil, "lastModifierName")]],
      ["username", ["SOAP::SOAPString", XSD::QName.new(nil, "username")]],
      ["version", ["SOAP::SOAPInt", XSD::QName.new(nil, "version")]]
    ]
  )

  EncodedRegistry.register(
    :class => Confluence4R::V2::RemoteException,
    :schema_type => XSD::QName.new(NsRpcConfluenceAtlassianCom, "RemoteException"),
    :schema_element => []
  )

  EncodedRegistry.register(
    :class => Confluence4R::V2::InvalidSessionException,
    :schema_type => XSD::QName.new(NsRpcConfluenceAtlassianCom, "InvalidSessionException"),
    :schema_basetype => XSD::QName.new(NsRpcConfluenceAtlassianCom, "RemoteException"),
    :schema_element => []
  )

  EncodedRegistry.register(
    :class => Confluence4R::V2::VersionMismatchException,
    :schema_type => XSD::QName.new(NsRpcConfluenceAtlassianCom, "VersionMismatchException"),
    :schema_basetype => XSD::QName.new(NsRpcConfluenceAtlassianCom, "RemoteException"),
    :schema_element => []
  )

  EncodedRegistry.register(
    :class => Confluence4R::V2::AuthenticationFailedException,
    :schema_type => XSD::QName.new(NsRpcConfluenceAtlassianCom, "AuthenticationFailedException"),
    :schema_basetype => XSD::QName.new(NsRpcConfluenceAtlassianCom, "RemoteException"),
    :schema_element => []
  )

  EncodedRegistry.register(
    :class => Confluence4R::V2::AlreadyExistsException,
    :schema_type => XSD::QName.new(NsRpcConfluenceAtlassianCom, "AlreadyExistsException"),
    :schema_basetype => XSD::QName.new(NsRpcConfluenceAtlassianCom, "RemoteException"),
    :schema_element => []
  )

  EncodedRegistry.register(
    :class => Confluence4R::V2::NotPermittedException,
    :schema_type => XSD::QName.new(NsRpcConfluenceAtlassianCom, "NotPermittedException"),
    :schema_basetype => XSD::QName.new(NsRpcConfluenceAtlassianCom, "RemoteException"),
    :schema_element => []
  )

  EncodedRegistry.set(
    Confluence4R::V2::ArrayOf_tns1_RemotePageSummary,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsBeansSoapRpcConfluenceAtlassianCom, "RemotePageSummary") }
  )

  EncodedRegistry.set(
    Confluence4R::V2::ArrayOf_xsd_string,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new("http://www.w3.org/2001/XMLSchema", "string") }
  )

  EncodedRegistry.set(
    Confluence4R::V2::ArrayOf_tns1_RemoteSearchResult,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsBeansSoapRpcConfluenceAtlassianCom, "RemoteSearchResult") }
  )

  EncodedRegistry.set(
    Confluence4R::V2::ArrayOf_tns1_RemoteLabel,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsBeansSoapRpcConfluenceAtlassianCom, "RemoteLabel") }
  )

  EncodedRegistry.set(
    Confluence4R::V2::ArrayOf_tns1_RemoteContentPermission,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsBeansSoapRpcConfluenceAtlassianCom, "RemoteContentPermission") }
  )

  EncodedRegistry.set(
    Confluence4R::V2::ArrayOf_tns1_RemoteContentPermissionSet,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsBeansSoapRpcConfluenceAtlassianCom, "RemoteContentPermissionSet") }
  )

  EncodedRegistry.set(
    Confluence4R::V2::ArrayOf_tns1_RemoteComment,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsBeansSoapRpcConfluenceAtlassianCom, "RemoteComment") }
  )

  EncodedRegistry.set(
    Confluence4R::V2::ArrayOf_tns1_RemoteContentSummary,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsBeansSoapRpcConfluenceAtlassianCom, "RemoteContentSummary") }
  )

  EncodedRegistry.set(
    Confluence4R::V2::ArrayOf_tns1_RemoteSpaceSummary,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsBeansSoapRpcConfluenceAtlassianCom, "RemoteSpaceSummary") }
  )

  EncodedRegistry.set(
    Confluence4R::V2::ArrayOf_tns1_RemoteAttachment,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsBeansSoapRpcConfluenceAtlassianCom, "RemoteAttachment") }
  )

  EncodedRegistry.set(
    Confluence4R::V2::ArrayOf_xsd_anyType,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new("http://www.w3.org/2001/XMLSchema", "anyType") }
  )

  EncodedRegistry.set(
    Confluence4R::V2::ArrayOf_tns1_RemoteSpace,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsBeansSoapRpcConfluenceAtlassianCom, "RemoteSpace") }
  )

  EncodedRegistry.set(
    Confluence4R::V2::ArrayOf_tns1_RemoteSpaceGroup,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsBeansSoapRpcConfluenceAtlassianCom, "RemoteSpaceGroup") }
  )

  EncodedRegistry.set(
    Confluence4R::V2::ArrayOf_tns1_RemotePermission,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsBeansSoapRpcConfluenceAtlassianCom, "RemotePermission") }
  )

  EncodedRegistry.set(
    Confluence4R::V2::ArrayOf_tns1_RemotePageHistory,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsBeansSoapRpcConfluenceAtlassianCom, "RemotePageHistory") }
  )

  EncodedRegistry.set(
    Confluence4R::V2::ArrayOf_tns1_RemoteNodeStatus,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsBeansSoapRpcConfluenceAtlassianCom, "RemoteNodeStatus") }
  )

  EncodedRegistry.set(
    Confluence4R::V2::ArrayOf_tns1_RemoteUser,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsBeansSoapRpcConfluenceAtlassianCom, "RemoteUser") }
  )

  EncodedRegistry.set(
    Confluence4R::V2::ArrayOf_tns1_RemoteBlogEntrySummary,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsBeansSoapRpcConfluenceAtlassianCom, "RemoteBlogEntrySummary") }
  )

  EncodedRegistry.set(
    Confluence4R::V2::ArrayOf_tns1_RemoteSpacePermissionSet,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsBeansSoapRpcConfluenceAtlassianCom, "RemoteSpacePermissionSet") }
  )

  EncodedRegistry.register(
    :class => Confluence4R::V2::MapItem,
    :schema_type => XSD::QName.new(NsXmlSoap, "mapItem"),
    :schema_element => [
      ["key", [nil, XSD::QName.new(nil, "key")]],
      ["value", [nil, XSD::QName.new(nil, "value")]]
    ]
  )

  EncodedRegistry.register(
    :class => Confluence4R::V2::Vector,
    :schema_type => XSD::QName.new(NsXmlSoap, "Vector"),
    :schema_element => [
      ["item", ["[]", XSD::QName.new(nil, "item")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => Confluence4R::V2::RemotePageSummary,
    :schema_type => XSD::QName.new(NsBeansSoapRpcConfluenceAtlassianCom, "RemotePageSummary"),
    :schema_basetype => XSD::QName.new(NsBeansSoapRpcConfluenceAtlassianCom, "AbstractRemotePageSummary"),
    :schema_element => [
      ["id", ["SOAP::SOAPLong", XSD::QName.new(nil, "id")]],
      ["permissions", ["SOAP::SOAPInt", XSD::QName.new(nil, "permissions")]],
      ["space", ["SOAP::SOAPString", XSD::QName.new(nil, "space")]],
      ["title", ["SOAP::SOAPString", XSD::QName.new(nil, "title")]],
      ["url", ["SOAP::SOAPString", XSD::QName.new(nil, "url")]],
      ["parentId", ["SOAP::SOAPLong", XSD::QName.new(nil, "parentId")]],
      ["version", ["SOAP::SOAPInt", XSD::QName.new(nil, "version")]]
    ]
  )

  LiteralRegistry.register(
    :class => Confluence4R::V2::RemotePage,
    :schema_type => XSD::QName.new(NsBeansSoapRpcConfluenceAtlassianCom, "RemotePage"),
    :schema_basetype => XSD::QName.new(NsBeansSoapRpcConfluenceAtlassianCom, "RemotePageSummary"),
    :schema_element => [
      ["id", ["SOAP::SOAPLong", XSD::QName.new(nil, "id")]],
      ["permissions", ["SOAP::SOAPInt", XSD::QName.new(nil, "permissions")]],
      ["space", ["SOAP::SOAPString", XSD::QName.new(nil, "space")]],
      ["title", ["SOAP::SOAPString", XSD::QName.new(nil, "title")]],
      ["url", ["SOAP::SOAPString", XSD::QName.new(nil, "url")]],
      ["parentId", ["SOAP::SOAPLong", XSD::QName.new(nil, "parentId")]],
      ["version", ["SOAP::SOAPInt", XSD::QName.new(nil, "version")]],
      ["content", ["SOAP::SOAPString", XSD::QName.new(nil, "content")]],
      ["contentStatus", ["SOAP::SOAPString", XSD::QName.new(nil, "contentStatus")]],
      ["created", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "created")]],
      ["creator", ["SOAP::SOAPString", XSD::QName.new(nil, "creator")]],
      ["current", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "current")]],
      ["homePage", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "homePage")]],
      ["modified", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "modified")]],
      ["modifier", ["SOAP::SOAPString", XSD::QName.new(nil, "modifier")]]
    ]
  )

  LiteralRegistry.register(
    :class => Confluence4R::V2::RemotePageUpdateOptions,
    :schema_type => XSD::QName.new(NsBeansSoapRpcConfluenceAtlassianCom, "RemotePageUpdateOptions"),
    :schema_element => [
      ["minorEdit", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "minorEdit")]],
      ["versionComment", ["SOAP::SOAPString", XSD::QName.new(nil, "versionComment")]]
    ]
  )

  LiteralRegistry.register(
    :class => Confluence4R::V2::RemoteSearchResult,
    :schema_type => XSD::QName.new(NsBeansSoapRpcConfluenceAtlassianCom, "RemoteSearchResult"),
    :schema_element => [
      ["excerpt", ["SOAP::SOAPString", XSD::QName.new(nil, "excerpt")]],
      ["id", ["SOAP::SOAPLong", XSD::QName.new(nil, "id")]],
      ["title", ["SOAP::SOAPString", XSD::QName.new(nil, "title")]],
      ["type", ["SOAP::SOAPString", XSD::QName.new(nil, "type")]],
      ["url", ["SOAP::SOAPString", XSD::QName.new(nil, "url")]]
    ]
  )

  LiteralRegistry.register(
    :class => Confluence4R::V2::RemoteSpaceSummary,
    :schema_type => XSD::QName.new(NsBeansSoapRpcConfluenceAtlassianCom, "RemoteSpaceSummary"),
    :schema_element => [
      ["key", ["SOAP::SOAPString", XSD::QName.new(nil, "key")]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")]],
      ["type", ["SOAP::SOAPString", XSD::QName.new(nil, "type")]],
      ["url", ["SOAP::SOAPString", XSD::QName.new(nil, "url")]]
    ]
  )

  LiteralRegistry.register(
    :class => Confluence4R::V2::RemoteSpace,
    :schema_type => XSD::QName.new(NsBeansSoapRpcConfluenceAtlassianCom, "RemoteSpace"),
    :schema_basetype => XSD::QName.new(NsBeansSoapRpcConfluenceAtlassianCom, "RemoteSpaceSummary"),
    :schema_element => [
      ["key", ["SOAP::SOAPString", XSD::QName.new(nil, "key")]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")]],
      ["type", ["SOAP::SOAPString", XSD::QName.new(nil, "type")]],
      ["url", ["SOAP::SOAPString", XSD::QName.new(nil, "url")]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(nil, "description")]],
      ["homePage", ["SOAP::SOAPLong", XSD::QName.new(nil, "homePage")]],
      ["spaceGroup", ["SOAP::SOAPString", XSD::QName.new(nil, "spaceGroup")]]
    ]
  )

  LiteralRegistry.register(
    :class => Confluence4R::V2::RemoteComment,
    :schema_type => XSD::QName.new(NsBeansSoapRpcConfluenceAtlassianCom, "RemoteComment"),
    :schema_element => [
      ["content", ["SOAP::SOAPString", XSD::QName.new(nil, "content")]],
      ["created", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "created")]],
      ["creator", ["SOAP::SOAPString", XSD::QName.new(nil, "creator")]],
      ["id", ["SOAP::SOAPLong", XSD::QName.new(nil, "id")]],
      ["modified", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "modified")]],
      ["modifier", ["SOAP::SOAPString", XSD::QName.new(nil, "modifier")]],
      ["pageId", ["SOAP::SOAPLong", XSD::QName.new(nil, "pageId")]],
      ["parentId", ["SOAP::SOAPLong", XSD::QName.new(nil, "parentId")]],
      ["title", ["SOAP::SOAPString", XSD::QName.new(nil, "title")]],
      ["url", ["SOAP::SOAPString", XSD::QName.new(nil, "url")]]
    ]
  )

  LiteralRegistry.register(
    :class => Confluence4R::V2::RemoteServerInfo,
    :schema_type => XSD::QName.new(NsBeansSoapRpcConfluenceAtlassianCom, "RemoteServerInfo"),
    :schema_element => [
      ["baseUrl", ["SOAP::SOAPString", XSD::QName.new(nil, "baseUrl")]],
      ["buildId", ["SOAP::SOAPString", XSD::QName.new(nil, "buildId")]],
      ["developmentBuild", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "developmentBuild")]],
      ["majorVersion", ["SOAP::SOAPInt", XSD::QName.new(nil, "majorVersion")]],
      ["minorVersion", ["SOAP::SOAPInt", XSD::QName.new(nil, "minorVersion")]],
      ["patchLevel", ["SOAP::SOAPInt", XSD::QName.new(nil, "patchLevel")]]
    ]
  )

  LiteralRegistry.register(
    :class => Confluence4R::V2::RemoteUser,
    :schema_type => XSD::QName.new(NsBeansSoapRpcConfluenceAtlassianCom, "RemoteUser"),
    :schema_element => [
      ["email", ["SOAP::SOAPString", XSD::QName.new(nil, "email")]],
      ["fullname", ["SOAP::SOAPString", XSD::QName.new(nil, "fullname")]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")]],
      ["url", ["SOAP::SOAPString", XSD::QName.new(nil, "url")]]
    ]
  )

  LiteralRegistry.register(
    :class => Confluence4R::V2::RemoteLabel,
    :schema_type => XSD::QName.new(NsBeansSoapRpcConfluenceAtlassianCom, "RemoteLabel"),
    :schema_element => [
      ["id", ["SOAP::SOAPLong", XSD::QName.new(nil, "id")]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")]],
      ["namespace", ["SOAP::SOAPString", XSD::QName.new(nil, "namespace")]],
      ["owner", ["SOAP::SOAPString", XSD::QName.new(nil, "owner")]]
    ]
  )

  LiteralRegistry.register(
    :class => Confluence4R::V2::RemoteSpaceGroup,
    :schema_type => XSD::QName.new(NsBeansSoapRpcConfluenceAtlassianCom, "RemoteSpaceGroup"),
    :schema_element => [
      ["creatorName", ["SOAP::SOAPString", XSD::QName.new(nil, "creatorName")]],
      ["key", ["SOAP::SOAPString", XSD::QName.new(nil, "key")]],
      ["licenseKey", ["SOAP::SOAPString", XSD::QName.new(nil, "licenseKey")]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")]]
    ]
  )

  LiteralRegistry.register(
    :class => Confluence4R::V2::RemoteAttachment,
    :schema_type => XSD::QName.new(NsBeansSoapRpcConfluenceAtlassianCom, "RemoteAttachment"),
    :schema_element => [
      ["comment", ["SOAP::SOAPString", XSD::QName.new(nil, "comment")]],
      ["contentType", ["SOAP::SOAPString", XSD::QName.new(nil, "contentType")]],
      ["created", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "created")]],
      ["creator", ["SOAP::SOAPString", XSD::QName.new(nil, "creator")]],
      ["fileName", ["SOAP::SOAPString", XSD::QName.new(nil, "fileName")]],
      ["fileSize", ["SOAP::SOAPLong", XSD::QName.new(nil, "fileSize")]],
      ["id", ["SOAP::SOAPLong", XSD::QName.new(nil, "id")]],
      ["pageId", ["SOAP::SOAPLong", XSD::QName.new(nil, "pageId")]],
      ["title", ["SOAP::SOAPString", XSD::QName.new(nil, "title")]],
      ["url", ["SOAP::SOAPString", XSD::QName.new(nil, "url")]]
    ]
  )

  LiteralRegistry.register(
    :class => Confluence4R::V2::RemoteContentPermission,
    :schema_type => XSD::QName.new(NsBeansSoapRpcConfluenceAtlassianCom, "RemoteContentPermission"),
    :schema_element => [
      ["groupName", ["SOAP::SOAPString", XSD::QName.new(nil, "groupName")]],
      ["type", ["SOAP::SOAPString", XSD::QName.new(nil, "type")]],
      ["userName", ["SOAP::SOAPString", XSD::QName.new(nil, "userName")]]
    ]
  )

  LiteralRegistry.register(
    :class => Confluence4R::V2::RemoteContentPermissionSet,
    :schema_type => XSD::QName.new(NsBeansSoapRpcConfluenceAtlassianCom, "RemoteContentPermissionSet"),
    :schema_element => [
      ["contentPermissions", ["Confluence4R::V2::ArrayOf_tns1_RemoteContentPermission", XSD::QName.new(nil, "contentPermissions")]],
      ["type", ["SOAP::SOAPString", XSD::QName.new(nil, "type")]]
    ]
  )

  LiteralRegistry.register(
    :class => Confluence4R::V2::RemoteContentSummary,
    :schema_type => XSD::QName.new(NsBeansSoapRpcConfluenceAtlassianCom, "RemoteContentSummary"),
    :schema_element => [
      ["created", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "created")]],
      ["creator", ["SOAP::SOAPString", XSD::QName.new(nil, "creator")]],
      ["id", ["SOAP::SOAPLong", XSD::QName.new(nil, "id")]],
      ["modified", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "modified")]],
      ["modifier", ["SOAP::SOAPString", XSD::QName.new(nil, "modifier")]],
      ["space", ["SOAP::SOAPString", XSD::QName.new(nil, "space")]],
      ["status", ["SOAP::SOAPString", XSD::QName.new(nil, "status")]],
      ["title", ["SOAP::SOAPString", XSD::QName.new(nil, "title")]],
      ["type", ["SOAP::SOAPString", XSD::QName.new(nil, "type")]]
    ]
  )

  LiteralRegistry.register(
    :class => Confluence4R::V2::RemoteContentSummaries,
    :schema_type => XSD::QName.new(NsBeansSoapRpcConfluenceAtlassianCom, "RemoteContentSummaries"),
    :schema_element => [
      ["content", ["Confluence4R::V2::ArrayOf_tns1_RemoteContentSummary", XSD::QName.new(nil, "content")]],
      ["offset", ["SOAP::SOAPInt", XSD::QName.new(nil, "offset")]],
      ["totalAvailable", ["SOAP::SOAPInt", XSD::QName.new(nil, "totalAvailable")]]
    ]
  )

  LiteralRegistry.register(
    :class => Confluence4R::V2::RemoteConfluenceUser,
    :schema_type => XSD::QName.new(NsBeansSoapRpcConfluenceAtlassianCom, "RemoteConfluenceUser"),
    :schema_element => [
      ["email", ["SOAP::SOAPString", XSD::QName.new(nil, "email")]],
      ["fullname", ["SOAP::SOAPString", XSD::QName.new(nil, "fullname")]],
      ["key", ["SOAP::SOAPString", XSD::QName.new(nil, "key")]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")]],
      ["url", ["SOAP::SOAPString", XSD::QName.new(nil, "url")]]
    ]
  )

  LiteralRegistry.register(
    :class => Confluence4R::V2::RemoteClusterInformation,
    :schema_type => XSD::QName.new(NsBeansSoapRpcConfluenceAtlassianCom, "RemoteClusterInformation"),
    :schema_element => [
      ["description", ["SOAP::SOAPString", XSD::QName.new(nil, "description")]],
      ["memberCount", ["SOAP::SOAPInt", XSD::QName.new(nil, "memberCount")]],
      ["members", ["Confluence4R::V2::ArrayOf_xsd_anyType", XSD::QName.new(nil, "members")]],
      ["multicastAddress", ["SOAP::SOAPString", XSD::QName.new(nil, "multicastAddress")]],
      ["multicastPort", ["SOAP::SOAPString", XSD::QName.new(nil, "multicastPort")]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")]],
      ["running", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "running")]]
    ]
  )

  LiteralRegistry.register(
    :class => Confluence4R::V2::RemotePermission,
    :schema_type => XSD::QName.new(NsBeansSoapRpcConfluenceAtlassianCom, "RemotePermission"),
    :schema_element => [
      ["lockType", ["SOAP::SOAPString", XSD::QName.new(nil, "lockType")]],
      ["lockedBy", ["SOAP::SOAPString", XSD::QName.new(nil, "lockedBy")]]
    ]
  )

  LiteralRegistry.register(
    :class => Confluence4R::V2::RemotePageHistory,
    :schema_type => XSD::QName.new(NsBeansSoapRpcConfluenceAtlassianCom, "RemotePageHistory"),
    :schema_element => [
      ["id", ["SOAP::SOAPLong", XSD::QName.new(nil, "id")]],
      ["modified", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "modified")]],
      ["modifier", ["SOAP::SOAPString", XSD::QName.new(nil, "modifier")]],
      ["version", ["SOAP::SOAPInt", XSD::QName.new(nil, "version")]]
    ]
  )

  LiteralRegistry.register(
    :class => Confluence4R::V2::RemoteNodeStatus,
    :schema_type => XSD::QName.new(NsBeansSoapRpcConfluenceAtlassianCom, "RemoteNodeStatus"),
    :schema_element => [
      ["jVMstats", ["Confluence4R::V2::Map", XSD::QName.new(nil, "JVMstats")]],
      ["buildStats", ["Confluence4R::V2::Map", XSD::QName.new(nil, "buildStats")]],
      ["nodeId", ["SOAP::SOAPInt", XSD::QName.new(nil, "nodeId")]],
      ["props", ["Confluence4R::V2::Map", XSD::QName.new(nil, "props")]]
    ]
  )

  LiteralRegistry.register(
    :class => Confluence4R::V2::RemoteBlogEntrySummary,
    :schema_type => XSD::QName.new(NsBeansSoapRpcConfluenceAtlassianCom, "RemoteBlogEntrySummary"),
    :schema_basetype => XSD::QName.new(NsBeansSoapRpcConfluenceAtlassianCom, "AbstractRemotePageSummary"),
    :schema_element => [
      ["id", ["SOAP::SOAPLong", XSD::QName.new(nil, "id")]],
      ["permissions", ["SOAP::SOAPInt", XSD::QName.new(nil, "permissions")]],
      ["space", ["SOAP::SOAPString", XSD::QName.new(nil, "space")]],
      ["title", ["SOAP::SOAPString", XSD::QName.new(nil, "title")]],
      ["url", ["SOAP::SOAPString", XSD::QName.new(nil, "url")]],
      ["author", ["SOAP::SOAPString", XSD::QName.new(nil, "author")]],
      ["publishDate", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "publishDate")]]
    ]
  )

  LiteralRegistry.register(
    :class => Confluence4R::V2::RemoteBlogEntry,
    :schema_type => XSD::QName.new(NsBeansSoapRpcConfluenceAtlassianCom, "RemoteBlogEntry"),
    :schema_basetype => XSD::QName.new(NsBeansSoapRpcConfluenceAtlassianCom, "RemoteBlogEntrySummary"),
    :schema_element => [
      ["id", ["SOAP::SOAPLong", XSD::QName.new(nil, "id")]],
      ["permissions", ["SOAP::SOAPInt", XSD::QName.new(nil, "permissions")]],
      ["space", ["SOAP::SOAPString", XSD::QName.new(nil, "space")]],
      ["title", ["SOAP::SOAPString", XSD::QName.new(nil, "title")]],
      ["url", ["SOAP::SOAPString", XSD::QName.new(nil, "url")]],
      ["author", ["SOAP::SOAPString", XSD::QName.new(nil, "author")]],
      ["publishDate", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "publishDate")]],
      ["content", ["SOAP::SOAPString", XSD::QName.new(nil, "content")]],
      ["version", ["SOAP::SOAPInt", XSD::QName.new(nil, "version")]]
    ]
  )

  LiteralRegistry.register(
    :class => Confluence4R::V2::RemoteSpacePermissionSet,
    :schema_type => XSD::QName.new(NsBeansSoapRpcConfluenceAtlassianCom, "RemoteSpacePermissionSet"),
    :schema_element => [
      ["spacePermissions", ["Confluence4R::V2::ArrayOf_tns1_RemoteContentPermission", XSD::QName.new(nil, "spacePermissions")]],
      ["type", ["SOAP::SOAPString", XSD::QName.new(nil, "type")]]
    ]
  )

  LiteralRegistry.register(
    :class => Confluence4R::V2::RemoteUserInformation,
    :schema_type => XSD::QName.new(NsBeansSoapRpcConfluenceAtlassianCom, "RemoteUserInformation"),
    :schema_element => [
      ["content", ["SOAP::SOAPString", XSD::QName.new(nil, "content")]],
      ["creationDate", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "creationDate")]],
      ["creatorName", ["SOAP::SOAPString", XSD::QName.new(nil, "creatorName")]],
      ["id", ["SOAP::SOAPLong", XSD::QName.new(nil, "id")]],
      ["lastModificationDate", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "lastModificationDate")]],
      ["lastModifierName", ["SOAP::SOAPString", XSD::QName.new(nil, "lastModifierName")]],
      ["username", ["SOAP::SOAPString", XSD::QName.new(nil, "username")]],
      ["version", ["SOAP::SOAPInt", XSD::QName.new(nil, "version")]]
    ]
  )

  LiteralRegistry.register(
    :class => Confluence4R::V2::RemoteException,
    :schema_type => XSD::QName.new(NsRpcConfluenceAtlassianCom, "RemoteException"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => Confluence4R::V2::InvalidSessionException,
    :schema_type => XSD::QName.new(NsRpcConfluenceAtlassianCom, "InvalidSessionException"),
    :schema_basetype => XSD::QName.new(NsRpcConfluenceAtlassianCom, "RemoteException"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => Confluence4R::V2::VersionMismatchException,
    :schema_type => XSD::QName.new(NsRpcConfluenceAtlassianCom, "VersionMismatchException"),
    :schema_basetype => XSD::QName.new(NsRpcConfluenceAtlassianCom, "RemoteException"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => Confluence4R::V2::AuthenticationFailedException,
    :schema_type => XSD::QName.new(NsRpcConfluenceAtlassianCom, "AuthenticationFailedException"),
    :schema_basetype => XSD::QName.new(NsRpcConfluenceAtlassianCom, "RemoteException"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => Confluence4R::V2::AlreadyExistsException,
    :schema_type => XSD::QName.new(NsRpcConfluenceAtlassianCom, "AlreadyExistsException"),
    :schema_basetype => XSD::QName.new(NsRpcConfluenceAtlassianCom, "RemoteException"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => Confluence4R::V2::NotPermittedException,
    :schema_type => XSD::QName.new(NsRpcConfluenceAtlassianCom, "NotPermittedException"),
    :schema_basetype => XSD::QName.new(NsRpcConfluenceAtlassianCom, "RemoteException"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => Confluence4R::V2::MapItem,
    :schema_type => XSD::QName.new(NsXmlSoap, "mapItem"),
    :schema_element => [
      ["key", [nil, XSD::QName.new(nil, "key")]],
      ["value", [nil, XSD::QName.new(nil, "value")]]
    ]
  )

  LiteralRegistry.register(
    :class => Confluence4R::V2::Vector,
    :schema_type => XSD::QName.new(NsXmlSoap, "Vector"),
    :schema_element => [
      ["item", ["[]", XSD::QName.new(nil, "item")], [0, nil]]
    ]
  )
end

end; end
