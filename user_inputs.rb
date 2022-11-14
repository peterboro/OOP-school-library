require_relative 'options'
require_relative 'display'

class UserInputs
  def initialize
    @display = Display.new
    @options = Options.new(self)
  end

  def user_inputs
    @display.display_options
  end
end
