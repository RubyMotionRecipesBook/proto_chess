module ModelBase

  def init_from_params(params)
    members.each {|m| self[m] ||= params.delete(m)}
  end
    
end