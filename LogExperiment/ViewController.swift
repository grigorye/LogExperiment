//
//  ViewController.swift
//  LogExperiment
//
//  Created by Zachary Waldowski on 9/7/16.
//  Copyright © 2016 Big Nerd Ranch. All rights reserved.
//

import UIKit
import Loggy

class ViewController: UIViewController {

    enum Log: LogSubsystem {
        case processing, ui, actions
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        Log.ui.debug("This will only show in Xcode!")
        Log.ui.show("Hello, %@!", "world")
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)

        Activity(label: "stuff").active {
            Log.processing.show("Doin' some work...")

            Activity(label: "more stuff").active {
                Log.processing.error("Things are going bad down here, cap'n!")
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
