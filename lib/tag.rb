class Tag
	def initialize(name, options = {})
		@name = name.to_s
		@content = options.delete(:content)
		@attributes = options
	end

	def show
		"<#{@name}#{build_attributes}>#{@content}</#{@name}>"
	end

	def build_attributes
		return "" if @attributes.empty?
		" " << @attributes.map {|key, value| "#{key}='#{value}'"}.join(" ")
	end

end
