return {
  DebugTownPanel = {
    children = {
      testniner = {
        t = "nineslice",
        file = "uibase",
        color = { 71, 175, 90, 255 },
        rect = { 0, 0, 480, 270 },
        children = {
          thing3 = {
            t = "text",
            text = "Hello world!",
            size = 8,
            priority = 0,
            color = { 255, 255, 255, 255 },
            rect = { 0, 0, 144, 144 },
            centered = true
          },
          ButtonTestPanel = {
            priority = 1,
            children = {
              TestButton1 = {
                t = "button",
                rect = { 180, 60, 120, 24 },
                children = {
                  bg = { t = "nineslice", file = "uibase", color = { 66, 135, 245, 255 }, rect = { 0, 0, 120, 24 } },
                  label = { t = "text", text = "Button 1", size = 8, priority = 1, rect = { 0, 0, 120, 24 }, centered = true },
                },
              },
              TestButton2 = {
                t = "button",
                rect = { 180, 100, 120, 24 },
                children = {
                  bg = { t = "nineslice", file = "uibase", color = { 245, 166, 66, 255 }, rect = { 0, 0, 120, 24 } },
                  label = { t = "text", text = "Button 2", size = 8, priority = 1, rect = { 0, 0, 120, 24 }, centered = true },
                },
              },
              TestButton3 = {
                t = "button",
                rect = { 180, 140, 120, 24 },
                children = {
                  bg = { t = "nineslice", file = "uibase", color = { 200, 70, 70, 255 }, rect = { 0, 0, 120, 24 } },
                  label = { t = "text", text = "Button 3", size = 8, priority = 1, rect = { 0, 0, 120, 24 }, centered = true },
                },
              },
            },
          },
        },
      },
    }
  },



}
