//
//  ViewController.swift
//  PragmaticTweets
//
//  Created by Jason Hagglund on 6/25/15.
//  Copyright © 2015 Jason Hagglund. All rights reserved.
//

import UIKit
import Social

public class ViewController: UIViewController {
    
    @IBOutlet public weak var twitterWebView: UIWebView!
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        reloadTweets()
    }

    public override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func handleTweetButtonTapped(sender: UIButton) {
        if SLComposeViewController.isAvailableForServiceType(SLServiceTypeTwitter){
            let tweetVC = SLComposeViewController (forServiceType: SLServiceTypeTwitter)            
            let message = NSLocalizedString(
                "I just finished the first project in iOS 8 SDK Development. #pragsios8",
                comment:"")
            tweetVC.setInitialText(message)
            presentViewController(tweetVC, animated: true, completion: nil)
        } else {
            print ("Can't send tweet")
        }
    }
    
    @IBAction func handleShowMyTweetsTapped(sender: UIButton) {
        reloadTweets()
    }
    
    func reloadTweets() {
        twitterWebView.loadRequest(NSURLRequest (URL: NSURL (string: "http://www.twitter.com/DeployMonkey")!))
    }
    
}

