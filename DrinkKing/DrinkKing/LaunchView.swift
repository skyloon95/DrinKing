//
//  LaunchView.swift
//  DrinkKing
//
//  Created by 모설아 on 06/11/2019.
//  Copyright © 2019 Snow. All rights reserved.
//

import UIKit

class LaunchView: UIViewController {

    @IBOutlet weak var backgroundGradientView: UIView!
    
    @IBOutlet var appIcon: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Create a gradient layer.
        let gradientLayer = CAGradientLayer()
        // Set the size of the layer to be equal to size of the display.
        gradientLayer.frame = view.bounds
        // Set an array of Core Graphics colors (.cgColor) to create the gradient.
        // This example uses a Color Literal and a UIColor from RGB values.
        gradientLayer.colors = [#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1).cgColor, #colorLiteral(red: 0.4156862745, green: 0.5294117647, blue: 0.7176470588, alpha: 1).cgColor]
        // Rasterize this static layer to improve app performance.
        gradientLayer.shouldRasterize = true
        // Apply the gradient to the backgroundGradientView.
        backgroundGradientView.layer.addSublayer(gradientLayer)
    }

    override var shouldAutorotate: Bool {
        return false
    }


}
