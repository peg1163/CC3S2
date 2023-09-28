# Parte 1

  def sum arr
    arr.inject(0, :+)
  end
  def max_2_sum arr
    sorted_arr = arr.sort
    if sorted_arr.length >= 2
      sorted_arr[-1] + sorted_arr[-2]
    elsif sorted_arr.length == 1
      sorted_arr[0]
    else
      0
    end
  end
  
  def sum_to_n? arr, n
    if arr.length < 2
        false
      else
        arr.combination(2).any? { |a, b| a + b == n }
      end
  end
  
  # Parte 2
  
  def hello(name)
    "Hello, #{name}"
  end
  
  def starts_with_consonant?(s)
    !!(s =~ /^[b-df-hj-np-tv-z]/i)
  end
  
  def binary_multiple_of_4?(s)
    return false unless s.match?(/^[01]+$/)
  
    decimal_value = s.to_i(2)
    decimal_value % 4 == 0
  end
  
  # Parte 3
  
  class BookInStock
    attr_accessor :isbn, :price
  
    def initialize(isbn, price)
      raise ArgumentError, "ISBN cannot be empty" if isbn.empty?
      raise ArgumentError, "Price must be greater than zero" if price <= 0
  
      @isbn = isbn
      @price = price
    end
  
    def price_as_string
      format("$%.2f", @price)
    end
  end