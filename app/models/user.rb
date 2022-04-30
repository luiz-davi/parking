class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

  devise :database_authenticatable, 
         :registerable,
         :recoverable,
         :rememberable,
         :validatable,
         :trackable

  enum funcao: {adm: 1, operador: 2}

  def adm?
    funcao == 1 ? true : false
  end

end 
