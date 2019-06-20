module MyForwardable
  def def_delegator(accessor, method, ali = method)
    module_eval <<~RUBY
    def #{ali}(*args)
      #{accessor}.#{method}(*args)
    end
    RUBY
  end

  def def_delegators(accessor, *methods)
    methods.each { |method| def_delegator(accessor, method) }
  end
end
