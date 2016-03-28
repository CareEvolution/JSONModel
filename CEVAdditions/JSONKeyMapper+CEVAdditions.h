//
//  JSONKeyMapper+CEVAdditions.h
//  PersonalHealth
//
//  Created by Scott Guelich on 11/11/14.
//  Copyright (c) 2014 CareEvolution, Inc. All rights reserved.
//

#import "JSONKeyMapper.h"


@interface JSONKeyMapper (CEVAdditions)

+ (instancetype)mapperFromUpperCamelCaseToLowerCamelCase;

@end
