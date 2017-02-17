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
    func fetchList(identifiers: [String]?, response: HTTPResponse)
    func fetchRetrieve(identifiers: [String], response: HTTPResponse)
    func fetchCreate(identifiers: [String]?, ressource: [Any]?, response: HTTPResponse)
    func fetchUpdate(identifiers: [String], ressource: [Any]?, response: HTTPResponse)
    func fetchDelete(identifiers: [String], response: HTTPResponse)
}
