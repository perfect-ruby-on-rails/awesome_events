class EventSearchForm
  include ActiveModel::Model
  include ActiveModel::Attributes

  attribute :keyword, :string
  attribute :page, :integer

  def search
    Event.search(
      keyword_for_search,
      where: { start_at: { gte: start_at } },
      page: page,
      per_page: 10
    )
  end

  def start_at
    @start_at || Time.current
  end

  def start_at=(new_start_at)
    @start_at = new_start_at.in_time_zone
  end

  private

  def keyword_for_search
    keyword.presence || "*"
  end
end