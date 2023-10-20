sum_draw <- 0
sum_win <- 0
sum_lose <- 0

summary <- function(sum_draw,sum_win,sum_lose){
  score_df <- data.frame(
    draw = sum_draw,
    win = sum_win,
    lose = sum_lose
  )
  print(score_df)
}

play_game <- function(){
  print("let's play rock papper scissors")
  print("if you want to quit type 'end'")
  while(TRUE){
    choice <- c("rock","papper","scissors")
    player <- readLines("stdin",n=1)    
    if(player == "rock"){
      sample1 <- sample(choice,size=1)
      if(sample1 == choice[1]){
        sum_draw <- sum_draw+1 
        print("Draw")
      }else if(sample1 == choice[2]){
        sum_lose <- sum_lose+1
        print("You lose")
      }else{
        sum_win <- sum_win+1
        print("You win!")
      }
    }else if(player == "papper"){
      sample2 <- sample(choice,size=1)
      if(sample2 == choice[1]){
        sum_win <- sum_win+1 
        print("You win")
      }else if(sample2 == choice[2]){
        sum_draw <- sum_draw+1
        print("Draw")
      }else{
        sum_lose <- sum_lose+1
        print("You lose")
      }
    }else if(player == "scissors"){
      sample3 <- sample(choice,size=1)
      if(sample3 == choice[1]){
        sum_lose <- sum_lose+1 
        print("You lose")
      }else if(sample3 == choice[2]){
        sum_win <- sum_win+1
        print("You win!")
      }else{
        sum_draw <- sum_draw+1
        print("Draw")
      }
    }else if (player == "end"){
      print("this is your summary")
      summary(sum_draw,sum_win,sum_lose)
      break
    }else {
      print("That not in game choice! pls try again")
    }
  }
}

play_game()
