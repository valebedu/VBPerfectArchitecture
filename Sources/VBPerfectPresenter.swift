//
//  VBPerfectPresenter.swift
//  VBPerfectArchitecture
//
//  Created by Valentin Bercot on 12/02/2017.
//
//

/**
 Defines a `VBPerfectPresenter` requirements. The presenter goal is to present data fetched and do the localization work, format work.
 
 - authors: Valentin Bercot
 */
public protocol VBPerfectPresenter
{
    /**
     Presenter `output` in order to complete controller interactor presenter cycle.
     
     This output is weak because it's the last member of the cycle.
     */
    weak var output: VBPerfectController! { get set }
}
