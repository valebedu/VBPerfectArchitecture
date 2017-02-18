//
//  VabeRessourceInteractor.swift
//  VabeArchitecture
//
//  Created by Valentin Bercot on 12/02/2017.
//
//

import PerfectHTTP

public protocol VabeRessourceInteractor: VabeInteractor
{
    func fetchList(identifiers: [String: Any]?, response: HTTPResponse)
    func fetchRetrieve(identifiers: [String: Any]?, response: HTTPResponse)
    func fetchCreate(identifiers: [String: Any]?, ressource: Any?, response: HTTPResponse)
    func fetchUpdate(identifiers: [String: Any]?, ressource: Any?, response: HTTPResponse)
    func fetchDelete(identifiers: [String: Any]?, response: HTTPResponse)
}
