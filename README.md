# rails로 게임 만들기

####만드려는 것
주사위를 굴려 큰 값이 나오는사람이 이김,
세번 이기면 게임종료

#### 1차 명세
- controller
	- def dice
		dice
        dice img > @dice
        
	- def player
		player1,2
        player1,2 img > @player1,2
	
    - def game
    	game 
        count 

- view
	@dice
    @player
    
        
  > 해보니 count빼고는 모두 한 변수에 넣는것이 좋음 
    
  > view에서 함수별로 따로 view를 만들어주어야하기 때문
        

#### 1차 오류

- c9 오류
	- git clone해왔더니 rails g controller가 안됨
	: gem update rails, bundle update 해주니까 되었음

- controller error
	- class 도 end로 닫아줘야함
- view error
	- ~.html.erb 에서 ~을 routes에 지정해줘야 함

#### 생각해야 할 것
- count를 세어서 이긴 횟수를 추가하려 했으나 
  f5를 누르면 새로고침이 되어버려 1까지밖에 셀 수 없었다.
  > count 함수를 만들고 count를 전역변수로 선언해봤지만
    어차피 f5하면 새로고침이 되어버림
    
  > 클릭하면 다른 페이지로 넘어가는것으로 해서
    count가 3이 될때까지 다른 페이지로 넘어가게 하면 될것같다
    
#### count의 문제가 도저히 해결되지 않아 주사위만 해보기로 함

#### 2차 오류

- css 읽지 못함
	- 저번 과제때 외부 css보다는 내부에 작성하라고 하셔서
	  내부에 작성해 봤는데, 오류는 없는데 적용이 안되었다
      그래서 일단은 외부css를 불러와서 해결했다.
      
    - css가 틀린 부분이 없는것 같은데 자꾸 적용이 안된다..
      표정이 나오는 부분의 background도 다 바꿔봤는데 안됨...

- dice img 읽지 못함
	- @dice_img1=dice[@dice]
	- img src="<%= image_url(@dice_img1)%>"
	  : dice[ 랜덤숫자 ] 하고, img파일도 다 dice숫자 로 했는데
      왜 자꾸 엑박이 뜨는지 모르겠다...

#### 2차 오류 해결

- css 문제 해결
	- application.html.erb 에 <%= stylesheet_link_tag    'application', media: 'all', 'data-turbolinks-track': 'reload' %> 를 써줌

	- backgroung-color가 안먹었던 이유는 height:100px로 줬었기 때문이다..바보

- dice img 읽지못함
	- rand(1..6) 에서 rand(0..5) 로 수정 후 view파일에서 +1 해주었더니 잘 해결 되었다 (by 민우쌤)

#### 앞으로 주의 할 것

- 컨트롤러 이름은 복수형으로 하는것이 좋음
- controller 내에 액션을 만들기 보다는 다른 액션을 만들고 controller 내에서는 결과를 보여주는것만 하는것이 좋음
      



