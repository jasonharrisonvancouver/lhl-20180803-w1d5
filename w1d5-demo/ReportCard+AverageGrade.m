//
//  ReportCard+AverageGrade.m
//  w1d5-demo
//
//  Created by Roland on 2017-10-06.
//  Copyright © 2017 Roland. All rights reserved.
//

#import "ReportCard+AverageGrade.h"

@implementation ReportCard (AverageGrade)

- (NSNumber *)averageGrade {
    NSNumber *averageGrade = nil;
    
    // Value returned is computed from existing properties
    averageGrade = [NSNumber numberWithFloat:(([self.scienceGrade floatValue] + [self.mathGrade floatValue]) / 2.0)];
    return averageGrade;
}

@end
