//
//  QuoteTableViewController.swift
//  Simpsons
//
//  Created by Kairzhan Kural on 9/29/20.
//  Copyright © 2020 Kairzhan Kural. All rights reserved.
//

import UIKit

class QuoteTableViewController: UITableViewController {
    
    private var viewModel: QuoteViewModelProtocol! {
        didSet {
            viewModel.fetchSimpsons {
                DispatchQueue.main.async {
                    self.tableView.reloadData()
                }
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewModel = QuoteViewModel()
    }
    
    @IBAction func showNextOne(_ sender: UIButton) {
        viewModel.fetchSimpsons {
            DispatchQueue.main.async {
                self.tableView.reloadData()
            }
        }
    }
    
    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        viewModel.numberOfRows() ?? 0
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! QuoteTableViewCell
        
        let cellViewModel = viewModel.cellViewModel(for: indexPath)
        cell.viewModel = cellViewModel
        
        return cell
    }
    
    // MARK: - Table view delegate
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        UIScreen.main.bounds.height - 30
    }
}
