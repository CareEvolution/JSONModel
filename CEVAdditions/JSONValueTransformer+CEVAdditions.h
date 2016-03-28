//
//  JSONValueTransformer+CEVAdditions.h
//  PersonalHealth
//
//  Created by Scott Guelich on 11/11/14.
//  Copyright (c) 2014 CareEvolution, Inc. All rights reserved.
//

#import "JSONValueTransformer.h"


@interface JSONValueTransformer (CEVAdditions)

- (NSUUID *)NSUUIDFromNSString:(NSString *)string;
- (NSString *)JSONObjectFromNSUUID:(NSUUID *)UUID;

@end
