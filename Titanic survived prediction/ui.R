library(shiny)

shinyUI(navbarPage("Would someone have survived on the Titanic?",
                   
                   # Application title
                   tabPanel("Questionnaire",
                            
                            # Sidebar with a slider input for number of bins
                            sidebarPanel(
                              h3("Let's imagine that someone alone, without family, swims on the Titanic.
                                 Please, answer main questions about this someone:"),
                              selectInput("gender", "Gender:", choices = c('Male'=1,'Female'=0)),
                              numericInput("age","Age", value=21,min=0,max=199,step=1),
                              selectInput("class", "Imaginary class cabins of someones:", choices = c('1'=1,'2'=2, '3' = 3)),
                              width = 4)
                            ,
                            
                            # Show a plot of the generated distribution
                            mainPanel(
                              h3("Probability of survival")
                              , textOutput("p_sur")
                            )),
                
                   tabPanel("Course Project",
                            h3('Prentation for this app'),
                            helpText('You can find prentation for this app at this : ',a("URL",href="http://rpubs.com/AleksandrKliushev/DevDataProd")),
                            h3('Course Project'),
                            helpText('This tools was developed as course project of ',a("Developing Data Products course",href="https://class.coursera.org/devdataprod-034")),
                            h3('Information about Titanic'),
                            helpText('The all data, that using in this app was taken from Kaggle Competition: ',a("Titanic",href="https://www.kaggle.com/c/titanic"))
                   )
))