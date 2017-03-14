//
//  Protocols.swift
//  Reachability_Sample_Swift3
//
//  Created by Pushpam Group on 14/03/17.
//  Copyright © 2017 Pushpam Group. All rights reserved.
//

import Foundation

protocol ReachabilityStatusDelegate {
    
    func reachabilityNetworkStatus(_ statusString: String?,statusDescription: String?, reachability: Reachability?)
    func showHostName(_ hostNameString: String?)
 
}
