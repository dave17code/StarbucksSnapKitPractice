//
//  TabBarController.swift
//  StarbucksSnapKitPractice
//
//  Created by woonKim on 2022/12/22.
//

import UIKit

class TabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        let home = HomeViewController()
        let pay = PayViewController()
        let order = OrderViewController()
        let shop = ShopViewController()
        let other = OtherViewController()
        
        home.tabBarItem = UITabBarItem(title: "Home", image: UIImage(systemName: "homekit"), selectedImage: UIImage(systemName: "homekit.fill"))
        
        pay.tabBarItem = UITabBarItem(title: "Pay", image: UIImage(systemName: "creditcard"), selectedImage: UIImage(systemName: "creditcard.fill"))
        
        order.tabBarItem = UITabBarItem(title: "Order", image: UIImage(systemName: "cup.and.saucer"), selectedImage: UIImage(systemName: "cup.and.saucer.fill"))
        
        shop.tabBarItem = UITabBarItem(title: "Shop", image: UIImage(systemName: "handbag"), selectedImage: UIImage(systemName: "handbag.fill"))
        
        other.tabBarItem = UITabBarItem(title: "Other", image: UIImage(systemName: "circle.dotted"), selectedImage: UIImage(systemName: "circle.dotted.fill"))
        
        self.viewControllers = [home, pay, order, shop, other]
        
        UITabBar.appearance().tintColor = UIColor.systemGreen
    }
}
