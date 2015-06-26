//
//  ViewController.swift
//  PragmaticTweets
//
//  Created by Jason Hagglund on 6/25/15.
//  Copyright © 2015 Jason Hagglund. All rights reserved.
//

import UIKit
import Social

class ViewController: UIViewController {
    
    @IBOutlet weak var twitterWebView: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func handleTweetButtonTapped(sender: UIButton) {
        if SLComposeViewController.isAvailableForServiceType(SLServiceTypeTwitter){
            let tweetVC = SLComposeViewController (forServiceType: SLServiceTypeTwitter)
            tweetVC.setInitialText("I just finished the first project in iOS 8 SDK Development. #pragsios8")
            presentViewController(tweetVC, animated: true, completion: nil)
        } else {
            print ("Can't send tweet")
        }
    }
    
    @IBAction func handleShowMyTweetsTapped(sender: UIButton) {
        twitterWebView.loadRequest(NSURLRequest (URL:
            NSURL (string: "http://www.twitter.com/DeployMonkey")!))
    }
    
}

