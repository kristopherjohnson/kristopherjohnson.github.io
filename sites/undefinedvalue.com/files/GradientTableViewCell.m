//
//  GradientTableViewCell.m
//
//  The contents of this file are dedicated to the public domain.
//

#import "GradientTableViewCell.h"


@implementation GradientTableViewCell


- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        UIImage *image = [UIImage imageNamed:@"CellGradientBackground.png"];
        UIImageView *imageView = [[UIImageView alloc] initWithImage:image];
        imageView.contentMode = UIViewContentModeScaleToFill;
        self.backgroundView = imageView;
        [imageView release];
    }
    return self;
}


- (void)setSelected:(BOOL)selected animated:(BOOL)animated {

    [super setSelected:selected animated:animated];

    for (UIView *view in self.contentView.subviews) {
        view.backgroundColor = [UIColor clearColor];
    }    
}


@end
