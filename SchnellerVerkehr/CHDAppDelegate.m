//
//  CHDAppDelegate.m
//  SchnellerVerkehr
//
//  Created by Michael Berg on 09.12.13.
//  Copyright (c) 2013 CocoaHeads Dresden. All rights reserved.
//

#import "CHDAppDelegate.h"

#import "CHDStation.h"
#import "CHDTrip.h"

@implementation CHDAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.

    /* Example of a trip from coordinates to a stop */
    //    CHDStation *o = [[CHDStation alloc] init];
    //    o.type = CHDStationTypeCoord;
    //    o.location = [[CLLocation alloc] initWithLatitude:51.06604 longitude:13.7509]; //Neustadt
    //
    //    CHDStation *d = [[CHDStation alloc] init];
    //    d.type = CHDStationTypeStop;
    //    d.ID = @"33000728";  // SLUB Haltestelle
    //
    //    assert(o.identifiable);
    //    assert(d.identifiable);
    //
    //    [CHDTrip findTripWithOrigin:o destination:d calcNumberOfTrips:3 completion:^(NSArray *trips) {
    //        NSLog(@"Trips: %lu",(unsigned long)[trips count]);
    //    }];

    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
