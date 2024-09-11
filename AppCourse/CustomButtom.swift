//
//  CustomButtom.swift
//  AppCourse
//
//  Created by Ronan Soares on 29/08/24.
//

import UIKit

class CustomButtom: UIButton { // class personalizada de botao
    
    override init ( frame:CGRect) { // inicializador vazio
        super.init(frame: frame)
        
    }
    
    required init?(coder: NSCoder) {
            fatalError("init(coder:) has not been implemented") // default do sistema
        }
    
    init ( backgroundcolor : UIColor, title: String){    // inicializador personalizado
        super.init (frame: .zero)
        self.backgroundColor = backgroundcolor
        setTitle(title, for: .normal)
        configure()
    }
    
    func configure(){                           // funcao que atribui caracteristicas
        layer.cornerRadius = 8
        titleLabel? .font = .systemFont(ofSize: 19, weight: .bold)
        setTitleColor(.white, for: .normal)
        translatesAutoresizingMaskIntoConstraints = false
    }
    
}
