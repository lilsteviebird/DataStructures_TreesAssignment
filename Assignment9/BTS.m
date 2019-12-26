//
//  BTS.m
//  Assignment9
//
//  Created by sli19 on 1/25/19.
//  Copyright © 2019 sli19. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <QuartzCore/QuartzCore.h>
#import "BTS.h"

@implementation BTS:NSObject

-(id) init{
    self = [super init];
    if(self){
        self.root = NULL;
    }
    return self;
}



-(NewNode*) insertValue: (int) value atNode: (NewNode*) nodeGiven{
    if(nodeGiven == NULL){
        NewNode *inserted = [[NewNode alloc] initWithData: value];
        nodeGiven = inserted;
        NSLog(@"We inserted %i", nodeGiven.data);
        return nodeGiven;
    }
    if(value < nodeGiven.data){
        return [self insertValue: value atNode:nodeGiven.left];
    }
    else if(value > nodeGiven.data){
        return [self insertValue: value atNode: nodeGiven.right];
    }
    return nodeGiven;
}

-(NewNode*) insertValue: (int) value{
    if(self.root == NULL){
        NewNode *inserted = [[NewNode alloc] initWithData: value];
        self.root = inserted;
    }
    else if(self.root !=NULL){
        NSLog(@"there is a root %i", self.root.data);
        return [self insertValue:value atNode:self.root];
    }
    return self.root;
}



-(BOOL) contains: (int) intGiven{
    NSDate *begin=[NSDate date];
    self.temp = self.root;
    
    while(self.temp.data != intGiven){
        if(intGiven < self.temp.data){
            self.temp = self.temp.left;
        }else if(intGiven > self.temp.data){
            self.temp = self.temp.right;
        }
        if(self.temp == NULL){
            NSLog(@"Number could not be found");
            return FALSE;
        }
    }
    NSLog(@"Number was found");
    NSTimeInterval timeInterval = [begin timeIntervalSinceNow];
    printf("\n LOOK AT ME RIGHT HERE TO BINARY SEARCH TREE IN MILLISECONDS is %f \n",timeInterval * -1);
    return TRUE;
}

@end
