//
//  ReportCard+AverageGrade.h
//  w1d5-demo
//
//  Created by Roland on 2017-10-06.
//  Copyright © 2017 Roland. All rights reserved.
//

#import "ReportCard.h"

@interface ReportCard (AverageGrade)

// Computed property, no backing ivar
@property (strong, nonatomic, readonly) NSNumber *averageGrade;

@end
