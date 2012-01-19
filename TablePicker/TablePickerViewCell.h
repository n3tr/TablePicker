//
//  TablePickerViewCell.h
//  TablePicker
//
//  Created by n3tr on 1/18/12.
//  Copyright (c) 2012 Simpletail. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TablePickerViewCell : UITableViewCell
{
    NSMutableArray *imageViews;
    UIImage *defaultImage;
}
@property (nonatomic, retain) NSMutableArray *imageViews;
@property (nonatomic, retain) UIImage *defaultImage;

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier withDefaultImage:(UIImage *)image;

- (void)setImageView:(UIImageView *)imageView atColIndex:(NSInteger)colIndex;

@end
