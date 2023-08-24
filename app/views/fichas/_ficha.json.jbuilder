json.extract! ficha, :id, :nome, :sobrenome, :titulo, :tipotrabalho, :nomeorient, :sobrenomeorient, :nomecoorient, :sobrenomecoorient, :ano, :numpagina, :assunto1, :assunto2, :assunto3, :assunto4, :assunto5, :created_at, :updated_at
json.url ficha_url(ficha, format: :json)
