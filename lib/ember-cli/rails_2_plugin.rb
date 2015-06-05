unless String.method_defined?(:inquiry)
  class String
    def inquiry
      ActiveSupport::StringInquirer.new(self)
    end

    # File activesupport/lib/active_support/core_ext/string/strip.rb, line 22
    def strip_heredoc
      indent = scan(/^[ \t]*(?=\S)/).min.try(:size) || 0
      gsub(/^[ \t]{#{indent}}/, '')
    end
  end
end
