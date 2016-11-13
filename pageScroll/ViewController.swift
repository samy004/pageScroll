//
//  ViewController.swift
//  pageScroll
//
//  Created by abdessamad najdi on 13/11/2016.
//  Copyright © 2016 najdi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    var images = [UIImageView]()

    //override func viewDidLoad() {
       // super.viewDidLoad()
//}
    override func viewDidAppear(_ animated: Bool) {
        var contentWidth: CGFloat = 0.0
        let scrollWidth = scrollView.frame.size.width
        
        print("scrollview: \(scrollView.frame.size.width)")
        
        for x in 0...2 {
            let image = UIImage(named:"icon\(x).png")
            let imageView = UIImageView(image: image)
            images.append(imageView)
            
            var newX: CGFloat = 0
            
            newX = scrollWidth + scrollWidth * CGFloat(x)
            
            contentWidth += newX
            
            scrollView.addSubview(imageView)
            
            imageView.frame = CGRect(x:newX - 210, y: (scrollView.frame.size.height / 2) - 75, width: 150, height: 150)
        }
        
       scrollView.clipsToBounds = false
        
        scrollView.contentSize = CGSize(width: contentWidth, height: view.frame.size.height)
        
    }
    }

