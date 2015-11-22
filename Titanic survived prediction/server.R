## server.R


library(randomForest)

load("tit_re_mod.RData")
nd <- as.data.frame(matrix(0,1,4))
colnames(nd) <- c('Pclass','Mr_l','Age','Fam_l')

shinyServer(function(input, output) {
    p_sur<- reactive({
      nd$Mr_l <- as.numeric(input$gender)
      nd$Age <- as.numeric(input$age)
      nd$Pclass <- as.numeric(input$class)
      nd$Fam_l <- as.numeric(0)
      p <- predict(Tit.rf,nd,type = 'prob')[2]
      })
    
    
    output$p_sur <- renderText({
      sprintf("%2.2f", p_sur())
    })
    
  }
)