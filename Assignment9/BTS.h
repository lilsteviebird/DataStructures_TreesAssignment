//
//  BTS.h
//  Assignment9
//
//  Created by sli19 on 1/25/19.
//  Copyright © 2019 sli19. All rights reserved.
//

#ifndef BTS_h
#define BTS_h
#import"NewNode.h"

@interface BTS<ObjectType> : NSObject

@property NewNode *root;
@property NewNode *temp;

-(id) init;
-(NewNode*) insertValue: (int) value;
-(BOOL) contains: (int) intGiven;

@end
#endif /* BTS_h */
