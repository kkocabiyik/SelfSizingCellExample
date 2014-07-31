//
//  MainViewController.m
//  SelfSizingCellExample
//
//  Created by Kemal Kocabiyik on 01/08/14.
//  Copyright (c) 2014 Kemal Kocabiyik. All rights reserved.
//

#import "MainViewController.h"
#import "SelfSizingTableViewCell.h"

@interface MainViewController ()

@end

@implementation MainViewController

- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{

    self.itemsArray = @[ @{ @"title" : @"Test" ,  @"description" : @"Test Description" },
                         @{ @"title" : @"Test" ,  @"description" : @"Test Description" },
                         @{ @"title" : @"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum." ,  @"description" : @"Test Description" },
                         @{ @"title" : @"Test" ,  @"description" : @"Test Description" },
                         @{ @"title" : @"Test" ,  @"description" : @"Test Description" },
                         @{ @"title" : @"Test" ,  @"description" : @"Test Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum." },
                         @{ @"title" : @"Test" ,  @"description" : @"Test Description" },
                         @{ @"title" : @"Test" ,  @"description" : @"Test Description" },
                         @{ @"title" : @"Test" ,  @"description" : @"Test Description" },
                         @{ @"title" : @"Test" ,  @"description" : @"Test Description" },
                         @{ @"title" : @"Test" ,  @"description" : @"Test Description" },
                         @{ @"title" : @"Test" ,  @"description" : @"Test Description" },
                         @{ @"title" : @"Test" ,  @"description" : @"Test Description" },
                         @{ @"title" : @"Test" ,  @"description" : @"Test Description" },
                         @{ @"title" : @"Test" ,  @"description" : @"Test Description" },
                         @{ @"title" : @"Test" ,  @"description" : @"Test Description" }];
    
    
    
    [super viewDidLoad];
    
  
    self.tableView.estimatedRowHeight = 82;
    self.tableView.rowHeight = UITableViewAutomaticDimension;
    
    [self.tableView reloadData];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    NSString *identifier = @"SelfSizingTableViewCell";
    
    SelfSizingTableViewCell *tableViewCell = [tableView dequeueReusableCellWithIdentifier:identifier];
    
    if(!tableViewCell){
        UINib *nib = [UINib nibWithNibName:identifier bundle:nil];
        
        [tableView registerNib:nib forCellReuseIdentifier:identifier];
        
        tableViewCell = [tableView dequeueReusableCellWithIdentifier:identifier];
    }
    
    
    NSDictionary *dict = [self.itemsArray objectAtIndex:indexPath.row];
    
    [tableViewCell initializeCellWithItem:dict];
    
    return tableViewCell;
}


-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return self.itemsArray.count;
}

@end
