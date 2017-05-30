//
//  ViewController.swift
//  clientNodeJS
//
//  Created by HungNV on 5/29/17.
//  Copyright © 2017 HungNV. All rights reserved.
//

import UIKit
import SocketIO

class ViewController: UIViewController {
    @IBOutlet weak var txtMessage: UITextField!

    let socket = SocketIOClient(socketURL: URL(string: "http://localhost:4000")!, config: [.log(true), .forcePolling(true)])
    
    override func viewDidLoad() {
        super.viewDidLoad()
        socket.connect()
    }
    
    @IBAction func actSend(_ sender: Any) {
        if let name = txtMessage.text {
            socket.emit("langnghe", with: ["\(name) xin chao cac ban!"])
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

