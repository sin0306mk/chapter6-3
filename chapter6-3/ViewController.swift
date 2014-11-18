//
//  ViewController.swift
//  chapter6-3
//
//  Created by SMB開発部 on 2014/11/18.
//  Copyright (c) 2014年 Sorimachi,corp. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UIWebViewDelegate{
    @IBOutlet weak var myWebView: UIWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        //デリゲート先を設定する
        myWebView.delegate = self
        //MARK : URLリクエスト
        var myURL = NSURL(string: "http://www.apple.com/jp")
        var myURLReq = NSURLRequest(URL: myURL!)
        myWebView.loadRequest(myURLReq)
    }
    
    func webViewDidStartLoad(webView: UIWebView) {
        UIApplication.sharedApplication().networkActivityIndicatorVisible = true
    }
    
    func webViewDidFinishLoad(webView: UIWebView) {
        UIApplication.sharedApplication().networkActivityIndicatorVisible = false
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

