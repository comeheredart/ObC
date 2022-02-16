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
        
        
        //immutable class
        NSString *str = [[NSString alloc]initWithString:@"This is Me!"];
        
        NSString *result;
        result = [[str substringToIndex:6]substringFromIndex:3];
        
        result = [[str substringWithRange:NSMakeRange(3, 8)]uppercaseString];
        
        
        NSLog(@"dd : %@", result);
        
        
        //mutable class
        NSMutableString *mstr = [NSMutableString stringWithString: str];
        [mstr appendString: @"Hi!"];
        
        NSLog(@"dd : %@", mstr);
            
        
        NSArray *month = [[NSArray alloc]initWithObjects:@"Jan", @"Feb", @"Mar", @"April", nil];
        
        for(int i = 0; i < [month count]; i++) {
            NSLog(@"%@", [month objectAtIndex:i]);
        }
        
        for (NSString *temp in month) {
            NSLog(@"month : %@", temp);
        }
        
        NSMutableArray *mmonth = [NSMutableArray arrayWithArray:month];
        [mmonth addObject:@"ddd"];
        
        for (NSString *temp in mmonth) {
            NSLog(@"month : %@", temp);
        }
        
        NSDictionary *dic = [[NSDictionary alloc]initWithObjectsAndKeys:@"이지원", @"이름", @"후후", @"할말", nil];
        
        NSLog(@"name : %@", dic[@"이름"]);
        
        NSMutableDictionary *mdic = [NSMutableDictionary dictionaryWithDictionary:dic];
        
        [mdic setObject:@"한국" forKey:@"웨얼아임스테잉"];
        
        
        appDelegateClassName = NSStringFromClass([AppDelegate class]);
    }
    return UIApplicationMain(argc, argv, nil, appDelegateClassName);
}
