class Link < ApplicationRecord
  after_create :generate_slug

  # self.id - referência ao id do objeto que está sendo chamado
  # .hash - gera um hash
  # .abs - retorna um valor absoluto(inteiro e positivo)
  # .to_s - transforma o inteiro em base decimal para base 36 e converte para uma string
  # [0,6] - retorna apenas o 6 primeiros caracteres da string
  def generate_slug
    self.slug = self.id.hash.abs.to_s(36)[0,6]
    self.save
  end

  # BASE_URL - "export BASE_URL=http://example.com/"
  def out_url
    ENV['BASE_URL'] + self.slug
  end
end
