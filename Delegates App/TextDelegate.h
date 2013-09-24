//
//  TextDelegate.h
//  Delegates App
//
//  Created by Jhaybie on 9/23/13.
//  Copyright (c) 2013 Jhaybie. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol TextDelegate <NSObject>

- (void) changeText: (NSString *) text;

@end
