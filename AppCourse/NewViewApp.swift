//
//  NewViewApp.swift
//  AppCourse
//
//  Created by Ronan Soares on 25/08/24.


import UIKit

class NewViewApp: UIViewController {
    
    // inicializa os elementos da tela
    let cardImageView = UIImageView()
    let stopButton = CustomButtom(backgroundcolor: .gray, title: "stop")
    let resetButton = CustomButtom(backgroundcolor: .cyan, title: "reset")
    let rulesButton = CustomButtom(backgroundcolor: .blue, title: "rules")
    
    
    
    override func viewDidLoad() { // Configurar propriedades iniciais, como definir dados,                                                      adicionar subviews, ou configurar o layout da view.
        super.viewDidLoad()
        view.backgroundColor = .systemBackground  // fundo de tela do sistema padrão
        configUI()
    }
    
    
    
    func configUI (){
        configCardImage()
        configStopbutton()
        configureResetButton()
        configureRulesButton()
    }
    
    
    func configCardImage(){
        view.addSubview(cardImageView) // arrasta elemento para tela
        cardImageView.translatesAutoresizingMaskIntoConstraints = false  // habilita autolayout
        cardImageView.image = UIImage(named: "joker" )  // linka imagen do assets
        NSLayoutConstraint.activate([  // conjunto de constraint
            cardImageView.widthAnchor.constraint(equalToConstant: 250),
            cardImageView.heightAnchor.constraint(equalToConstant: 250),
            cardImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor), // no centro da view horizontal
            cardImageView.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -75)
                                    ])
    }
    
    func configStopbutton (){
        view.addSubview(stopButton)
        NSLayoutConstraint.activate([  // conjunto de constraint
            stopButton.widthAnchor.constraint(equalToConstant: 260),
            stopButton.heightAnchor.constraint(equalToConstant: 50),
            stopButton.centerXAnchor.constraint(equalTo: view.centerXAnchor), // no centro da view horizontal
            stopButton.topAnchor.constraint(equalTo: cardImageView.bottomAnchor, constant: 30)
                                    ])
    }
    
    func configureResetButton() {
        view.addSubview(resetButton)
        NSLayoutConstraint.activate([
            resetButton.widthAnchor.constraint(equalToConstant: 115),
            resetButton.heightAnchor.constraint(equalToConstant: 50),
            resetButton.leadingAnchor.constraint (equalTo: stopButton.leadingAnchor),
            resetButton.topAnchor.constraint(equalTo: stopButton.bottomAnchor, constant:
                                                20) ] )
    }
    
    func configureRulesButton() {
        view.addSubview(rulesButton)
        rulesButton.addTarget(self, action: #selector(rulesButtonTapped), for: .touchUpInside);           NSLayoutConstraint.activate([
            rulesButton.widthAnchor.constraint(equalToConstant: 115),
            rulesButton.heightAnchor.constraint(equalToConstant: 50),
            rulesButton.leadingAnchor.constraint(equalTo: resetButton.trailingAnchor, constant: 30),
            rulesButton.topAnchor.constraint(equalTo: stopButton.bottomAnchor, constant: 20),
        ])
    }
    @objc func rulesButtonTapped() {
         present(detailViewViewController(), animated: true)
      }}
