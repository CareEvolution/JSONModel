//
//  JSONKeyMapper+CEVAdditions.m
//  PersonalHealth
//
//  Created by Scott Guelich on 11/11/14.
//  Copyright (c) 2014 CareEvolution, Inc. All rights reserved.
//

#import "JSONKeyMapper+CEVAdditions.h"


@implementation JSONKeyMapper (CEVAdditions)

+ (instancetype)mapperFromUpperCamelCaseToLowerCamelCase
{
    JSONModelKeyMapBlock toModel = ^NSString *(NSString* keyName) {
        if ( !keyName )
        {
            return nil;
        }
        else if ( [keyName length] == 0 )
        {
            return @"";
        }
        else
        {
            NSString *initial = [keyName substringToIndex:1];
            return [keyName stringByReplacingCharactersInRange:NSMakeRange(0, 1)
                                                    withString:[initial lowercaseString]];
        }
    };
    
    JSONModelKeyMapBlock toJSON = ^NSString *(NSString* keyName) {
        if ( !keyName )
        {
            return nil;
        }
        else if ( [keyName length] == 0 )
        {
            return @"";
        }
        else
        {
            NSString *initial = [keyName substringToIndex:1];
            return [keyName stringByReplacingCharactersInRange:NSMakeRange(0, 1)
                                                    withString:[initial uppercaseString]];
        }
    };
    
    return [[self alloc] initWithJSONToModelBlock:toModel
                                 modelToJSONBlock:toJSON];
}

@end
