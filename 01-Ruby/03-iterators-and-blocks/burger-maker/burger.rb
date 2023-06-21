def burger(patty, sauce, topping)
  ['bun', (block_given? ? yield(patty) : patty), sauce, topping, 'bun']
end
