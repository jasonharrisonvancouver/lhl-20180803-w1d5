//
//  Animal+Animal_Senses.h
//  w1d5-demo
//
//  Created by Roland on 2017-10-05.
//  Copyright © 2017 Roland. All rights reserved.
//

#import "Animal.h"

@interface Animal (Animal_Senses)

@property (strong, nonatomic, readonly) NSString *name;

- (void)smell;
- (void)taste;

@end
