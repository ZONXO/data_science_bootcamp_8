chatbot <- function(){
  pizza_toping <- c("paperoni","cheese","BBQ Chicken")
  pizza_price <-c(300,349,349)
  print("Hi this is pizzahut")
  while(TRUE){
    print("What you want to order")
    pizzaorder <- readLines("stdin",n=1)
    if(grepl("pizza", pizzaorder) == TRUE){
      cat("what topping you want. We have paperoni,cheese,and BBQ Chicken \n")
      while(TRUE){
      pizza_top <- readLines("stdin",n=1)
          if(pizza_top == pizza_toping[1]){
          cat(c("price =  ",pizza_price[1],"\n"))
            break
        }
        else if(pizza_top == pizza_toping[2]){
          cat(c("price =  ",pizza_price[2],"\n"))
          break
        }
          else if(pizza_top == pizza_toping[3]){
          cat(c("price =  ",pizza_price[3],"\n"))
            break
        }
            
            else {
        cat("we didn't has that flavor! pls try again\n")
                 }  
               } 
        break
                                         }
      
            
    else{
      return("sorry for wasting your time our shop sell only pizza")
      break
    }
    }
    print("Please tell us your address")
      address <- readLines("stdin",n=1)
      cat(c("You order pizza",pizza_top,"location at ",address," we will sent your pizza as fast as possible!\n"))
  }
chatbot()
