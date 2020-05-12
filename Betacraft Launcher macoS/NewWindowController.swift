//
//  NewWindowController.swift
//  Betacraft Launcher macoS
//
//  Created by Jakub on 5/2/20.
//  Copyright © 2020 Kazu. All rights reserved.
//

import Cocoa

class NewWindowController: NSWindowController {

    convenience init() {
        self.init(windowNibName: NSNib.Name(rawValue: "Options"))
    }
    
    override func windowDidLoad() {
        super.windowDidLoad()
        
        contentViewController = ViewController()
        // Implement this method to handle any initialization after your window controller's window has been loaded from its nib file.
    }

}
