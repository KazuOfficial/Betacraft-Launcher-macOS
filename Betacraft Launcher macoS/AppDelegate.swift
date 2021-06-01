//
//  AppDelegate.swift
//  Betacraft Launcher MacOS
//
//  Created by Jakub on 6/1/21.
//  Copyright © 2021 Kazu. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    var downloadManager = DownloadManager()

    func applicationDidFinishLaunching(_ aNotification: Notification) {
        
        downloadManager.Init()
        // Insert code here to initialize your application
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }


}

