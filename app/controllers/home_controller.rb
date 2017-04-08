class HomeController < ApplicationController
  def index
  	characters1 = { 
  					"성실함": "handsome",
  					"고약함": "handsome",
  					"나약함": "handsome",
  					"비겁합": "handsome",
  					"섬세함": "handsome",
  					"야비함": "handsome",
  					"근면함": "handsome",
  					"느긋함": "handsome"
				}
		@choose1 = characters1.keys.sample(1)[0]

	characters2 = { 
  					"가인": "handsome",
  					"이쁨": "handsome",
  					"존예": "handsome",
  					"존잘": "handsome",
  					"미남": "handsome",
  					"미녀": "handsome",
  					"미인": "handsome",
  					"미모": "handsome"
				}
		@choose2 = characters2.keys.sample(1)[0]

	characters3 = { 
  					"초콜릿복근": "handsome",
  					"11자 복근": "handsome",
  					"갑빠": "handsome",
  					"애플힘": "handsome",
  					"화난엉덩이": "handsome",
  					"성난팔뚝": "handsome",
  					"강철허벅지": "handsome",
  					"이뚜빡끈": "handsome"
				}
		@choose3 = characters3.keys.sample(1)[0]
  end
end

