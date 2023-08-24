class CreateFichas < ActiveRecord::Migration[5.2]
  def change
    create_table :fichas do |t|
      t.string :nome
      t.string :sobrenome
      t.string :titulo
      t.string :tipotrabalho
      t.string :nomeorient
      t.string :sobrenomeorient
      t.string :nomecoorient
      t.string :sobrenomecoorient
      t.string :ano
      t.string :numpagina
      t.string :assunto1
      t.string :assunto2
      t.string :assunto3
      t.string :assunto4
      t.string :assunto5

      t.timestamps
    end
  end
end
