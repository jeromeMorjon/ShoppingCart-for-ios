//
//  ShoppingCart.m
//  Pods
//
//  Created by JEROME MORJON on 08/11/2016.
//
//

#import "ShoppingCart.h"

@implementation ShoppingCart

#pragma mark Singleton method   

+ (instancetype)sharedInstance
{
    static ShoppingCart *sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [[ShoppingCart alloc] init];
    });
    return sharedInstance;
}

-(id)init
{
    //make a new instance of shopping cart
     if (self = [super init]) {
         
         // Init an empty cart with title 'default'
         _listItem = [[NSMutableArray alloc] init];
         _cartName = @"default";
     }
    return self;
}

-(ShoppingCart *)initWithCartTitle:(NSString *)title
{
    // Init a cart with a specific name
    return nil;
}

-(void)addItem:(ShoppingCartItem *)item
{
    //add an item in the cart list
    BOOL exist = NO;
    for(ShoppingCartItem *tmp_item in _listItem)
    {
        if(tmp_item.itemId == item.itemId)
        {
            NSUInteger index = [_listItem indexOfObject:tmp_item];
            tmp_item.quantity += 1;
            [_listItem replaceObjectAtIndex:index withObject:tmp_item];
            exist = YES;
        }
    }
    
    if(!exist)
        [_listItem addObject:item];
    
}

-(void)update:(ShoppingCartItem*)item qty:(NSInteger)count
{
    //update the quantity of an item
    for(ShoppingCartItem *tmp_item in _listItem)
    {
        if(tmp_item.itemId == item.itemId)
        {
            NSUInteger index = [_listItem indexOfObject:tmp_item];
            tmp_item.quantity = count;
            [_listItem replaceObjectAtIndex:index withObject:tmp_item];
        }
    }
}

-(NSMutableArray*)getShoppingList
{
    // return the shopping list
    return _listItem;
}

-(NSUInteger)count
{
    // return the count of item in the shopping cart
    return [_listItem count];
}

-(NSUInteger)total
{
    //return the total price of the shopping cart
    int total = 0;
    
    if([_listItem count] > 0)
    {
        for(int i = 0; i < [self count]; i++)
        {
            ShoppingCartItem* item = [_listItem objectAtIndex:i];
            total += [item.price integerValue] * item.quantity;
            NSLog(@"total: %i", total);
        }
    }
    return total;
}

-(void)removeItem:(ShoppingCartItem*)item
{
    // Remove an item from the shopping cart
    [_listItem removeObject:item];
}


- (void)dealloc {
    // Should never be called, but just here for clarity really.
}


@end
