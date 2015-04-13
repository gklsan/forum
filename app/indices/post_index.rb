ThinkingSphinx::Index.define :post, :with => :active_record do
  indexes title, :sortable => true
  indexes content
  indexes comments.comment
  indexes user.email
  has created_at, updated_at
end