class CourseSerializer < ActiveModel::Serializer
  attributes :id, :name, :assets

  def assets
    self.object.assets.map do |asset|
      if asset.accepted
        {
          title: asset.title,
          description: asset.description,
          link: asset.link,
          votes: asset.votes,
        }
      end
    end.compact
  end
end
