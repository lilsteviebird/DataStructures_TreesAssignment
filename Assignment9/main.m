    //
//  main.m
//  Assignment9
//
//  Created by sli19 on 1/25/19.
//  Copyright © 2019 sli19. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "BTS.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        
        BTS *newTree = [[BTS alloc] init];
        
        [newTree insertValue: 1];
        [newTree insertValue: 2];
        [newTree insertValue: 3];
        [newTree insertValue: 4];

        [newTree contains: 2];
        NSLog(@"all done");
    }
    return 0;
}
