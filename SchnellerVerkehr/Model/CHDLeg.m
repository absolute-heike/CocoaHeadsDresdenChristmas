//
//  CHDLeg.m
//  SchnellerVerkehr
//
//  Created by Michael Berg on 10.12.13.
//  Copyright (c) 2013 Couchfunk. All rights reserved.
//

#import "CHDLeg.h"
#import "CHDStop.h"


@interface CHDLeg ()

- (void)setupFromData:(NSDictionary *)dictionary;

@end

@implementation CHDLeg

+ (instancetype)legWithDictionary:(NSDictionary *)dictionary {
    if (![dictionary dictionaryValue]) {
        return nil;
    }
    
    CHDLeg *leg = [[self alloc] init];
    [leg setupFromData:dictionary];
    return leg;
}

- (void)setupFromData:(NSDictionary *)dictionary {
    NSDictionary *mode = [[dictionary valueForKey:@"mode"] dictionaryValue];
    
    if (mode) {
        self.name           = [[mode objectForKey:@"name"] nonEmptyStringValue];
        self.lineNumber     = [[mode objectForKey:@"number"] nonEmptyStringValue];
        self.destination    = [[mode objectForKey:@"destination"] nonEmptyStringValue];
        
        self.carType        = [[[mode objectForKey:@"type"] numberValue] integerValue];
    }
    
    NSArray *stops     = [[dictionary objectForKey:@"stopSeq"] arrayValue];
    
    if (stops.count != 0) {
        NSMutableArray *stopsArray = [NSMutableArray arrayWithCapacity:stops.count];
        for (NSDictionary *stopDict in stops) {
            CHDStop *stop = [[CHDStop alloc] init];
            
            stop.name = [[stopDict objectForKey:@"nameWO"] nonEmptyStringValue];
            stop.ID   = [[stopDict objectForKey:@"ref.id"] stringValue];
            
            [stopsArray addObject:stop];
        }
        
        self.stops = stopsArray;
    }
}

@end
