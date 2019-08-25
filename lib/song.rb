require_relative "./interactive_record.rb"

class Song < InteractiveRecord

  attr_accessor :id, :name, :album

  def initialize(options={})
  options.each do |property, value|
    self.send("#{property}=", value)
    end
  end

  def self.table_name
    self.to_s.downcase.pluralize
  end

  self.column_names.each do |col_name|
    attr_accessor col_name.to_sym
  end

end
