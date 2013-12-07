class Wikipedia
  def initialize params
    @content = parse(params[:url])
  end

  def title
    @content['title']
  end

  private 

  def parse url
    body = open(url).read
    data = JSON.parse(body)['query']['pages']
    keys = data.keys
    id = keys.first
    data[id]
  end
end
