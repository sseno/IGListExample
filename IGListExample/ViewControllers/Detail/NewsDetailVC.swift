//
//  NewsDetailVC.swift
//  IGListExample
//
//  Created by Rohmat Suseno on 02/04/20.
//  Copyright © 2020 Rohmts. All rights reserved.
//

import UIKit

class NewsDetailVC: BaseViewController {
    
    private lazy var tableView: UITableView = {
        let tv = UITableView()
        tv.dataSource = self
        tv.backgroundColor = .white
        tv.separatorStyle = .none
        tv.register(UINib(nibName: String(describing: NewsDetailHeaderCell.self), bundle: nil), forCellReuseIdentifier: "NewsDetailHeaderCell")
        return tv
    }()
    
    private var footerView: NewsFooterView!
    
    var data: News?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initSwipeToBack()
        setupFooterView()
        setupView()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        setupNavBar()
    }
    
    private func setupView() {
        self.view.addSubview(tableView)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            tableView.topAnchor.constraint(equalTo: view.topAnchor),
            tableView.bottomAnchor.constraint(equalTo: footerView.topAnchor),
        ])
    }
    
    private func setupNavBar() {
        self.navigationController?.navigationBar.barStyle = .default
        setNavTitle(withTitle: "News", titleColor: .black)
        self.navigationController?.navigationBar.barTintColor = .white
        setupLeftBackBarButtonItems(barButtonType: .backButton)
        setupRightBackBarButtonItems(barButtonType: .shareButton)
    }
    
    private func setupFooterView() {
        footerView = UINib(nibName: "NewsFooterView", bundle: nil).instantiate(withOwner: nil, options: nil).first as? NewsFooterView
        view.addSubview(footerView)
        footerView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            footerView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            footerView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            footerView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            footerView.heightAnchor.constraint(equalToConstant: 70),
        ])
    }
    
    deinit {
        self.navigationController?.interactivePopGestureRecognizer?.delegate = nil
    }
}

// MARK: - UITableViewDataSource
extension NewsDetailVC: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "NewsDetailHeaderCell", for: indexPath) as! NewsDetailHeaderCell
        cell.headerImageView?.image = data?.image
        cell.titleLabel.text = data?.title
        cell.selectionStyle = .none
        return cell
    }
}
