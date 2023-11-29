def content_for data
  streamed_data = %w(div data div)
  streamed_data[1] = data.to_s
  "<%s>%s</%s>" % streamed_data
  # open_tag = "<div>"
  # close_tag = "</div>"
  # "#{open_tag}#{data}#{close_tag}"
end

RSpec.describe "#content_for" do
  it "will generte html element with wrapped data" do
    input = "hello world"
    expect(content_for input).to eq "<div>hello world</div>"
  end    
end