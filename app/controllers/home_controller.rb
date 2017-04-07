class HomeController < ApplicationController
    def index
        
    end
    
    def result
       
         #요기에 코드를 작성하라
        first_god = ["상큼함","응큼함","똑똑함","순수함","재력","지혜로움","뻔뻔함","자상함","고독함","엉뚱함","즐거움","돈복"]
        second_god = ["유머감각","집중력","잘생김","덕력","잘난척","소유욕","기억력","행복","자존심","연애운"]
        third_god = ["성욕","정력","못생김","귀찮음","똘기","작은키","카리스마","식탐","허세","일복","노안","음란함","먹을복"]


        # 인스턴스에 변수를 저장해주세요!
        @first_god = first_god.sample
        @second_god = second_god.sample
        @third_god = third_god.sample


        
        # 추가생성한 변수들 인스턴스로 지정.
    end
end
