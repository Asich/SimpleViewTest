//
//  ViewController.h
//  SingleViewTest
//
//  Created by Mustafin Askar on 30.04.13.
//  Copyright (c) 2013 askar. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITableViewDataSource, UITableViewDelegate>

@property (nonatomic, strong) NSManagedObjectContext *managedObjectContext;
@property (nonatomic, strong) NSArray *failedBankInfos;

@end
