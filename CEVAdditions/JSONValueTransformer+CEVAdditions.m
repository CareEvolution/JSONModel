//
//  JSONValueTransformer+CEVAdditions.m
//  PersonalHealth
//
//  Created by Scott Guelich on 11/11/14.
//  Copyright (c) 2014 CareEvolution, Inc. All rights reserved.
//

#import "JSONValueTransformer+CEVAdditions.h"


@implementation JSONValueTransformer (CEVAdditions)

- (NSUUID *)NSUUIDFromNSString:(NSString *)string
{
    return [[NSUUID alloc] initWithUUIDString:string];
}

- (NSString *)JSONObjectFromNSUUID:(NSUUID *)UUID
{
    return UUID.UUIDString;
}

@end
