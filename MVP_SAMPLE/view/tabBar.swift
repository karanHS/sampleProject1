//
//  tabBar.swift
//  MVP_SAMPLE
//
//  Created by HappySanz Tech on 29/09/20.
//  Copyright © 2020 HappySanz Tech. All rights reserved.
//

import UIKit

class tabBar: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        setTabBarItems()
    }
    
    func setTabBarItems(){

         let myTabBarItem1 = (self.tabBar.items?[0])! as UITabBarItem
         myTabBarItem1.image = UIImage(named: "widget_icons-3")?.withRenderingMode(UIImage.RenderingMode.alwaysOriginal)
         myTabBarItem1.selectedImage = UIImage(named: "widget_icons-3 ")?.withRenderingMode(UIImage.RenderingMode.alwaysOriginal)
         myTabBarItem1.title = ""
         myTabBarItem1.imageInsets = UIEdgeInsets(top: 6, left: 0, bottom: -6, right: 0)

         let myTabBarItem2 = (self.tabBar.items?[1])! as UITabBarItem
         myTabBarItem2.image = UIImage(named: "widget_icons-3")?.withRenderingMode(UIImage.RenderingMode.alwaysOriginal)
         myTabBarItem2.selectedImage = UIImage(named: "widget_icons-3")?.withRenderingMode(UIImage.RenderingMode.alwaysOriginal)
         myTabBarItem2.title = ""
         myTabBarItem2.imageInsets = UIEdgeInsets(top: 6, left: 0, bottom: -6, right: 0)


         let myTabBarItem3 = (self.tabBar.items?[2])! as UITabBarItem
         myTabBarItem3.image = UIImage(named: "widget_icons-3")?.withRenderingMode(UIImage.RenderingMode.alwaysOriginal)
         myTabBarItem3.selectedImage = UIImage(named: "widget_icons-3")?.withRenderingMode(UIImage.RenderingMode.alwaysOriginal)
         myTabBarItem3.title = ""
         myTabBarItem3.imageInsets = UIEdgeInsets(top: 6, left: 0, bottom: -6, right: 0)

         let myTabBarItem4 = (self.tabBar.items?[3])! as UITabBarItem
         myTabBarItem4.image = UIImage(named: "widget_icons-3")?.withRenderingMode(UIImage.RenderingMode.alwaysOriginal)
         myTabBarItem4.selectedImage = UIImage(named: "widget_icons-3")?.withRenderingMode(UIImage.RenderingMode.alwaysOriginal)
         myTabBarItem4.title = ""
         myTabBarItem4.imageInsets = UIEdgeInsets(top: 6, left: 0, bottom: -6, right: 0)

    }
    
}
