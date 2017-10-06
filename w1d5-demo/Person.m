//
//  Person.m
//  w1d5-demo
//
//  Created by Roland on 2017-10-05.
//  Copyright © 2017 Roland. All rights reserved.
//

#import "Person.h"
#import "Student.h"
#import "Dog.h"
#import "Animal+Animal_Senses.h"

@protocol newDelegate <NSObject>

// Anything below are all required
- (void)stand;

@optional
// Anything below are all optional
- (void)sit;

@required
// Anything below are all required
- (void)run;

@end


@interface classA <newDelegate>
- (void)stand;
@end

@interface classB <newDelegate>
- (void)stand;
- (void)sit;
@end

// "Private" interface, class continuation category
@interface Person ()

@property (readwrite, strong) NSString *name; // Override public inteface
@property (strong, nonatomic) NSString *socialInsuranceNumber;  // Private property

@end


@implementation Person

- (void)eat {
    // Placeholder
    
    id<newDelegate> object;
    if ([object respondsToSelector:@selector(sit)]) {
        [object sit];
    }
//    SEL newMethod = @selector(stand);
//    if ([object respondsToSelector:newMethod]) {
//        [object performSelector:newMethod
//                     withObject:nil];
//    }
    
    Dog *myDog;
    [myDog bark];  // From Dog
    [myDog sleep]; // From Animal
    
    // This will work at runtime even without importing
    // Animal+Senses.h
    if ([myDog respondsToSelector:@selector(taste)]) {
        [myDog performSelector:@selector(taste)];
    }
    
    [myDog taste]; // From Animal+Senses
}

@end
