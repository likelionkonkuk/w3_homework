class HomeController < ApplicationController
  def index
    
    dough = {
      1 => "green-tea.png",
      2 => "squid-ink.png",
      3 => "cotton-candy.png"
    }
    sauce = {
      1 => "green-tea-sauce.png",
      2 => "squid-ink-sauce.png",
      3 => "cream-sauce.png"
    }
    topping = {
      1 => "tea-leaves.png",
      2 => "squid-ling.png",
      3 => "chocolate.png"
    }
    
    @choose_dough = dough.keys.sample(1)[0]
    @choose_sauce = sauce.keys.sample(1)[0]
    @choose_topping = topping.keys.sample(1)[0]
    
    @doughimg = dough[@choose_dough]
    @sauceimg = sauce[@choose_sauce]
    @toppingimg = topping[@choose_topping]
    
    doughName = {
      "green-tea.png" => "Green-tea Dough",
      "squid-ink.png" => "Squid-ink Dough",
      "cotton-candy.png" => "Cotton-candy Dough"
    }
    sauceName = {
      "green-tea-sauce.png" => "Green-tea Sauce",
      "squid-ink-sauce.png" => "Squid-ink Sauce",
      "cream-sauce.png" => "Cream Sauce"
    }
    toppingName = {
      "tea-leaves.png" => "Tea Leaves",
      "squid-ling.png" => "Squid Ling",
      "chocolate.png" => "Chocolate"
    }
    
    @doughKey = doughName[@doughimg]
    @sauceKey = sauceName[@sauceimg]
    @toppingKey = toppingName[@toppingimg]
    
    if @choose_dough == @choose_sauce && @choose_sauce == @choose_topping
      @final_word = "Exellent!"
    elsif @choose_dough != @choose_sauce && @choose_sauce != @choose_topping && @choose_dough != @choose_topping
      @final_word = "Ewwwwww..."
    else
      @final_word = "Not bad :("
    end
    
  end
end
