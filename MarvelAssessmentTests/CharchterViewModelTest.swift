//
//  CharchterViewModelTest.swift
//  MarvelAssessment
//
//  Created by norelhoda on 26/02/2024.
//

import XCTest
import RxSwift
import RxRelay

class CharchterViewModelTest: XCTestCase {

    var sut: CharchterViewModel!
    var disposeBag: DisposeBag!
    
    override func setUpWithError() throws {
        sut  = CharchterViewModel(interacor: CharcterInteractor)
        disposeBag = DisposeBag()
    }

    override func tearDownWithError() throws {
        sut = nil
        disposeBag = nil
    }

    func testCharchtersViewModel_WhenCharchterIsFetched(){
        sut.initialize()
        var result:[Results]?
        sut.charchterListSubject. (onNext: { [Results] in
            result = string
            expected.fulfill()
        }).disposed(by: disposeBag)
        sut.fromAmountRelay.accept(100)
    }
   
    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        // Any test you write for XCTest can be annotated as throws and async.
        // Mark your test throws to produce an unexpected failure when your test encounters an uncaught error.
        // Mark your test async to allow awaiting for asynchronous code to complete. Check the results with assertions afterwards.
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
