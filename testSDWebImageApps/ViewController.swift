//
//  ViewController.swift
//  testSDWebImageApps
//
//  Created by Alexandre Podlewski on 13/11/2021.
//

import UIKit
import SDWebImage

class ViewController: UIViewController {

    private let imageView = UIImageView()

    override func viewDidLoad() {
        super.viewDidLoad()

        view.addSubview(imageView)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        imageView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true
        imageView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor).isActive = true
        imageView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor).isActive = true

        imageView.contentMode = .scaleAspectFit
    }

    // MARK: - ViewController

    func configure(with url: URL?) {
        imageView.sd_setImage(with: url)
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        configure(with: URL(string: "https://raw.githubusercontent.com/SDWebImage/SDWebImage/master/SDWebImage_logo.png"))
    }
}

