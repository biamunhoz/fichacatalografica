require "application_system_test_case"

class FichasTest < ApplicationSystemTestCase
  setup do
    @ficha = fichas(:one)
  end

  test "visiting the index" do
    visit fichas_url
    assert_selector "h1", text: "Fichas"
  end

  test "creating a Ficha" do
    visit fichas_url
    click_on "New Ficha"

    fill_in "Ano", with: @ficha.ano
    fill_in "Assunto1", with: @ficha.assunto1
    fill_in "Assunto2", with: @ficha.assunto2
    fill_in "Assunto3", with: @ficha.assunto3
    fill_in "Assunto4", with: @ficha.assunto4
    fill_in "Assunto5", with: @ficha.assunto5
    fill_in "Nome", with: @ficha.nome
    fill_in "Nomecoorient", with: @ficha.nomecoorient
    fill_in "Nomeorient", with: @ficha.nomeorient
    fill_in "Numpagina", with: @ficha.numpagina
    fill_in "Sobrenome", with: @ficha.sobrenome
    fill_in "Sobrenomecoorient", with: @ficha.sobrenomecoorient
    fill_in "Sobrenomeorient", with: @ficha.sobrenomeorient
    fill_in "Tipotrabalho", with: @ficha.tipotrabalho
    fill_in "Titulo", with: @ficha.titulo
    click_on "Create Ficha"

    assert_text "Ficha was successfully created"
    click_on "Back"
  end

  test "updating a Ficha" do
    visit fichas_url
    click_on "Edit", match: :first

    fill_in "Ano", with: @ficha.ano
    fill_in "Assunto1", with: @ficha.assunto1
    fill_in "Assunto2", with: @ficha.assunto2
    fill_in "Assunto3", with: @ficha.assunto3
    fill_in "Assunto4", with: @ficha.assunto4
    fill_in "Assunto5", with: @ficha.assunto5
    fill_in "Nome", with: @ficha.nome
    fill_in "Nomecoorient", with: @ficha.nomecoorient
    fill_in "Nomeorient", with: @ficha.nomeorient
    fill_in "Numpagina", with: @ficha.numpagina
    fill_in "Sobrenome", with: @ficha.sobrenome
    fill_in "Sobrenomecoorient", with: @ficha.sobrenomecoorient
    fill_in "Sobrenomeorient", with: @ficha.sobrenomeorient
    fill_in "Tipotrabalho", with: @ficha.tipotrabalho
    fill_in "Titulo", with: @ficha.titulo
    click_on "Update Ficha"

    assert_text "Ficha was successfully updated"
    click_on "Back"
  end

  test "destroying a Ficha" do
    visit fichas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Ficha was successfully destroyed"
  end
end
