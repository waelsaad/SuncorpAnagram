//
//  PlaygroundViewController.swift
//  Suncorp
//
//  Created by Wael Saad - r00tdvd on 11/9/19 Copyright © 2019. All rights reserved.
//

import UIKit

class PlaygroundViewController: UIViewController {

    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var clearButton: UIButton!
    @IBOutlet weak var checkButton: UIButton!
    @IBOutlet weak var headingImageView: UIImageView!
    @IBOutlet weak var sourceTextField: UITextField!
    @IBOutlet weak var anagramTextField: UITextField!

    var viewModel: PlaygroundiewModel = PlaygroundiewModel(anagramService: Anagram())
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureView()
    }

    private func configureView() {
        sourceTextField.delegate = self
        anagramTextField.delegate = self
        
        //Quick Test To Print To Console
        print(viewModel.isAnagram(word1: "eat", word2: "tea"))
    }
    
    @IBAction func clearButtonTapped(_ sender: Any) {
        sourceTextField.text = .empty
        anagramTextField.text = .empty
        resultLabel.text = "-----------"
    }
    
    @IBAction func checkButtonTapped(_ sender: Any) {
        guard
            let word1 = sourceTextField.text,
            let word2 = anagramTextField.text,
            !word1.isEmpty,
            !word2.isEmpty
            else {
                self.displayError(viewModel.titleOops,
                                  message: viewModel.errorMessage)
                return
        }
        
        resultLabel.text = viewModel.isAnagram(word1: word1, word2: word2).description
    }
}

extension PlaygroundViewController: UITextFieldDelegate {
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        let regex = try! NSRegularExpression(pattern: viewModel.anagramRegEx, options: [])
        let range = regex.rangeOfFirstMatch(in: string, options: [], range: NSRange(location: 0, length: string.count))
        return range.length == string.count
    }
}
