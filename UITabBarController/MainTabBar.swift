//
//  MainTabBar.swift
//  UITabBarController
//
//  Created by Uladzislau Daratsiuk on 9/16/18.
//  Copyright © 2018 Uladzislau Daratsiuk. All rights reserved.
//

import UIKit

class MainTabBar: UITabBarController {
    
    private let newsVc = NewsVC()
    private let emailsVc = EmailsVC()
    private let chatVc = ChatVC()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        viewControllers = [createController(title: "News", imageName: "news", vc: newsVc),createController(title: "Emails", imageName: "emails", vc: emailsVc), createController(title: "Chat", imageName: "chat", vc: chatVc)]
    }
    
    private func createController(title: String, imageName: String, vc: UIViewController) -> UINavigationController{
        let recentVC = UINavigationController(rootViewController: vc)
        recentVC.tabBarItem.title = title
        recentVC.tabBarItem.image = UIImage(named: imageName)
        return recentVC
    }

}
