//
//  main.m
//  ObC
//
//  Created by JEN Lee on 2022/02/14.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
#import "Vehicle.h"
//객체지향 : class, instance, object (instance != object)
//정확한명칭 : (class object, instance object) == object


int main(int argc, char * argv[]) {
    NSString * appDelegateClassName;
    @autoreleasepool {
        
        //: Create instance object
        Vehicle *hello = [[Vehicle alloc]init];
        
        //: Set Values
        [hello setWheels: 4];
        [hello setSeats: 5];
        
        [hello setWheels:3 Seats:2];
        
        [hello print];
        
        if (hello.wheels == 4) {
            NSLog(@"wheels : 4");
        } else {
            NSLog(@"NO");
        }
        
        for (int i = 0; i < hello.seats; i++) {
            NSLog(@"wheels: %i", i);
        }
        
                
        
        appDelegateClassName = NSStringFromClass([AppDelegate class]);
    }
    return UIApplicationMain(argc, argv, nil, appDelegateClassName);
}
