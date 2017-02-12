//
//  VabePresenter.swift
//  VabeArchitecture
//
//  Created by Valentin Bercot on 12/02/2017.
//
//

public protocol VabePresenter
{
    weak var output: VabeController! { get set }
}
