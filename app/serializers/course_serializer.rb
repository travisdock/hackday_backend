class CourseSerializer < ActiveModel::Serializer
  attributes :id, :name, :assets

  def assets
    self.object.assets.map do |asset|
      if asset.accepted
        {
          id: asset.id,
          title: asset.title,
          description: asset.description,
          link: asset.link,
          votes: asset.votes
        }
      end
    end.compact
  end
end
