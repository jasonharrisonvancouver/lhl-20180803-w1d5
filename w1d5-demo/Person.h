//
//  Person.h
//  w1d5-demo
//
//  Created by Roland on 2017-10-05.
//  Copyright © 2017 Roland. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "EatProtocol.h"

@interface Person : NSObject <EatProtocol>

@property (readonly, strong) NSString *name;

//- (void)eat;

@end

