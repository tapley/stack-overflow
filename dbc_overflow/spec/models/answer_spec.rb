require 'shoulda-matchers'

describe Answer do

  it "should have a title" do
    have_db_column(:title)
  end

  it "should have content" do
    have_db_column(:content)
  end

  it "should belong to a question" do
    belong_to(:question)
  end

end
