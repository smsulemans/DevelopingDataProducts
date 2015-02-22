library(shiny)
shinyUI(pageWithSidebar(
  headerPanel("Activity and Object Detection"),
  sidebarPanel(
    textInput('Domain', 'Domain', value='File Sharing'),
    textInput('URLActivity', 'URLActivity', value='Create'),
    numericInput('URLSeparator', 'sep{_}', 1),
    textInput('URLObject', 'URLObject', value='File'),
    textInput('JsonBodyActivity', 'JsonBodyActivity', value='Create'),
    numericInput('JsonBodySeparator', 'sep{_}', 1),
    textInput('JsonBodyObject', 'JsonBodyObject', value='File')
  ),
  mainPanel(
    h4('Activity Object From URL'),
    textOutput("ActivityObjectFromURL"),
    h4('Activity Object From JSON Body'),
    textOutput("ActivityObjectFromJSONBody"),
    h4('Final Activity Object'),
    textOutput("FinalActivityObject"),
    br(),
    h4('Instructions'),
    helpText("This application is for detecting the activity and object of user silently when user click on some button/label of web page"),
    helpText("These actions can be captured by using a proxy server, This application can be very useful in finding user interests"),
    helpText("Try changing activity from create to delete or object from file to folder etc"),
    code("Domain"),
    helpText("Domain e.g. File sharing, movies, games"),
    code("URL Activity"),
    helpText("e.g. create, delete"),
    code("URL Object"),
    helpText("e.g. file, folder"),
    code("JSON Body Activity"),
    helpText("e.g. create, delete"),
    code("JSON Body Object"),
    helpText("e.g. file folder")
    
    )
))