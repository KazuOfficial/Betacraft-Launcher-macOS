//
//  FileInitialization.swift
//  Betacraft Launcher MacOS
//
//  Created by Jakub on 6/1/21.
//  Copyright © 2021 Kazu. All rights reserved.
//

import Cocoa

class DownloadManager {
    let applicationDirectory = FileManager.default.urls(for: .applicationDirectory,
                                                        in: .userDomainMask)[0]
    func Init() {
        DownloadFile(urlArg: "https://files.betacraft.pl/improvedjsons/bcwrapper-1.0.1-pre3.jar", fileNameArg: "bcwrapper.jar")
        DownloadFile(urlArg: "https://launcher.mojang.com/v1/objects/43db9b498cb67058d2e12d394e6507722e71bb45/client.jar", fileNameArg: "b1.7.3.jar")
        DownloadFile(urlArg: "https://files.betacraft.pl/launcher/assets/natives-osx.zip", fileNameArg: "natives-osx.zip")
        DownloadFile(urlArg: "https://files.betacraft.pl/launcher/assets/libs-osx.zip", fileNameArg: "libs-osx.zip")
    }
    
    func DownloadFile(urlArg: String, fileNameArg: String) {
        let url = URL(string: urlArg)!
        let fileName = applicationDirectory.appendingPathComponent(fileNameArg)
        
        URLSession.shared.downloadTask(with: url) { (tempFileUrl, response, error) in
            if let imageTempFileUrl = tempFileUrl {
                do {
                    let imageData = try Data(contentsOf: imageTempFileUrl)
                    
                    try imageData.write(to: fileName)
                } catch {
                    print("Error")
                }
            }
            }.resume()
    }
}
