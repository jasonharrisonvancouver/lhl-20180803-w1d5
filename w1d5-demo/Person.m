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


@interface classA: NSObject <newDelegate>
@end

@implementation classA

- (void)run {
    //
}

- (void)stand {
    //
}

@end

@interface classB: NSObject <newDelegate>
@end

@implementation classB
- (void)run {
    //
}

- (void)stand {
    //
}

- (void)sit {
    //
}

@end

// "Private" interface, class continuation category
@interface Person ()

@property (readwrite, strong) NSString *name; // Override public inteface
@property (strong, nonatomic) NSString *socialInsuranceNumber;  // Private property

@property (weak, nonatomic) id<newDelegate> delegate;

@end


@implementation Person

- (void)eat {
    // Placeholder

    [self.delegate stand];
    [self.delegate run];
    
    
    [self.delegate sit];  // !!!! Unsafe, may crash if delegate does not support sit !!!
    
    // Right way to do this is
    if ([self.delegate respondsToSelector:@selector(sit)]) {
        // Only call sit if we know for sure delegate supports it
        [self.delegate sit];
    }
    
    
    
    
    
    
    
    
    
    
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
