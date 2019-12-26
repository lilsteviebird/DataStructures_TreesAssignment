//
//  NewNode.m
//  Assignment9
//
//  Created by sli19 on 1/25/19.
//  Copyright © 2019 sli19. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NewNode.h"

@implementation NewNode: NSObject


-(id) initWithData: (int) x {
    self = [super init];
    if(self){
        self.left = NULL;
        self.right = NULL;
        self.data = x;
    }
    return self;
}



@end
