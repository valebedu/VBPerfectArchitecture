//
//  VabeRessourcePresenter.swift
//  VabeArchitecture
//
//  Created by Valentin Bercot on 12/02/2017.
//
//

import PerfectHTTP

public protocol VabeRessourcePresenter: VabePresenter
{
    func presentList(ressources: [Any]?, response: HTTPResponse)
    func presentRetrieve(ressource: Any?, response: HTTPResponse)
    func presentCreate(ressource: Any?, response: HTTPResponse)
    func presentUpdate(ressource: Any?, response: HTTPResponse)
    func presentDelete(ressource: Any?, response: HTTPResponse)
}
