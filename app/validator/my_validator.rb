class MyValidator < ActiveModel::Validator
  def validate(record)
    if record.title < 10 
      record.errors[:title] << 'Need a name starting with X please!'
    end
  end
end
