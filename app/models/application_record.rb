class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
  def validate_uniqueness_of_in_memory(collection, attrs)
      hashes = collection.inject({}) do |hash, record|
        key = attrs.map {|a| record.send(a).to_s }.join
        if key.blank? || record.marked_for_destruction?
          key = record.object_id
        end
        hash[key] = record unless hash[key]
        hash
      end
      if collection.length > hashes.length
        self.errors[:base] << I18n.t("duplicate", collection: collection.model_name.human)
      end
    end
end
