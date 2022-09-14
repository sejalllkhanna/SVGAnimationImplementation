//
//  ViewController.swift
//  SVGAnimationInWebView
//
//  Created by Sejal Khanna on 21/04/22.
//

import UIKit
import WebKit
import SVGKit

class ViewController: UIViewController, WKUIDelegate {
    
    @IBOutlet weak var WebView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let myURL = URL(string:"https://www.apple.com")
        let myRequest = URLRequest(url: myURL!)
        WebView.load(myRequest)
    
        let path: String = (Bundle.main.path(forResource: "undraw_cookie_love_re_lsjh", ofType: "svg")!)
        let url: NSURL = NSURL.fileURL(withPath: path) as NSURL
        let request: NSURLRequest = NSURLRequest(url: url as URL)
        WebView.load(request as URLRequest)
    }
       override func loadView() {
         let webConfiguration = WKWebViewConfiguration()
         WebView = WKWebView(frame: .zero, configuration: webConfiguration)
         WebView.uiDelegate = self
         view = WebView
      }
}

