//
//  SelfSizingTableViewCell.h
//  SelfSizingCellExample
//
//  Created by Kemal Kocabiyik on 01/08/14.
//  Copyright (c) 2014 Kemal Kocabiyik. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SelfSizingTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UILabel *descLabel;

-(void) initializeCellWithItem:(NSDictionary *) dict;
@end
