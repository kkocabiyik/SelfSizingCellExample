//
//  MainViewController.h
//  SelfSizingCellExample
//
//  Created by Kemal Kocabiyik on 01/08/14.
//  Copyright (c) 2014 Kemal Kocabiyik. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MainViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@property (strong,  nonatomic) NSArray *itemsArray;

@end
