//
//  AppDelegate.swift
//  Betacraft Launcher macoS
//
//  Created by Jakub on 4/21/20.
//  Copyright © 2020 Kazu. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    lazy var newWindowController = NewWindowController()

    func applicationDidFinishLaunching(_ aNotification: Notification) {
        newWindowController.showWindow(nil)
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }


}

