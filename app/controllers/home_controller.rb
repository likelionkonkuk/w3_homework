class HomeController < ApplicationController
    def index
        god = {"1": "result1",
                "2": "result2",
                "3": "result3",
                "4": "result4",
                "5": "result5",
                "6": "result6",
                "7": "result7",
                "8": "result8",
                "9": "result9",
                "10": "result10",
        }

        @choose= god.keys.sample(1)[0]
        @chooseimg = god[@choose]

    end
end
