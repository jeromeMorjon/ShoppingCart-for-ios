# ShoppingCart-for-ios

Shopping cart for ios is a simple tool to include a cart into your project.
Juste include class and get a shopping list in your app.

## installation

Include all the files in your project

### imports
import only the header file
```swift
#import "ShoppingCart.h"
```
## Methods

### Initalise a new shopping cart

Two ways :
 - (default)
```swift
_shoppingList = [ShoppingCart sharedInstance];
```
 - or you can make multiple shopping cart by name
```swift
-(ShoppingCart *)initWithCartTitle:(NSString *)title
```

### Retrieve the shopping list
Load your shopping cart by this way:
```swift
_shoppingList = [ShoppingCart init];
```

### Add an item (example)
```swift
-(void)addItem:(ShoppingCartItem *)item
```

### Update an item
```swift
-(void)update:(ShoppingCartItem*)item qty:(NSInteger)count
```

### Get the item list
```swift
-(NSMutableArray*)getShoppingList
```

### Number of item in the cart
```swift
-(NSUInteger)count
```

### Get the total price
Return the price without the tax
```swift
-(NSUInteger)total
```

### Remove an item from the list
```swift
-(void)removeItem:(ShoppingCartItem*)item
```

## Item object
To add an item in your cart you need to make an object shopping item. 
you can edit this item after.

```swift
-(ShoppingCartItem*)initWithName:(NSString*)name itemId:(NSUInteger)i description:(NSString*)desc price:(NSNumber*)p quantity:(NSUInteger)q options:(NSMutableArray*)opt;
```

### Options : NSMutableArray
You can add an infinity personal option to an item. 
you juste need an option in this array like any array with the method ```addObject: ```

### Tax

If you want to add tax by object, just add it in option array.

## TODO
Make cart by name