require 'haml'

module Coffee
  module Filter
    module Coffee
      include ::Haml::Filters::Base

      lazy_require 'coffee-script'

      def render_with_options(text, options)
        <<END
<script type=#{options[:attr_wrapper]}text/javascript#{options[:attr_wrapper]}>
  //<![CDATA[
    #{CoffeeScript.compile(text)}
  //]]>
</script>
END
      end
    end
  end
end

