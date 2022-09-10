require_relative "../classes/book"

describe Book do
  let(:book) { Book.new("Ridwan", "02-02-2020", "Good") }

  describe "#book" do
    it "should instanciate a new book" do
      expect(book).to be_an_instance_of(Book)
    end

    it "should be equal to Ridwan" do
      expect(book.publisher).to eq("Ridwan")
    end

    it "should be equal to 02-02-2020" do
      expect(book.publish_date).to eq("02-02-2020")
    end

    it "should be equal to Good" do
      expect(book.cover_state).to eq("Good")
    end
  end
end