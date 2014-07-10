class TitleValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    if value.length  < 10 
      record.errors[attribute] << (options[:message] || "can't be less then 10 chareacter")
    end
  end
end