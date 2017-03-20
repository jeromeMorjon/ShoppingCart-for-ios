//
//  ShoppingCart.h
//  Pods
//
//  Created by JEROME MORJON on 08/11/2016.
//
//

#import <Foundation/Foundation.h>
#import "ShoppingCartItem.h"

@interface ShoppingCart : NSObject

@property (copy) ShoppingCartItem *cartItem; //any item
@property (copy) NSMutableArray *listItem; // item list
@property (copy) NSString *cartName; // Name of the cart list


+ (instancetype)sharedInstance;
-(id)init;
-(ShoppingCart*)initWithCartTitle:(NSString *)title;
-(void)addItem:(ShoppingCartItem*)item;
-(void)removeItem:(ShoppingCartItem*)item;
-(void)update:(ShoppingCartItem*)item;
-(NSUInteger)count;
-(NSUInteger)total;
-(NSMutableArray*)getShoppingList;
-(ShoppingCartItem*)getItem:(NSUInteger)item_id;
-(void)destroy;
-(id)content;


@end
