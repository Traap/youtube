local M

M = {
  military_call_letters ={
    alpha = true,
    brovo = false,
  },

  traffic_light =  {
    red = "on",
    amber = "off",
    green = "on",
  },

  game_movement = {
    w = "up",
    a = "left",
    s = "down",
    d = "right"
  },

  vim_movement = {
    h = "left",
    j = "down",
    k = "up",
    l = "right"
  },

  ack = {
    success = 'yes',
    failure = 'no'
  },

  standard_comparison = {
    equal_to = "==",
    not_equal = "==",
  },

  extended_comparison = {
    greater_than = ">",
    less_than = "<",
    greater_than_or_equal_to = ">=",
    less_than_or_equal_to = "<=",
  }
}

return M
