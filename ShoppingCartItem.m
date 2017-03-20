//
//  ShoppingCartItem.m
//  Flex
//
//  Created by JEROME MORJON on 08/11/2016.
//  Copyright © 2016 JEROME MORJON. All rights reserved.
//

#import "ShoppingCartItem.h"

@implementation ShoppingCartItem


/*
 * Initialize an item and return it
 */
-(ShoppingCartItem*)initWithName:(NSString*)name itemId:(NSUInteger)i description:(NSString*)desc price:(NSNumber*)p quantity:(NSUInteger)q options:(NSMutableArray*)opt
{
    
    
    _itemId = i; // generat a random number
    _name = name;
    _textDescription = desc;
    _price = p;
    _quantity = q;
    _options = opt;
    
    return self;
}

@end
