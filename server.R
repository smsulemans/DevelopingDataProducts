library(shiny)
shinyServer(
  function(input, output){
    output$ActivityObjectFromURL <- renderText({ calculateActivityObjectFromURL(input$URLActivity, input$URLObject) })
    output$ActivityObjectFromJSONBody <- renderText({ calculateActivityObjectFromJsonBody(input$JsonBodyActivity, input$JsonBodyObject) })
    output$FinalActivityObject <- renderText({ calculateFinalActivityObject(input$URLActivity, input$URLObject, input$JsonBodyActivity, input$JsonBodyObject) })
    
  }
)

calculateActivityObjectFromURL <- function (URLActivity, URLObject) 
{
  return(paste(URLActivity,' ',URLObject))
  
}

calculateActivityObjectFromJsonBody <- function(JsonBodyActivity, JsonBodyObject)
{
  return(paste(JsonBodyActivity,' ',JsonBodyObject))
}

calculateFinalActivityObject <- function(URLActivity, URLObject, JsonBodyActivity, JsonBodyObject)
{

  if(URLActivity != ""){
    if(URLObject != ""){
      return(paste(URLActivity,' ',URLObject))
    }
    else if(JsonBodyObject != ""){
      return(paste(URLActivity,' ',JsonBodyObject))
    }
    else{
      return(URLActivity)
    }
  }
  else if(JsonBodyActivity != ""){
      if(JsonBodyObject != ""){
        return(paste(JsonBodyActivity,' ',JsonBodyObject))
      }
      else if(URLObject != ""){
        return(paste(JsonBodyActivity,' ',URLObject))
      }
      else{
        return(JsonBodyActivity)
  
      }
    
  }
  else{
      
    if(URLObject != ""){
        return(URLObject)
      
    }
      
    else if(JsonBodyObject != ""){
        return(JsonBodyObject)
      
    } 
      
    else{
        return("Unable to find activty object")
      
    }
    
  }
  
}