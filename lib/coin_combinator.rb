class Fixnum
  define_method(:coin_combine) do
    coins = {
      'pennies'  => 0,
      'nickles'  => 0,
      'dimes'    => 0,
      'quarters' => 0
    }

    coin_values = {
      'pennies'  => 1,
      'nickles'  => 5,
      'dimes'    => 10,
      'quarters' => 25
    }

    coin_names = coin_values.invert

    amount = self
    if coin_values.has_value?(amount)
      coin_name = coin_names[amount]
      coins[coin_name] += 1
    end

    coins
  end
end
