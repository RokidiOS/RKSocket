//
//  ViewController.swift
//  RKSocket
//
//  Created by chzy on 10/27/2021.
//  Copyright (c) 2021 chzy. All rights reserved.
//

import UIKit
import RKSocket

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        var address = "wss://im-dev.rokid-inc.com/ws/eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX25hbWUiOiJ7XCJjb21wYW55SW5kZXhcIjpcImxpbmdiYW5cIixcInBhc3N3b3JkXCI6XCJSb2tpZEAxMjM0XCIsXCJkZXZpY2VVc2VyTmFtZVwiOlwicWkuY2hlbmdcIixcImdyYW50VHlwZVwiOlwiY29tcGFueVVzZXJcIn0iLCJzY29wZSI6WyJzZXJ2ZXIiXSwiZXhwIjoxNjM1NDM2MDk5LCJqdGkiOiI2MEVGRTlGREYzMDU0OUM3QkYyRDg1N0Q5QTgxMjgwQiIsImF1dGhvcml0aWVzIjpbIioiXSwiY2xpZW50X2lkIjoiYXBwIiwiYXV0aEluZm8iOiJ7XCJhdXRoVHlwZVwiOlwiY29tcGFueVVzZXJcIixcImNvbXBhbnlJZFwiOlwiNzJmZTEzNTQxZmExNDUyYmJkOTBlNDEzNTUzMWEwOTJcIixcImNvbXBhbnlVc2VySWRcIjpcIjJGQUJDNDEzNURBQTRBM0NBRDdBMTk2Q0VCOTE3RkUwXCIsXCJ1bml0SWRcIjpcIkY1OTlBRTcxRTUwQTQ3MzdCQTQ1MUVFRUM5NEYzQkVFXCJ9In0.le_74ToN45giGtAZgFG2H9M3m9718W_QfDXsPWOF0iLLWhD_rKWEzslhJzpIOIXZhPJEeRmZoDMx0VZdtP9xxOuA_-smyu29LG366VnZe7GReLeBP6uKvl60wMAtwvwM2tjHYYSAi-AHEeoBQGQv6ZFr5LXRmel5DzjttBNJqj8"
        RKSocket.share.config(address)
        RKSocket.share.openClient()
        RKSocket.share.delegate = self
        let btn = UIButton(frame: CGRect(x: 100, y: 100, width: 100, height: 30))
        btn.backgroundColor = .red
        view.addSubview(btn)
        btn.addTarget(self, action: #selector(clickAction), for: .touchUpInside)
    }
    
    @objc func clickAction() {

        guard let client  = RKSocket.share.client else { return }
        try? client.send(string: "你好你好你好") 
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

extension ViewController: RKSocketDelegate {
    func rkwebSocket(_ webSocket: RKSocket, didFailWithError error: Error) {
        
    }
    
    func rkwebSocketDidOpen(_ webSocket: RKSocket) {
        
    }
    
    func rkwebSocket(_ webSocket: RKSocket, didCloseWithCode code: Int, reason: String?, wasClean: Bool) {
        
    }
    
    func rkwebSocket(_ webSocket: RKSocket, didReceiveMessage message: Any) {
        print("didReceiveMessageWith message: \(message)")
    }
    
    func rkwebSocket(_ webSocket: RKSocket, didReceiveMessageWith data: Data) {
        
    }
    
    func rkwebSocket(_ webSocket: RKSocket, didReceiveMessageWith string: String) {
        print("didReceiveMessageWith: string " + string)
    }
    
    func rkwebSocket(_ webSocket: RKSocket, didReceivePingWith data: Data?) {
        
    }
    
    func rkwebSocket(_ webSocket: RKSocket, didReceivePong pongData: Data?) {
        
    }
    
    
}
