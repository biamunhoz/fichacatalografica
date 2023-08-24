class FichasController < ApplicationController
  before_action :set_ficha, only: %i[ show ]

  # GET /fichas or /fichas.json
  def index
    @fichas = Ficha.count
  end

  def capitalizar_titulo(string)
    words_not_to_capitalize = ["a","e","i","o","u", "os", "as", "um", "uns", "uma", "umas", "da", "de", "di", "do", "das", "dos", "das", "nós", "no", "na", "nos", "nas", "ao", "aos", "à", "às", "pelo", "pela", "pelos", "pelas", "duma", "dumas", "dum", "duns", "num", "numa", "nuns", "numas", "com", "por", "em", "mas"]
    s = string.split.each{|str| str.capitalize! unless words_not_to_capitalize.include? (str.downcase) }
    return s[0].capitalize + " " + s[1..-1].join(" ")
  end

  # GET /fichas/1 or /fichas/1.json
  def show

    @ficha.assunto1 = capitalizar_titulo(@ficha.assunto1)
    @ficha.assunto2 = capitalizar_titulo(@ficha.assunto2)
    @ficha.assunto3 = capitalizar_titulo(@ficha.assunto3)
    @ficha.assunto4 = capitalizar_titulo(@ficha.assunto4)
    @ficha.assunto5 = capitalizar_titulo(@ficha.assunto5)
    @ficha.save

    respond_to do |format|    
      format.html
      format.pdf do
        render :pdf => 'ficha_catalografica',
              :layout => 'layouts/padrao.html.erb',
              :show_as_html => params[:debug].present?,
              :template => 'fichas/fichacatalografica.pdf.erb',
              :page_size => 'A4',
              :disposition => 'inline',
              :orientation => 'Portrait'
        end         
    end

    #limpa os campos, pois não é para guardar esses dados. 
    @ficha.nome = ""
    @ficha.sobrenome = ""
    @ficha.titulo = ""
    @ficha.tipotrabalho = ""
    @ficha.nomeorient = ""
    @ficha.sobrenomeorient = ""
    @ficha.nomecoorient = ""
    @ficha.sobrenomecoorient = ""
    @ficha.ano = ""
    @ficha.numpagina = ""
    @ficha.assunto1 = ""
    @ficha.assunto2 = ""
    @ficha.assunto3 = ""
    @ficha.assunto4 = ""
    @ficha.assunto5 = ""
    @ficha.orientadora = false
    @ficha.coorientadora = false

    @ficha.save
    
  end

  # GET /fichas/new
  def new
    @ficha = Ficha.new
  end


  # POST /fichas or /fichas.json
  def create
    @ficha = Ficha.new(ficha_params)

    respond_to do |format|
      if @ficha.save
        format.html { redirect_to ficha_url(:action => "show", :controller=>"fichas" ,:format => :pdf, :id=>@ficha), notice: "Ficha was successfully created." }
        format.json { render :show, status: :created, location: @ficha }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @ficha.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ficha
      @ficha = Ficha.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def ficha_params
      params.require(:ficha).permit(:nome, :sobrenome, :titulo, :tipotrabalho, :nomeorient, :sobrenomeorient, :nomecoorient, :sobrenomecoorient, :ano, :numpagina, :assunto1, :assunto2, :assunto3, :assunto4, :assunto5, :orientadora, :coorientadora)
    end
end
