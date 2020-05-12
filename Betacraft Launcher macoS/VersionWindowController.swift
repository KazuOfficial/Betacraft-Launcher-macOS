//
//  VersionWindowController.swift
//  Betacraft Launcher macoS
//
//  Created by Jakub on 5/12/20.
//  Copyright © 2020 Kazu. All rights reserved.
//

import Cocoa

class VersionWindowController: NSWindowController {

    convenience init() {
        self.init(windowNibName: NSNib.Name(rawValue: "VersionWindowController"))
    }
    
    override func windowDidLoad() {
        super.windowDidLoad()

        // Implement this method to handle any initialization after your window controller's window has been loaded from its nib file.
    }
    
}
