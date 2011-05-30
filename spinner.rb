module SimpleForm
  mattr_accessor :spinner_icon
  @@spinner_icon = "spinner.gif"

  module Components
    module Spinner
      def spinner
        if options[:spinner]
          spinner_tag(attribute_name)
        end
      end

      private
      
      def spinner_tag(attribute)
        template.image_tag spinner_icon, :id => "#{attribute}-spinner", :class => "spinner", :style => "display: none"
      end

      def spinner_icon
        options[:spinner].is_a?(TrueClass) ? SimpleForm.spinner_icon : options[:spinner]
      end
    end
  end

  module Inputs
    class Base
      include SimpleForm::Components::Spinner
    end
  end
end