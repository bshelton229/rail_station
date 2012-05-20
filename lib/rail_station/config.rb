module RailStation
  # Config object
  class Config
    class << self
      attr_reader :title, :title_link

      # Set the title
      def title=(title)
        @title = title
      end

      # Set the title link
      def title_link=(title_link)
        @title_link=title_link
      end
    end
  end
end
