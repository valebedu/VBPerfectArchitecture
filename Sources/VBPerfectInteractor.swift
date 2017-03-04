//
//  VBPerfectInteractor.swift
//  VBPerfectArchitecture
//
//  Created by Valentin Bercot on 12/02/2017.
//
//

/**
 Defines a `VBPerfectInteractor` requirements. The interactor goal is to fetch data from database and do the logic work.
 
 - authors: Valentin Bercot
 */
public protocol VBPerfectInteractor
{
    /**
     Interactor `output` in order to complete controller interactor presenter cycle.
     */
    var output: VBPerfectPresenter! { get set }
}
