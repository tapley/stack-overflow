require 'shoulda-matchers'

describe Answer do

  it "should have a title" do
    have_db_column(:title)
  end

  it "should have content" do
    have_db_column(:content)
  end

  it "should have many answers" do
    have_many(:answer)
  end

end
