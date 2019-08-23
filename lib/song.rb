require_relative "./interactive_record.rb"

class Song < InteractiveRecord #inheritance

  self.column_names.each do |col_name|
    attr_accessor col_name.to_sym
  end

end

#uses a method, column_names, inherited from the super class