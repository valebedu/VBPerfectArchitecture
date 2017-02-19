//
//  VabePresenter.swift
//  VabeArchitecture
//
//  Created by Valentin Bercot on 12/02/2017.
//
//

/**
 Defines a `VabePresenter` requirements. The presenter goal is to present data fetched and do the localization work, format work.
 
 - authors: Valentin Bercot
 */
public protocol VabePresenter
{
    /**
     Presenter `output` in order to complete controller interactor presenter cycle.
     
     This output is weak because it's the last member of the cycle.
     */
    weak var output: VabeController! { get set }
}
