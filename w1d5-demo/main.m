//
//  main.m
//  w1d5-demo
//
//  Created by Roland on 2017-10-05.
//  Copyright © 2017 Roland. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Student.h"
#import "Animal.h"
#import "Dog.h"

void testClass(NSArray *mixedArray);
void testSelectors(NSArray *mixedArray);

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        
        Person *person = [[Person alloc] init];
        Student *student = [[Student alloc] init];
        Animal *animal = [[Animal alloc] init];
        Dog *dog = [[Dog alloc] init];
        NSDate *date = [NSDate date];
        
        NSMutableArray *mixedArray = [[NSMutableArray alloc] init];
        [mixedArray addObject:person];
        [mixedArray addObject:student];
        [mixedArray addObject:date];
        [mixedArray addObject:animal];
        [mixedArray addObject:dog];
        
        testClass(mixedArray);
        testSelectors(mixedArray);
    }
    return 0;
}

void testClass(NSArray *mixedArray) {
    
    int i = 0;
    for (id object in mixedArray) {
        if ([object isKindOfClass:[Person class]]) {
            NSLog(@"%d: Person", i);
        }
        if ([object isKindOfClass:[Student class]]) {
            NSLog(@"%d: Student", i);
        }
        if ([object isKindOfClass:[Animal class]]) {
            NSLog(@"%d: Animal", i);
        }
        if ([object isKindOfClass:[Dog class]]) {
            NSLog(@"%d: Dog", i);
        }
        if ([object isKindOfClass:[NSDate class]]) {
            NSLog(@"%d: Date", i);
        }
        i++;
    }
}

void testSelectors(NSArray *mixedArray) {
    int i = 0;
    for (id object in mixedArray) {
        if ([object respondsToSelector:@selector(eat)]) {
            NSLog(@"Object %d can eat", i);
        }
        if ([object respondsToSelector:@selector(bark)]) {
            NSLog(@"Object %d can bark", i);
        }
        i++;
    }
}
