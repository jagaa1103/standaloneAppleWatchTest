//
//  ViewController.swift
//  standaloneAppleWatchTest
//
//  Created by Enkhjargal Gansukh on 3/10/16.
//  Copyright © 2016 Enkhjargal Gansukh. All rights reserved.
//

import UIKit
import WatchConnectivity

class ViewController: UIViewController, WCSessionDelegate{

    private let session: WCSession? = WCSession.isSupported() ? WCSession.defaultSession() : nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        if WCSession.isSupported() {
            WCSession.defaultSession().delegate = self
            WCSession.defaultSession().activateSession()
            print("WatchConnectivity Supported")
        }
//        do {
////            try WCSession.defaultSession().updateApplicationContext(["greeting" : "Hello Jagaa"])
//            try sendMessage()
//        }
//        catch {
//            print("WatchConnectivity cannot update ApplicationContext")
//        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func sendMessage(){
        let message = ["greeting" : "Hello Jagaa"]
        if WCSession.defaultSession().reachable {
            WCSession.defaultSession().sendMessage(message,
                replyHandler: { replyData in
                    // handle reply from iPhone app here
                    print(replyData)
                }, errorHandler: { error in
                    // catch any errors here
                    print(error)
            })
        } else {
            // when the iPhone is not connected via Bluetooth
            print("your watch is not connected")
        }
    }
    
    func session(session: WCSession, didReceiveMessage message: [String : AnyObject], replyHandler: ([String : AnyObject]) -> Void) {
            print(message)
    }

}

