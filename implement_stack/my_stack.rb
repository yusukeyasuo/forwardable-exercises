require 'forwardable'

class MyStack
  extend Forwardable
  attr_reader :stack
  def initialize
    @stack = []
  end

  def_delegator :@stack, :last, :peek
  def_delegators :@stack, :first, :last, :clear, :size, :pop, :push
end
