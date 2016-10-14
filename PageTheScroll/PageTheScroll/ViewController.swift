//
//  ViewController.swift
//  PageTheScroll
//
//  Created by Brijrajsinh Gohil on 13/10/16.
//  Copyright © 2016 Brijrajsinh Gohil. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var scrollView: UIScrollView!
    
    var images = [UIImageView]()

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        var contentWidth: CGFloat = 0.0
        var scrollWidth = scrollView.frame.size.width
        
        for x in 0...2 {
            let image = UIImage(named: "icon\(x)")
            let imageView = UIImageView(image: image)
            images.append(imageView)
            
            var newX: CGFloat =  0.0
            
            newX = scrollWidth/2 + scrollWidth * CGFloat(x)
            contentWidth += newX
            
            scrollView.addSubview(imageView)
            
            imageView.frame = CGRect(x: newX - 75, y: (scrollView.frame.height / 2) - 75, width: 150, height: 150)
            
        }
        scrollView.clipsToBounds = false
        scrollView.contentSize = CGSize(width: contentWidth, height: view.frame.size.height)
    }

}

