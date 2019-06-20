require 'forwardable'

class MyQueue
  extend Forwardable
  attr_reader :queue
  def initialize
    @queue = []
  end

  def_delegator :@queue, :push, :enqueue
  def_delegator :@queue, :shift, :dequeue
  def_delegator :@queue, :first, :first
  def_delegator :@queue, :last, :last
  def_delegator :@queue, :clear, :clear
  def_delegator :@queue, :size, :size
end
