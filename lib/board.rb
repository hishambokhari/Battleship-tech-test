require_relative 'ship'

class Board
  require 'terminal-table'
  attr_accessor :boats
  
  def initialize
    @boats = []
  end

  def table
    table = Terminal::Table.new do |t|
    t << ['A1']
    end
  end

  def place(ship)
    if ship.size > 1
      fail 'Out of bounds'
    elsif overlap(ship) == true
      fail 'occupied'
    else
      boats << ship
    end
end

  def overlap(ship)
    if @boats.map{|ship| ship.postion}.include?(ship.position)
      return true
    else
      return false
    end
  end
end