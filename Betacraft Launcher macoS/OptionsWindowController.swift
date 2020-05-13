//
//  OptionsWindowController.swift
//  Betacraft Launcher macoS
//
//  Created by Jakub on 5/12/20.
//  Copyright © 2020 Kazu. All rights reserved.
//

import Cocoa

class OptionsWindowController: NSWindowController {

    @IBOutlet weak var argsText: NSTextFieldCell!
    convenience init() {
        self.init(windowNibName: NSNib.Name(rawValue: "OptionsWindowController"))
    }
    
    override func windowDidLoad() {
        super.windowDidLoad()
        
        argsText.stringValue = "-Xmx512M"

        // Implement this method to handle any initialization after your window controller's window has been loaded from its nib file.
    }
    
}
