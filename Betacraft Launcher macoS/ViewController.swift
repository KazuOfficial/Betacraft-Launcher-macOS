//
//  ViewController.swift
//  Betacraft Launcher macoS
//
//  Created by Jakub on 4/21/20.
//  Copyright © 2020 Kazu. All rights reserved.
//

import Cocoa
import WebKit

class ViewController: NSViewController {
    
    @IBOutlet weak var myButton: NSButton!
    @IBOutlet weak var myVersions: NSButton!
    @IBOutlet weak var myWebView: WKWebView!
    let url:URL = URL(string: "https://betacraft.pl/versions/")!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let urlRequest:URLRequest = URLRequest(url: url)
        myWebView.load(urlRequest)
        // Do any additional setup after loading the view.
    }
    
    override var representedObject: Any? {
        didSet {
            // Update the view, if already loaded.
        }
    }
    
    @IBAction func showOptions(sender: AnyObject) {
        print("jes")
    }
    
    @IBAction func showVersions(sender: AnyObject) {
        print("versions")
    }
}
