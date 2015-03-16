require 'temple/html/filter'

# NOTE: This compiler has an extremely bad effect for performance.
# We should optimize this.
module Hamlit
  class TextCompiler < Temple::HTML::Filter
    def on_haml_text(exp)
      compile_text(exp)
    end

    private

    # FIXME: This can't parse '!'
    def compile_text(exp)
      [:dynamic, "%Q!#{exp}!"]
    end
  end
end