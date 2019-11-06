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
    
    [self.nowShowingCollectionView registerNib:[UINib nibWithNibName:@"NowShowingCell" bundle:nil] forCellWithReuseIdentifier:@"nowShowing"];
    
    
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
              nil] ;

}


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    
    return self.myMovies.count;
    
}


- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    
    if (collectionView == self.topRatedCollectionView){
        TopRatedMoviesCollectionViewCell * cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"topRated" forIndexPath:indexPath];
        
        NSDictionary *dict = [_myMovies objectAtIndex:indexPath.item];
        
        cell.topRatedImageView.image = [UIImage imageNamed:dict[@"photo"]];
    
        cell.topRatedLabel.text = dict[@"name"];
        
        return cell;
        
    } else{
        NowShowingCollectionViewCell * cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"nowShowing" forIndexPath:indexPath];
        
        NSDictionary *dict2 = [_myMovies objectAtIndex:indexPath.item];
        
        cell.nowShowingImageView.image = [UIImage imageNamed:dict2[@"photo"]];
        
        cell.nowShowingLabel.text = dict2[@"name"];
        
        return cell;
        
    }
        
    
}

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath{
    
    
    
    if (collectionView == self.nowShowingCollectionView) {
        CGRect screenBound = [[UIScreen mainScreen] bounds];
        CGSize screenSize = screenBound.size;
        
        CGFloat computedHeight = screenSize.width / 2;
        CGFloat computedWidth = screenSize.height / 4;
        
        return CGSizeMake(computedWidth, computedHeight);
    }
    
    else{
        CGRect screenBound = [[UIScreen mainScreen] bounds];
        CGSize screenSize = screenBound.size;
        
        CGFloat computedHeight = screenSize.width / 3;
        CGFloat computedWidth = screenSize.height / 4;
        
        return CGSizeMake(computedWidth, computedHeight);
    }
    
    
    
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
