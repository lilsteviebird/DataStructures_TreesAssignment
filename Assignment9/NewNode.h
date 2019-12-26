//
//  NewNode.h
//  Assignment9
//
//  Created by sli19 on 1/25/19.
//  Copyright © 2019 sli19. All rights reserved.
//

#ifndef NewNode_h
#define NewNode_h
@interface NewNode<ObjectType> : NSObject

@property NewNode *left;
@property NewNode *right;
@property int data;

-(id) initWithData: (int) x;

@end
#endif /* NewNode_h */
