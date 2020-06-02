//
//  VersionWindowController.swift
//  Betacraft Launcher macOS
//
//  Created by Jakub on 5/12/20.
//  Copyright © 2020 Kazu. All rights reserved.
//

import Cocoa

class VersionWindowController: NSWindowController, NSTableViewDataSource, NSTableViewDelegate {
    
    @IBOutlet weak var tableView: NSTableView!
    
    let url = URL(string: "http://betacraft.pl/launcher/assets/list.txt")
    var versions = ["right", "yes", "cool"]
    
    convenience init() {
        self.init(windowNibName: NSNib.Name(rawValue: "VersionWindowController"))
    }
    
    override func windowDidLoad() {
        super.windowDidLoad()
        
        if let url = URL(string: "http://betacraft.pl/launcher/assets/list.txt") {
            do {
                let contents = try String(contentsOf: url)
                print(contents)
            } catch {
                //messagebox
                print("Cannot load version list!")
            }
        }
    }

}
