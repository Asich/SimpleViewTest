//
//  ViewController.m
//  SingleViewTest
//
//  Created by Mustafin Askar on 30.04.13.
//  Copyright (c) 2013 askar. All rights reserved.
//

#import "ViewController.h"
#import <CoreData/CoreData.h>
#import "Vars.h"

@interface ViewController ()

@property (nonatomic, strong) UITableView *tableView;

@end

@implementation ViewController

@synthesize managedObjectContext;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [self drawNavigationBar];
    [self drawTableView];
}

#pragma mark - draw navigation bar

- (void)drawNavigationBar{
    CGRect navBarFrame = CGRectMake(0, 0, [Vars widthView], [Vars heightOfNavbar]);
    UINavigationBar *navigationBar = [[UINavigationBar alloc]initWithFrame:navBarFrame];
    [navigationBar setBackgroundColor:[UIColor redColor]];
    [self.view addSubview:navigationBar];
    [navigationBar release];
}

#pragma mark - drawing tableview

- (void)drawTableView{
    CGRect tableViewFrame = CGRectMake(0, 44, [Vars widthView], [Vars heightView] - [Vars heightOfNavbar]);
    _tableView = [[UITableView alloc]initWithFrame:tableViewFrame];
    _tableView.delegate = self;
    _tableView.dataSource = self;
    [self.view addSubview:_tableView];
    [_tableView release];
}

#pragma mark - tableView delegate

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:CellIdentifier] autorelease];
    }
    
    cell.textLabel.text = [[self.failedBankInfos objectAtIndex:indexPath.row] valueForKey:@"name"];
    cell.detailTextLabel.text = [[self.failedBankInfos objectAtIndex:indexPath.row] valueForKey:@"city"];
    return cell;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [self.failedBankInfos count];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

#pragma mark - free memmory

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewDidUnload{
    [super dealloc];
}

@end
