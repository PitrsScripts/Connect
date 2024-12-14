AddEventHandler('playerConnecting', function(name, skr, d)
  d.defer()  
  Wait(5000)  


  local serverBannerURL = ""  
  local serverName = ""  
  local discordURL = ""  


  d.presentCard({
    type = "AdaptiveCard",  
    ["$schema"] = "http://adaptivecards.io/schemas/adaptive-card.json",  
    version = "1.5",  
    body = { 
      {
        type = "Container",  
        items = {
          {
            type = "ColumnSet",  
            columns = {
              {
                type = "Column",  
                width = "stretch",  
                items = {
                  {
                    type = "Image",  
                    url = serverBannerURL  
                  },
                  {
                    type = "TextBlock", 
                    text = "Připojování na  " .. serverName,
                    wrap = true,  
                    fontType = "Default",  
                    horizontalAlignment = "Center", 
                    size = "Large" 
                  },
                }
              }
            }
          },
          {
            type = "ColumnSet",  
            columns = {
              {
                type = "Column",  
                width = "stretch",  
                items = {
                  {
                    type = "ActionSet",  
                    actions = {
                      {
                        type = "Action.OpenUrl",  
                        title = "DISCORD",  
                        url = discordURL  
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  })

 
  Wait(5000)  
  d.done()  
end)
