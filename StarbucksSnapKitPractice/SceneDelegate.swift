//
//  SceneDelegate.swift
//  StarbucksSnapKitPractice
//
//  Created by woonKim on 2022/12/19.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        // Use this method to optionally configure and attach the UIWindow `window` to the provided UIWindowScene `scene`.
        // If using a storyboard, the `window` property will automatically be initialized and attached to the scene.
        // This delegate does not imply the connecting scene or session are new (see `application:configurationForConnectingSceneSession` instead).
        
        // 추가 코드
        guard let windowScene = (scene as? UIWindowScene) else { return }
        window = UIWindow(windowScene: windowScene) // SceneDelegate의 프로퍼티에 설정해줌
//        let tabBarController = UITabBarController()
//
//        let homeViewController = UINavigationController(rootViewController: HomeViewController())
//        let payViewController = UINavigationController(rootViewController: PayViewController())
//        let orderViewController = UINavigationController(rootViewController: OtherViewController())
//        let shopViewController = UINavigationController(rootViewController: ShopViewController())
//        let otherViewController = UINavigationController(rootViewController: OtherViewController())
//
//        homeViewController.tabBarItem = UITabBarItem(title: nil, image: UIImage(systemName: "Home"), selectedImage: UIImage(systemName: "HomeSelected"))
//
//        tabBarController.setViewControllers([homeViewController], animated: false)
        
//        if let items = tabBarController.tabBar.items {
//            items[0].image = UIImage(systemName: "Home")
//            items[0].selectedImage = UIImage(systemName: "HomeSelected")
//
//            items[1].image = UIImage(systemName: "Pay")
//            items[1].selectedImage = UIImage(systemName: "PaySelected")
//
//            items[2].image = UIImage(systemName: "Order")
//            items[2].selectedImage = UIImage(systemName: "OrderSelected")
//
//            items[3].image = UIImage(systemName: "Shop")
//            items[3].selectedImage = UIImage(systemName: "ShopSelected")
//
//            items[4].image = UIImage(systemName: "Other")
//            items[4].selectedImage = UIImage(systemName: "OtherSelected")
//        }
        let initialViewController = TabBarController()
        window?.rootViewController = initialViewController // 맨 처음 보여줄 ViewController
        window?.makeKeyAndVisible()
    }

    func sceneDidDisconnect(_ scene: UIScene) {
        // Called as the scene is being released by the system.
        // This occurs shortly after the scene enters the background, or when its session is discarded.
        // Release any resources associated with this scene that can be re-created the next time the scene connects.
        // The scene may re-connect later, as its session was not necessarily discarded (see `application:didDiscardSceneSessions` instead).
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
        // Called when the scene has moved from an inactive state to an active state.
        // Use this method to restart any tasks that were paused (or not yet started) when the scene was inactive.
    }

    func sceneWillResignActive(_ scene: UIScene) {
        // Called when the scene will move from an active state to an inactive state.
        // This may occur due to temporary interruptions (ex. an incoming phone call).
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
        // Called as the scene transitions from the background to the foreground.
        // Use this method to undo the changes made on entering the background.
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
        // Called as the scene transitions from the foreground to the background.
        // Use this method to save data, release shared resources, and store enough scene-specific state information
        // to restore the scene back to its current state.
    }


}

