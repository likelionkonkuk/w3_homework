class PowerballController < ApplicationController
	def index
	end

	def pick_your_ball
		#당첨볼
		drw_normalball = Array.new
		loop do
		  drw_normalball = (1..69).to_a.sample(5).sort
		  break if drw_normalball.uniq.size == 5
		end

		drw_powerball = (1..26).to_a.sample(1)

		#구입볼
		pick_normalball = Array.new
		loop do
			pick_normalball = (1..69).to_a.sample(5).sort
			break if pick_normalball.uniq.size == 5
		end

		pick_powerball = (1..26).to_a.sample(1)


		#당첨확인
		result = ""
		count_correct_num =""
		prize = 0
 		if (drw_normalball == pick_normalball) && (drw_powerball == pick_powerball)
 		    result = "JACKPOT"
 		    count_correct_num = 6
 		    prize = "누적된 상금"
 		elsif (drw_normalball & pick_normalball).size == 5
 		    result = "2등!"
 		    count_correct_num = 5
 		    prize = 1000000
 		elsif ((drw_normalball & pick_normalball).size == 4) && (drw_powerball == pick_powerball)
 		    result = "3등"
 		    count_correct_num = 5
 		    prize = 10000
 		elsif (drw_normalball & pick_normalball).size == 4
 		    result = "4등"
 		    count_correct_num = 4
 		    prize = 100
 		elsif ((drw_normalball & pick_normalball).size == 3) && (drw_powerball == pick_powerball)
 		    result = "5등"
 		    count_correct_num = 4
 		    prize = 100
 		elsif (drw_normalball & pick_normalball).size == 3
 		    result = "6등"
 		    count_correct_num = 3
 		    prize = 7
 		elsif ((drw_normalball & pick_normalball).size == 2) && (drw_powerball == pick_powerball)
 		    result = "7등"
 		    count_correct_num = 3
 		    prize = 7
 		elsif ((drw_normalball & pick_normalball).size == 1) && (drw_powerball == pick_powerball)
 			result = "8등"
 			count_correct_num = 2
 			prize = 4
 		elsif drw_powerball == pick_powerball
 			result = "9등"
 			count_correct_num = 1
 			prize = 4
 		else
 			result = "꽝"
 			count_correct_num = 0
 			prize = 0
 		end

        #옵션볼 배당률 & 상금계산기
		magnification = ""
		money = 0
		option_ball = (1..43).to_a.sample(1)
		if option_ball == 1
			magnification = "x10"
			money = (prize*10)
		elsif  (option_ball.first <= 3) && (option_ball.first >= 2)
			magnification = "x5"
			money = (prize*5)
		elsif (option_ball.first <= 6) && (option_ball.first >= 4)
			magnification = "x4"
			money = (prize*4)
		elsif (option_ball.first <= 19) && (option_ball.first >= 7)
			magnification = "x3"
			money = (prize*3)
		else
			magnification = "x2"
			money = (prize*2)
		end
        
 		#맞은번호 확인
 		correct_normalball = drw_normalball & pick_normalball
 		correct_powerball = drw_powerball & pick_powerball 
 		
		#인스턴스 변수 저장
		@drw_normalball = drw_normalball #당첨 일반볼
		@drw_powerball = drw_powerball #당첨 파워볼
		@pick_normalball = pick_normalball #뽑은 일반볼
		@pick_powerball = pick_powerball #뽑은 파워볼
		@magnification = magnification #당첨 배율
		@correct_normalball = correct_normalball #맞은 일반볼 배열
		@correct_powerball = correct_powerball #맞은 파워볼 배열
		@count_correct_num = count_correct_num #맞은 볼 갯수
		@result = result
		@money = money
	end	
end
