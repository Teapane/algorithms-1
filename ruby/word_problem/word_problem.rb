require 'pry'
class WordProblem

  attr_reader :phrase_elements, :numbers, :operators, :pemdas

  def initialize(content, precedence = false)
    @phrase_elements = split(content)
    @numbers = select_numbers(content)
    @operators = select_operators
    @pemdas = precedence
  end

  def answer
    valid_phrase_elements?
    pemdas? ? pemdas_calculator : literal_calculator(numbers)
  end

  def pemdas?
    pemdas && ((phrase_elements.include?('multiplied')) || (phrase_elements.include?('divided')))
  end

  private

  def pemdas_calculator
    new_phrase_elements = phrase_elements
    if operators.all? {|o| o == 'divided' || o == 'multiplied'}
      literal_calculator(numbers)
    else
      if operand_indices.length != 0
        operand_indices.collect do |index|
          subtotal = phrase_elements[index - 1].to_i.send(conversion[phrase_elements[index]], phrase_elements[index+1].to_i)
          phrase_elements[(index - 1)...(index + 2)] = subtotal.to_s
        end
      end
      @numbers = phrase_elements.join(' ').scan(/-?\d*/).delete_if(&:empty?)
      @operators = phrase_elements - @numbers
      @numbers = @numbers.collect {|n| n.to_i}
      literal_calculator(numbers)
    end

  end

  def operand_indices
    indices = []
    phrase_elements.each_with_index do |value, index|
      if value == 'divided' || value == 'multiplied'
        indices << index
      end
    end
    indices
  end

  def literal_calculator(values)
    (values.size-1).times do |n|
      values[n+1] = subtotal(n)
    end
    values.last
  end

  def valid_phrase_elements?
    unless @phrase_elements.any? {|p| conversion.keys.include? p}
      raise ArgumentError
    end
  end

  def subtotal(n)
    numbers[n].to_i.send(operand(n), numbers[n+1].to_i)
  end

  def operand(n)
    conversion[operators[n]]
  end

  def conversion
    {
      'plus' => :+,
      'minus' => :-,
      'multiplied' => :*,
      'divided' => :/
    }
  end

  def select_numbers(content)
    content.scan(/-?\d*/).delete_if(&:empty?)
  end

  def select_operators
    (phrase_elements - numbers)
  end

  def split(content)
    content.gsub('?', '').split(' ')[2..-1] - ['by']
  end

end
