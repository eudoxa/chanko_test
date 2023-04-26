module HelloWorld
  include Chanko::Unit

  active_if { true }
  raise_error

  scope(:view) do
    function(:hello) do
      begin
        self.render '/friend'

      rescue => e
        e.message
      end
    end
  end
end

