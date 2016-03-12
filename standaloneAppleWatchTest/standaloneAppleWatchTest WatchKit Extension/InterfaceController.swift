//
//  InterfaceController.swift
//  standaloneAppleWatchTest WatchKit Extension
//
//  Created by Enkhjargal Gansukh on 3/10/16.
//  Copyright © 2016 Enkhjargal Gansukh. All rights reserved.
//

import WatchKit
import WatchConnectivity
import Foundation

class InterfaceController: WKInterfaceController, WCSessionDelegate{
    
    @IBAction func clickedSendButton() {
        self.sendMessage()
    }
    var session = WCSession.defaultSession()
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
        print("Started Apple Watch")
        if (WCSession.isSupported()) {
            session.delegate = self
            session.activateSession()
            print("WatchConnectivity Supported")
        }else{
            print("WatchConnectivity not Supported!!!")
        }
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    func sendMessage(){
        let message = ["greeting" : "Hello from Jagaa Watch"]
        if session.reachable {
            session.sendMessage(message,
                replyHandler: { replyData in
                    // handle reply from iPhone app here
                    print(replyData)
                }, errorHandler: { error in
                    // catch any errors here
                    print(error)
            })
        } else {
            // when the iPhone is not connected via Bluetooth
        }
    }
}
