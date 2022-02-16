//
//  Vehicle.h
//  ObC
//
//  Created by JEN Lee on 2022/02/16.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Vehicle : NSObject
{
    int wheels;
    int seats;
}

//member method
@property int wheels;
@property int seats;
//@property (getter=getWheels) int wheels;

-(void)setWheels:(int)w Seats:(int)s;

//-(void)setWheels:(int)w;
//-(void)setSeats:(int)s;
//
//옵젝에서는 게터는 변수명이랑 똑같이 쓴다.
//-(int)wheels;
//-(int)seats;

-(void)print;

@end

NS_ASSUME_NONNULL_END
