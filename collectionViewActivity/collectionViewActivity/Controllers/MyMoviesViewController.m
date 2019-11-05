//
//  MyMoviesViewController.m
//  collectionViewActivity
//
//  Created by OPSolutions on 05/11/2019.
//  Copyright © 2019 OPSolutions. All rights reserved.
//

#import "MyMoviesViewController.h"
#import "../Cells/Top Rated/TopRatedMoviesCollectionViewCell.h"
#import "../Cells/Now Showing/NowShowingCollectionViewCell.h"

@interface MyMoviesViewController ()

@end

@implementation MyMoviesViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self.topRatedCollectionView registerNib:[UINib nibWithNibName:@"TopRatedMoviesCell" bundle:nil] forCellWithReuseIdentifier:@"topRated"];
    
    
    _myMovies = [[NSArray alloc] initWithObjects:
              @{@"photo" : @"img_luffy",
                @"name" : @"Luffy",
                },
              @{@"photo" : @"img_zoro",
                @"name" : @"Zoro",
                },
              @{@"photo" : @"img_usopp",
                @"name" : @"Usopp",
                },
              @{@"photo" : @"img_sanji",
                @"name" : @"Sanji",
                },
              @{@"photo" : @"img_nami",
                @"name" : @"Nami",
                },
              @{@"photo" : @"img_chopper",
                @"name" : @"Chopper",
                },
              @{@"photo" : @"img_franky",
                @"name" : @"Franky",
                },
              @{@"photo" : @"img_robin",
                @"name" : @"Robin",
                },
              @{@"photo" : @"img_brook",
                @"name" : @"Brook",
                },
              @{@"photo" : @"img_jinbei",
                @"name" : @"Jinbei",
                },nil] ;
    
        

}


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return self.myMovies.count;
}


- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    
    TopRatedMoviesCollectionViewCell * cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"topRated" forIndexPath:indexPath];
    
    NSDictionary *dict = [self.myMovies objectAtIndex:indexPath.item];
    cell.topRatedImageView.image = [UIImage imageNamed:dict[@"photo"]];
    cell.topRatedLabel.text = dict[@"name"];
    
    return cell;
    
}


- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath{
    
    CGRect screenBound = [[UIScreen mainScreen] bounds];
    CGSize screenSize = screenBound.size;
    
    CGFloat computedHeight = screenSize.height;
    CGFloat computedWidth = screenSize.width;
    
    return CGSizeMake(computedWidth, computedHeight);
    
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
