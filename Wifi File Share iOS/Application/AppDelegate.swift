//
//  AppDelegate.swift
//  Wifi File Share iOS
//
//  Created by Tushar Khandaker on 3/29/22.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {



    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        requestToCreateTemplateFolder()
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }
    
    func requestToCreateTemplateFolder() {
        guard let url = ERFileManager.sharedInstance.getURLFor(directoryType: .documentDirectory, subDirectory: nil)
        else {
            return
        }
        print("Folder Created: ",url)
        let _ = ERFileManager.sharedInstance.createFolder(folderName: FOLDER_NAME, directory: url)
    }
}

