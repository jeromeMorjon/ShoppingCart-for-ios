//
//  ShoppingCartItem.h
//  Flex
//
//  Created by JEROME MORJON on 08/11/2016.
//  Copyright © 2016 JEROME MORJON. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ShoppingCartItem : NSObject

@property (nonatomic, assign) NSUInteger itemId;
@property (copy) NSString *name;
@property (copy) NSString *textDescription;
@property (nonatomic, assign) NSNumber* price;
@property (nonatomic, assign) NSUInteger quantity;
@property (copy) NSMutableArray *options;

-(ShoppingCartItem*)initWithName:(NSString*)name itemId:(NSUInteger)i description:(NSString*)desc price:(NSNumber*)p quantity:(NSUInteger)q options:(NSMutableArray*)opt;



@end
