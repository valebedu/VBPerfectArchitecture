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
    func presentList(identifiers: [String]?, response: HTTPResponse)
    func presentRetrieve(identifiers: [String]?, response: HTTPResponse)
    func presentCreate(identifiers: [String]?, ressource: [Any]?, response: HTTPResponse)
    func presentUpdate(identifiers: [String]?, ressource: [Any]?, response: HTTPResponse)
    func presentDelete(identifiers: [String]?, response: HTTPResponse)
}
