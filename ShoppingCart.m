//
//  ShoppingCart.m
//  Pods
//
//  Created by JEROME MORJON on 08/11/2016.
//
//

#import "ShoppingCart.h"

@implementation ShoppingCart

#pragma mark instance

/*
 * Make a unique instance to retrieve the cart
 */
+ (instancetype)sharedInstance
{
    static ShoppingCart *sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [[ShoppingCart alloc] init];
    });
    return sharedInstance;
}


/*
 * make a new instance of shopping cart
 */
-(id)init
{
     if (self = [super init]) {
         
         // Init an empty cart with title 'default'
         _listItem = [[NSMutableArray alloc] init];
         _cartName = @"default";
     }
    return self;
}

#pragma mark methods

/*
 * Init a cart with a specific name
 */
-(ShoppingCart *)initWithCartTitle:(NSString *)title
{
    
    return nil;
}


/*
 * Add an item in the actual cart
 */
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


/*
 * update the quantity of an item
 */
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


/*
 * Return the shopping list
 */
-(NSMutableArray*)getShoppingList
{
    return _listItem;
}

/*
 * return the count of item in the shopping cart
 */
-(NSUInteger)count
{
    return [_listItem count];
}


-(NSUInteger)total
{
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

/*
 * Remove an item from the shopping cart
 */
-(void)removeItem:(ShoppingCartItem*)item
{
    [_listItem removeObject:item];
}

- (void)dealloc {
    // Should never be called, but just here for clarity really.
}

-(void) destroy
{
    
}

-(id)content
{
    return nil;
}


@end
