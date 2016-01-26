require_relative '../models/address_book'

RSpec.describe AddressBook do
  describe "attributes" do
    it "should respond to entries" do
      book = AddressBook.new
      expect(book).to respond_to(:entries)
    end

    it "should initialize entries as an array" do
      book = AddressBook.new
      expect(book.entries).to be_a(Array)
    end

    it "should initialize entires as empty" do
      book = AddressBook.new
      expect(book.entries.size).to eq(0)
    end
  end

  describe "#add_entry" do
    it "adds only one entry to the address book" do
      book = AddressBook.new
      book.add_entry('Ada Lovelace', '010.012.1815', 'augusta.king@lovelace.com')

      expect(book.entries.size).to eq(1)
    end
    it "adds the correct information to entries" do
      book = AddressBook.new
      book.add_entry('Ada Lovelace', '010.012.1815', 'augusta.king@lovelace.com')
      new_entry = book.entries[0]

      expect(new_entry.name).to eq('Ada Lovelace')
      expect(new_entry.phone_number).to eq('010.012.1815')
      expect(new_entry.email).to eq('augusta.king@lovelace.com')
    end
  end

  describe "#remove_entry" do
    before :each do
      @book = AddressBook.new
      @book.add_entry('Sarah Smith', '435.724.5567', 'eatchicken@home.com')
      @book.add_entry('Henry Gomes', '568.435.9834', 'hungrylife@food.com')
    end

    it "deletes passed entry" do
      expect(@book.entries.size).to eq(2)
      @book.remove_entry('Sarah Smith', '435.724.5567', 'eatchicken@home.com')
      @book.remove_entry('Henry Gomes', '568.435.9834', 'hungrylife@food.com')

      expect(@book.entries.size).to eq(2)
    end
  end
end
