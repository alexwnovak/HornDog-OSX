//
//  StatusMenuController.swift
//  HornDog
//
//  Created by Novak, Alex on 5/5/17.
//  Copyright © 2017 Novak, Alex. All rights reserved.
//

import Cocoa

class StatusMenuController: NSObject {
    @IBOutlet weak var statusMenu: NSMenu!
    
    let statusItem = NSStatusBar.system().statusItem(withLength: NSVariableStatusItemLength)
    
    override func awakeFromNib() {
        statusItem.menu = statusMenu
        
        let icon = NSImage(named: "statusIcon")
        statusItem.image = icon
        statusItem.menu = statusMenu
    }

    @IBAction func quitClicked(_ sender: NSMenuItem) {
        NSApplication.shared().terminate(self)
    }
}
