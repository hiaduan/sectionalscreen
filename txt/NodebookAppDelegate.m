//
//  NodebookAppDelegate.m
//  Nodebook
//
//  Created by Duan Xuyong on 11-8-31.
//  Copyright 2011年 Shanghai Hongju Network Technology Co., Ltd. All rights reserved.
//

#import "NodebookAppDelegate.h"

@implementation NodebookAppDelegate


@synthesize window=_window;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    /*
     Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
     Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
     */
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    /*
     Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
     If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
     */
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    /*
     Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
     */
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    /*
     Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
     */
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    /*
     Called when the application is about to terminate.
     Save data if appropriate.
     See also applicationDidEnterBackground:.
     */
}

- (void)dealloc
{
    [_window release];
    [super dealloc];
}

- (IBAction) submit:(id)sender {
    NSString* username  = [[NSString alloc] initWithString: usernameField.text];
    NSString* password  = [[NSString alloc] initWithString: passwordField.text];
    NSString* rember    = [[NSString alloc] initWithFormat:@"%i", remberSWitch.selected];

    NSURL* url = [NSURL URLWithString:@"http://aiyuji.com"];
    NSURLRequest* request = [NSURLRequest requestWithURL:url cachePolicy:NSURLRequestReturnCacheDataElseLoad timeoutInterval:60];
    
    NSURLConnection* connection = [[NSURLConnection alloc] initWithRequest:request delegate:self];
    //connection.start();
    
    
    NSLog(@"%@, %@, %@", username, password, rember);
}


- (void) connection:(NSURLConnection *)connection
 didReceiveResponse:(NSURLResponse *)response {
    NSLog(@"connection.");
}




@end
