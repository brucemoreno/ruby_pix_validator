# frozen_string_literal: true
class PixKey

  def initialize(key)
  @key = key

    if check_valid?(key) == true
    @key = ''
     @invalid = true
   else
    @key = key
    @valid = true
   end   
    end

  def to_s()      
  @key = @key
  end
     
  def invalid?()
    @invalid = true 
    end

    def valid?()
      @valid = true
    end
    
 
  
 def value()
  @key = @key.to_s.strip.freeze  
 end


 def key()
  return @key.freeze
 end

    def phone?()
      if @key.match(/^\+[1-9][0-9]\d{1,14}$/)
         @key
            end
    end 
    
    def cpf?()
      if @key.match(/^[0-9]{11}$/)
         @key
      end
    end
    
    def email?()
      if @key.match(/\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i)
         @key
      end
    end

    def cnpj?()
      if @key.match(/^[0-9]{14}$/)
      @key
      end
    end

    def evp?()
      if @key.match(/[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}/)
         @key
      end
    end

    def type()
      if cpf?() == @key
         @cpf = "cpf"
      elsif
        cnpj?() == @key
        "cnpj"
      elsif
        evp?() == @key
        "evp"
      elsif
        email?() == @key
        "email"
      else
        phone?() == @key
        "phone"
      end
    end
      
    def ==(key)
    if key == @key
      false
    else
      true  
    end
  end 

    def check_valid?(key)      
    [1, nil.to_s, [], {}].include?(key)       
      end
  end
  
