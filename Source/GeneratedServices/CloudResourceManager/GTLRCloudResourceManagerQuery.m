// NOTE: This file was generated by the ServiceGenerator.

// ----------------------------------------------------------------------------
// API:
//   Google Cloud Resource Manager API (cloudresourcemanager/v1)
// Description:
//   The Google Cloud Resource Manager API provides methods for creating,
//   reading, and updating project metadata.
// Documentation:
//   https://cloud.google.com/resource-manager

#import "GTLRCloudResourceManagerQuery.h"

#import "GTLRCloudResourceManagerObjects.h"

@implementation GTLRCloudResourceManagerQuery

@dynamic fields;

@end

@implementation GTLRCloudResourceManagerQuery_ProjectsDelete

@dynamic projectId;

+ (instancetype)queryWithProjectId:(NSString *)projectId {
  NSArray *pathParams = @[ @"projectId" ];
  NSString *pathURITemplate = @"v1/projects/{projectId}";
  GTLRCloudResourceManagerQuery_ProjectsDelete *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"DELETE"
                       pathParameterNames:pathParams];
  query.projectId = projectId;
  query.expectedObjectClass = [GTLRCloudResourceManager_Empty class];
  query.loggingName = @"cloudresourcemanager.projects.delete";
  return query;
}

@end

@implementation GTLRCloudResourceManagerQuery_ProjectsGet

@dynamic projectId;

+ (instancetype)queryWithProjectId:(NSString *)projectId {
  NSArray *pathParams = @[ @"projectId" ];
  NSString *pathURITemplate = @"v1/projects/{projectId}";
  GTLRCloudResourceManagerQuery_ProjectsGet *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.projectId = projectId;
  query.expectedObjectClass = [GTLRCloudResourceManager_Project class];
  query.loggingName = @"cloudresourcemanager.projects.get";
  return query;
}

@end

@implementation GTLRCloudResourceManagerQuery_ProjectsGetIamPolicy

@dynamic resource;

+ (instancetype)queryWithObject:(GTLRCloudResourceManager_GetIamPolicyRequest *)object
                       resource:(NSString *)resource {
  if (object == nil) {
    GTLR_DEBUG_ASSERT(object != nil, @"Got a nil object");
    return nil;
  }
  NSArray *pathParams = @[ @"resource" ];
  NSString *pathURITemplate = @"v1/projects/{resource}:getIamPolicy";
  GTLRCloudResourceManagerQuery_ProjectsGetIamPolicy *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.resource = resource;
  query.expectedObjectClass = [GTLRCloudResourceManager_Policy class];
  query.loggingName = @"cloudresourcemanager.projects.getIamPolicy";
  return query;
}

@end

@implementation GTLRCloudResourceManagerQuery_ProjectsList

@dynamic filter, pageSize, pageToken;

+ (instancetype)query {
  NSString *pathURITemplate = @"v1/projects";
  GTLRCloudResourceManagerQuery_ProjectsList *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:nil];
  query.expectedObjectClass = [GTLRCloudResourceManager_ListProjectsResponse class];
  query.loggingName = @"cloudresourcemanager.projects.list";
  return query;
}

@end

@implementation GTLRCloudResourceManagerQuery_ProjectsSetIamPolicy

@dynamic resource;

+ (instancetype)queryWithObject:(GTLRCloudResourceManager_SetIamPolicyRequest *)object
                       resource:(NSString *)resource {
  if (object == nil) {
    GTLR_DEBUG_ASSERT(object != nil, @"Got a nil object");
    return nil;
  }
  NSArray *pathParams = @[ @"resource" ];
  NSString *pathURITemplate = @"v1/projects/{resource}:setIamPolicy";
  GTLRCloudResourceManagerQuery_ProjectsSetIamPolicy *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.resource = resource;
  query.expectedObjectClass = [GTLRCloudResourceManager_Policy class];
  query.loggingName = @"cloudresourcemanager.projects.setIamPolicy";
  return query;
}

@end

@implementation GTLRCloudResourceManagerQuery_ProjectsTestIamPermissions

@dynamic resource;

+ (instancetype)queryWithObject:(GTLRCloudResourceManager_TestIamPermissionsRequest *)object
                       resource:(NSString *)resource {
  if (object == nil) {
    GTLR_DEBUG_ASSERT(object != nil, @"Got a nil object");
    return nil;
  }
  NSArray *pathParams = @[ @"resource" ];
  NSString *pathURITemplate = @"v1/projects/{resource}:testIamPermissions";
  GTLRCloudResourceManagerQuery_ProjectsTestIamPermissions *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.resource = resource;
  query.expectedObjectClass = [GTLRCloudResourceManager_TestIamPermissionsResponse class];
  query.loggingName = @"cloudresourcemanager.projects.testIamPermissions";
  return query;
}

@end

@implementation GTLRCloudResourceManagerQuery_ProjectsUndelete

@dynamic projectId;

+ (instancetype)queryWithObject:(GTLRCloudResourceManager_UndeleteProjectRequest *)object
                      projectId:(NSString *)projectId {
  if (object == nil) {
    GTLR_DEBUG_ASSERT(object != nil, @"Got a nil object");
    return nil;
  }
  NSArray *pathParams = @[ @"projectId" ];
  NSString *pathURITemplate = @"v1/projects/{projectId}:undelete";
  GTLRCloudResourceManagerQuery_ProjectsUndelete *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.projectId = projectId;
  query.expectedObjectClass = [GTLRCloudResourceManager_Empty class];
  query.loggingName = @"cloudresourcemanager.projects.undelete";
  return query;
}

@end

@implementation GTLRCloudResourceManagerQuery_ProjectsUpdate

@dynamic projectId;

+ (instancetype)queryWithObject:(GTLRCloudResourceManager_Project *)object
                      projectId:(NSString *)projectId {
  if (object == nil) {
    GTLR_DEBUG_ASSERT(object != nil, @"Got a nil object");
    return nil;
  }
  NSArray *pathParams = @[ @"projectId" ];
  NSString *pathURITemplate = @"v1/projects/{projectId}";
  GTLRCloudResourceManagerQuery_ProjectsUpdate *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"PUT"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.projectId = projectId;
  query.expectedObjectClass = [GTLRCloudResourceManager_Project class];
  query.loggingName = @"cloudresourcemanager.projects.update";
  return query;
}

@end
