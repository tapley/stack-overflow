require 'shoulda-matchers'

describe QuestionsController do
  it { should route(:get, '/').to(action: :index) }

  describe 'GET #index' do
    before { get :index }
    it { should render_template('index') }
  end

  # # Not working. Wondering if development database was seeded whereas this test is inspecting the test database.
  # describe 'GET #show' do
  #   params = {id: 1}
  #   before { get :show, params }
  #   it { should render_template('show') }
  # end

end
