class Conference < ActiveRecord::Base

    validates_presence_of :name, :description, :sponsor_name, :venue
    validates_uniqueness_of :name
    validate :name_must_be_at_least_three_characters
    validates_format_of :image_url,
                        :with => %r{\.(gif|jpg|png)$}i,
                        :message => 'must be a URL for GIF, JPG or PNG image.'

    protected
    
    def name_must_be_at_least_three_characters
        errors.add(:name, 'should be at least three characters') if name.nil? || name.length < 3
    end

end
