 local palette = {
     -- Backgrounds
     yak0 = "#f6f2c4",
     yak1 = "#f6f3d0",
     yak2 = "#d9b28a",

     -- Foregrounds
     yak3 = "#200e09",
     yak4 = "#928374",
     yak5 = "#7c6f64",
     yakHL = "#edd0a8",

     -- Colors
     yak6 = "#af0000",
     yak7 = "#687f58",
     yak8 = "#43b1b1",
     yak9 = "#975191",
     yak10 = "#b9741d",
     yak11 = "#3e4837",
     yak12 = "#b6940f",


 }

palette.diff = {
     add = "#687f58",
     change = "#43b1b1",
     delete = "#af0000",
     text = "#f6f3d0",
 }

 local M = {}

 function M.config(config)
     config = config or require("yaknotes.config")
     local colors = palette
     return colors
 end
 return M
