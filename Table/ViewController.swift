//
//  ViewController.swift
//  Table
//
//  Created by Srivatsan Ramesh on 29/07/15.
//  Copyright (c) 2015 Flat Earth. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UISearchBarDelegate {

    @IBOutlet weak var searchBar: UISearchBar!
    var searchText : String = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        searchBar.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func searchBarSearchButtonClicked( searchBar: UISearchBar)
    {
        println("clicked")
        searchText = searchBar.text
        self.performSegueWithIdentifier("resultstable",sender:self)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        var DestViewController = segue.destinationViewController as! CollectionViewController
        DestViewController.LabelText = searchText
    }
}

