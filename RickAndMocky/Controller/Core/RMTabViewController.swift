//
//  ViewController.swift
//  RickAndMocky
//
//  Created by victor kabike on 2022/12/27.
//

import UIKit

final class RMTabViewController : UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupTabs()
    }
    
   private func setupTabs(){
       let RMCharacterVC = RMCharacterViewController()
       let RMLoctionVC = RMLocationViewController()
       let RMEpisodeVC = RMEpisodeViewController()
       let RMSettingVC = RMSettiingViewController()
       
       RMCharacterVC.navigationItem.largeTitleDisplayMode = .automatic
       RMLoctionVC.navigationItem.largeTitleDisplayMode = .automatic
       RMEpisodeVC.navigationItem.largeTitleDisplayMode = .automatic
       RMSettingVC.navigationItem.largeTitleDisplayMode = .automatic
       
       
       let nav1 = UINavigationController(rootViewController: RMCharacterVC)
       let nav2 = UINavigationController(rootViewController: RMLoctionVC)
       let nav3 = UINavigationController(rootViewController: RMEpisodeVC)
       let nav4 = UINavigationController(rootViewController: RMSettingVC)
       
       nav1.tabBarItem = UITabBarItem(title: "Character",
                                      image:UIImage(systemName: "person"),
                                      tag: 1)
       nav2.tabBarItem = UITabBarItem(title: "Location",
                                      image: UIImage(systemName: "globe"),
                                      tag: 2)
       nav3.tabBarItem = UITabBarItem(title: "Episodes",
                                      image: UIImage(systemName: "tv"),
                                      tag: 3)
       nav4.tabBarItem = UITabBarItem(title: "Settings",
                                      image: UIImage(systemName: "gear"),
                                      tag: 4)
       
       for nav in [nav1, nav2, nav3, nav4] {
           nav.navigationBar.prefersLargeTitles = true
       }
       setViewControllers([nav1,nav2,nav3,nav4],
                          animated: true)
        
    }


}

