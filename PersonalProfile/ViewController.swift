//
//  ViewController.swift
//  PersonalProfile
//
//  Created by Mateus Leal on 14/08/22.
//

import UIKit

class ViewController: UIViewController {
    private lazy var headerProfile: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var headerTopAnchor: NSLayoutConstraint = {
        if #available(iOS 11, *) {
            return headerProfile.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor)
        }
        return headerProfile.topAnchor.constraint(equalTo: view.topAnchor)
    }()
    
    private lazy var headerProfileImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleToFill
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    private lazy var headerNameProfileLabel: UILabel = {
        let label = UILabel()
        label.font = .boldSystemFont(ofSize: 14)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var headerRoleProfileLabel: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 12)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 0
        return label
    }()
    
    private lazy var headerLocationProfileLabel: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 12)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 0
        return label
    }()
    
    private lazy var headerAboutTitleLabel: UILabel = {
        let label = UILabel()
        label.font = .boldSystemFont(ofSize: 14)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 0
        return label
    }()
    
    private lazy var headerAboutDescriptionLabel: UILabel = {
        let label = UILabel()
        label.font = .italicSystemFont(ofSize: 12)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 0
        return label
    }()
    
    private lazy var hardSkillTitleLabel: UILabel = {
        let label = UILabel()
        label.font = .boldSystemFont(ofSize: 14)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var hardSkillStack: UIStackView = {
        let stack = UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .vertical
        stack.distribution = .fill
        stack.spacing = 4
        return stack
    }()
    
    
    private lazy var hardSkill0Label: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 12)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 0
        return label
    }()
    
    private lazy var hardSkill1Label: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 12)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 0
        return label
    }()
    
    private lazy var hardSkill2Label: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 12)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 0
        return label
    }()
    
    private lazy var hardSkill3Label: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 12)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 0
        return label
    }()
    
    private lazy var softSkillTitleLabel: UILabel = {
        let label = UILabel()
        label.font = .boldSystemFont(ofSize: 14)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var softSkillStack: UIStackView = {
        let stack = UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .vertical
        stack.distribution = .fill
        stack.spacing = 4
        return stack
    }()
    
    private lazy var softSkill0Label: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 12)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 0
        return label
    }()
    
    private lazy var softSkill1Label: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 12)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 0
        return label
    }()
    
    private lazy var softSkill2Label: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 12)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 0
        return label
    }()
    
    private lazy var softSkill3Label: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 12)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 0
        return label
    }()
    
    private lazy var experienceTitleLabel: UILabel = {
        let label = UILabel()
        label.font = .boldSystemFont(ofSize: 14)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var experienceRoleLabel: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 12)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 0
        return label
    }()
    
    private lazy var experienceCompanyLabel: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 12)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 0
        return label
    }()
    
    private lazy var experiencePeriodLabel: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 12)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 0
        return label
    }()
    
    private lazy var experienceLocationLabel: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 12)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 0
        return label
    }()
    
    private lazy var experienceDescriptionLabel: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 12)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 0
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Profile"
        view.backgroundColor = .white
        view.addSubview(headerProfile)
        
        headerProfile.addSubview(headerProfileImageView)
        headerProfile.addSubview(headerNameProfileLabel)
        headerProfile.addSubview(headerRoleProfileLabel)
        headerProfile.addSubview(headerLocationProfileLabel)
        
        headerProfile.addSubview(headerAboutTitleLabel)
        headerProfile.addSubview(headerAboutDescriptionLabel)
        
        view.addSubview(hardSkillTitleLabel)
        view.addSubview(hardSkillStack)
        hardSkillStack.addArrangedSubview(hardSkill0Label)
        hardSkillStack.addArrangedSubview(hardSkill1Label)
        hardSkillStack.addArrangedSubview(hardSkill2Label)
        hardSkillStack.addArrangedSubview(hardSkill3Label)
        
        view.addSubview(softSkillTitleLabel)
        view.addSubview(softSkillStack)
        
        softSkillStack.addArrangedSubview(softSkill0Label)
        softSkillStack.addArrangedSubview(softSkill1Label)
        softSkillStack.addArrangedSubview(softSkill2Label)
        softSkillStack.addArrangedSubview(softSkill3Label)
        softSkillStack.addArrangedSubview(UIView())
        
        view.addSubview(experienceTitleLabel)
        view.addSubview(experienceRoleLabel)
        view.addSubview(experienceCompanyLabel)
        view.addSubview(experiencePeriodLabel)
        view.addSubview(experienceLocationLabel)
        view.addSubview(experienceDescriptionLabel)
        
        NSLayoutConstraint.activate([
            headerTopAnchor,
            headerProfile.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            headerProfile.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            
            headerProfileImageView.topAnchor.constraint(equalTo: headerProfile.topAnchor),
            headerProfileImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            headerProfileImageView.widthAnchor.constraint(equalToConstant: 72),
            headerProfileImageView.heightAnchor.constraint(equalToConstant: 72),
            
            headerNameProfileLabel.topAnchor.constraint(equalTo: headerProfileImageView.topAnchor, constant: 8),
            headerNameProfileLabel.leadingAnchor.constraint(equalTo: headerProfileImageView.trailingAnchor, constant: 8),
            headerNameProfileLabel.trailingAnchor.constraint(lessThanOrEqualTo: headerProfile.trailingAnchor, constant: -8),
            
            headerRoleProfileLabel.topAnchor.constraint(equalTo: headerNameProfileLabel.bottomAnchor, constant: 4),
            headerRoleProfileLabel.leadingAnchor.constraint(equalTo: headerNameProfileLabel.leadingAnchor),
            headerRoleProfileLabel.trailingAnchor.constraint(lessThanOrEqualTo: headerProfile.trailingAnchor, constant: -8),
            
            headerLocationProfileLabel.topAnchor.constraint(equalTo: headerRoleProfileLabel.bottomAnchor, constant: 2),
            headerLocationProfileLabel.leadingAnchor.constraint(equalTo: headerRoleProfileLabel.leadingAnchor),
            headerLocationProfileLabel.trailingAnchor.constraint(lessThanOrEqualTo: headerProfile.trailingAnchor, constant: -8),
            
            headerAboutTitleLabel.topAnchor.constraint(equalTo: headerProfileImageView.bottomAnchor, constant: 8),
            headerAboutTitleLabel.leadingAnchor.constraint(equalTo: headerProfile.leadingAnchor, constant: 16),
            headerAboutTitleLabel.trailingAnchor.constraint(lessThanOrEqualTo: headerProfile.trailingAnchor, constant: -8),
            
            headerAboutDescriptionLabel.topAnchor.constraint(equalTo: headerAboutTitleLabel.bottomAnchor, constant: 4),
            headerAboutDescriptionLabel.leadingAnchor.constraint(equalTo: headerProfile.leadingAnchor, constant: 16),
            headerAboutDescriptionLabel.trailingAnchor.constraint(lessThanOrEqualTo: headerProfile.trailingAnchor, constant: -16),
            headerAboutDescriptionLabel.bottomAnchor.constraint(equalTo: headerProfile.bottomAnchor, constant: -4),
            
            hardSkillTitleLabel.topAnchor.constraint(equalTo: headerProfile.bottomAnchor, constant: 16),
            hardSkillTitleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            hardSkillTitleLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            
            hardSkillStack.topAnchor.constraint(equalTo: hardSkillTitleLabel.bottomAnchor, constant: 8),
            hardSkillStack.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            hardSkillStack.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            
            softSkillTitleLabel.topAnchor.constraint(equalTo: hardSkillStack.bottomAnchor, constant: 8),
            softSkillTitleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            softSkillTitleLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            
            softSkillStack.topAnchor.constraint(equalTo: softSkillTitleLabel.bottomAnchor, constant: 8),
            softSkillStack.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            softSkillStack.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            
            experienceTitleLabel.topAnchor.constraint(equalTo: softSkillStack.bottomAnchor, constant: 16),
            experienceTitleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            experienceTitleLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            
            experienceRoleLabel.topAnchor.constraint(equalTo: experienceTitleLabel.bottomAnchor, constant: 8),
            experienceRoleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            experienceRoleLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            
            experienceCompanyLabel.topAnchor.constraint(equalTo: experienceRoleLabel.bottomAnchor, constant: 4),
            experienceCompanyLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            experienceCompanyLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            
            experiencePeriodLabel.topAnchor.constraint(equalTo: experienceCompanyLabel.bottomAnchor, constant: 4),
            experiencePeriodLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            experiencePeriodLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            
            experienceLocationLabel.topAnchor.constraint(equalTo: experiencePeriodLabel.bottomAnchor, constant: 4),
            experienceLocationLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            experienceLocationLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            
            experienceDescriptionLabel.topAnchor.constraint(equalTo: experienceLocationLabel.bottomAnchor, constant: 4),
            experienceDescriptionLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            experienceDescriptionLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
        ])
        
        headerProfileImageView.image = UIImage(named: "profile_picture")
        headerProfileImageView.layer.cornerRadius = 72/2
        headerProfileImageView.clipsToBounds = true
        
        headerNameProfileLabel.text = "Mateus Leal"
        headerRoleProfileLabel.text = "Desenvolvedor iOS"
        headerLocationProfileLabel.text = "Working remotly"
        headerAboutTitleLabel.text = "Sobre mim"
        headerAboutDescriptionLabel.text = "Sou desenvolvedor de software com mais de 6 anos de experiencia. Experiencia como desenvolvedor, analista, tester e como scrum master"
        
        hardSkillTitleLabel.text = "Hard Skill"
        
        hardSkill0Label.text = "Swift"
        hardSkill1Label.text = "View code"
        hardSkill2Label.text = "MVVM"
        hardSkill2Label.text = "VIP - Clean Swift"
        
        softSkillTitleLabel.text = "Soft Skill"
        
        softSkill0Label.text = "Comunicação"
        softSkill1Label.text = "Proatividade"
        softSkill2Label.text = "Foco no cliente"
        softSkill3Label.text = "Liderança"
        
        experienceTitleLabel.text = "Experiência"
        experienceRoleLabel.text = "iOS Engineer"
        experienceCompanyLabel.text = "Zup Innovation"
        experiencePeriodLabel.text = "Julho 2022 - Presente"
        experienceLocationLabel.text = "Joinville Santa Catarina"
        experienceDescriptionLabel.text = "Atuo no desenvolvimento do projeto Iti, sendo responsável por implementar novas features, e mantar o produto. Participei da concepção de negócios do produto de empréstimos, e ajudei a continuar e melhorar a arquitetura VIP já utilizada na equipe. O projeto tinha testes unitários e de snapshot mantendo um padrão de mais de 80% de cobertura de código. Ajudei a fazer treinamentos sobre injeção de dependência, testes unitários, e treinamento de ferramentas internas para que implementavam o Design System do Iti e outras ferramentas de gerenciamento de dependencias no swift."
        
        
        
    }
}
