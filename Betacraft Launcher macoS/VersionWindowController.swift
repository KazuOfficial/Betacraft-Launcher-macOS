//
//  VersionWindowController.swift
//  Betacraft Launcher macOS
//
//  Created by Jakub on 5/12/20.
//  Copyright © 2020 Kazu. All rights reserved.
//

import Cocoa

class VersionWindowController: NSWindowController {
    
    @IBOutlet weak var myVersionsColumn: NSTableCellView!
    @IBOutlet weak var myVersionsList: NSTableView!
    var versions = ["shit"]
    let url = URL(string: "http://betacraft.pl/launcher/assets/list.txt")
    
    convenience init() {
        self.init(windowNibName: NSNib.Name(rawValue: "VersionWindowController"))
    }
    
    override func windowDidLoad() {
        super.windowDidLoad()
        if let url = URL(string: "http://betacraft.pl/launcher/assets/list.txt") {
            do {
                let contents = try String(contentsOf: url)
                versions.append(contents)
                print(contents)
            } catch {
                //messagebox
                print("Cannot load version list!")
            }
        }
        
        print(versions)
    }
    
    func numberOfRows(myVersionsList: NSTableView) -> Int {
        return versions.count
    }
    
}
