//
//  main.m
//  ObC
//
//  Created by JEN Lee on 2022/02/14.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
//객체지향 : class, instance, object (instance != object)
//정확한명칭 : (class object, instance object) == object


//자바의 interface와 헷갈리지 말기
@interface Vehicle : NSObject {
    //member variable : 초기화를 하면 안됨
    int wheels;
    int seats;
}

//member method : Define만 하기, 구현은 아래에서
-(void)setWheels:(int)w;
-(void)setSeats:(int)s;
-(void)print;

@end



@implementation Vehicle

-(void)setWheels:(int)w {
    wheels = w;
}
-(void)setSeats:(int)s {
    seats = s;
}
-(void)print {
    NSLog(@"wheels : %i, seat : %i", wheels, seats);
}

@end



int main(int argc, char * argv[]) {
    NSString * appDelegateClassName;
    @autoreleasepool {
        
        //int float double long - 원시타입
        // Setup code that might create autoreleased objects goes here.
        appDelegateClassName = NSStringFromClass([AppDelegate class]);
    }
    return UIApplicationMain(argc, argv, nil, appDelegateClassName);
}
