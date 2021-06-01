//
//  ViewController.swift
//  Betacraft Launcher MacOS
//
//  Created by Jakub on 6/1/21.
//  Copyright © 2021 Kazu. All rights reserved.
//

import Cocoa
import WebKit

class ViewController: NSViewController {

    @IBOutlet var webView: WKWebView!

    override func viewDidLoad() {
        super.viewDidLoad()
        let url = URL(string: "https://betacraft.pl/versions/")
        let req = URLRequest(url: url!)
        webView.load(req)

        // Do any additional setup after loading the view.
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }

    @IBAction func Play(_ sender: NSButton) {
        let task = Process()
        task.launchPath = "/Users/jakub/Documents/bcwrapper.jar"
        task.arguments = ["java"]
        task.launch()
    }
}

