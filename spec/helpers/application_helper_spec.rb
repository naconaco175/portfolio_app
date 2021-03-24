require 'rails_helper'

RSpec.describe "ApplicationHelper", type: :helper do
  include ApplicationHelper

  describe "page_title(page_title)" do
    it 'when page_title is exist' do
      page_title = "タイトル"
      expect(page_title(page_title)).to eq "タイトル | 麺道"
    end

    it 'when page_title is blank' do
      page_title = ""
      expect(page_title(page_title)).to eq "麺道"
    end

    it 'when page_title is nil' do
      page_title = nil
      expect(page_title(page_title)).to eq "麺道"
    end
  end
end
