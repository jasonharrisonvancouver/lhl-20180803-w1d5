//
//  Animal.h
//  w1d5-demo
//
//  Created by Roland on 2017-10-05.
//  Copyright © 2017 Roland. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "EatProtocol.h"

@interface Animal : NSObject <EatProtocol>

- (void)sleep;

@end
