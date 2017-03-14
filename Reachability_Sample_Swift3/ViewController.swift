//
//  ViewController.swift
//  Reachability Sample
//
//  Created by Ashley Mills on 22/09/2014.
//  Copyright (c) 2014 Joylord Systems. All rights reserved.
//

import UIKit
//import Reachability

class ViewController: UIappViewController, ReachabilityStatusDelegate {
    
    @IBOutlet weak var networkStatus: UILabel!
    @IBOutlet weak var hostNameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        reachabilityDelegate = self
    }
    
    @IBAction func checkInternet(_ sender: Any) {
        
        // Start reachability without a hostname intially
        setupReachability("www.google.com", useClosures: true)
        startNotifier()
    }
    func reachabilityNetworkStatus(_ statusString: String?, statusDescription: String?, reachability: Reachability?) {
        
        if (reachability?.isReachableViaWiFi)! {
            networkStatus.textColor = .green
        }
        else if (reachability?.isReachableViaWWAN)! {
            networkStatus.textColor = .red
        }
        else {
            networkStatus.textColor = .orange
        }
        networkStatus.text = reachability?.currentReachabilityString
        
        
    }
    func showHostName(_ hostNameString: String?) {
        
        hostNameLabel.text = hostNameString
    }
    override func didReceiveMemoryWarning() {
        
    }
    
}



