//
//  Vehicle.m
//  ObC
//
//  Created by JEN Lee on 2022/02/16.
//

#import "Vehicle.h"

@implementation Vehicle
@synthesize wheels;
@synthesize seats;

-(void)setWheels:(int)w {
    wheels = w;
}
-(void)setSeats:(int)s {
    seats = s;
}

-(int)wheels {
    return wheels;
}

-(int)seats {
    return seats;
}

-(void)setWheels:(int)w Seats:(int)s {
    wheels = w;
    seats = s;
}

-(void)print {
    NSLog(@"wheels : %i, seat : %i", wheels, seats);
}

@end
