
describe "Author model", :type => :model do
  
  it "An author should asses a first, and last name and a homepage" do
    first = "Alan"
    last = "Turing"
    home = "http://wikipedia.org/Alan_Turing"
    author = Author.new({:first_name => first, :last_name => last, :homepage => home})
    expect(author.first_name).to eq(first)
    expect(author.last_name).to eq(last)
    expect(author.homepage).to eq(home)
  end

  it "A 'name'-method should exist which returns the first and last name" do 
    first = "Alan"
    last = "Turing"
    home = "http://wikipedia.org/Alan_Turing"
    author = Author.new({:first_name => first, :last_name => last, :homepage => home})
    expect(author.name).to eq("#{first} #{last}")
  end

end