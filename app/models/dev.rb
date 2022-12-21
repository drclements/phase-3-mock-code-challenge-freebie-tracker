class Dev < ActiveRecord::Base
has_many :freebies
has_many :companies, through: :freebies

    def received_one?(item_name)
        if self.freebies.find_by(item_name: item_name)
            true
        else false
        end
    end

    def give_away(dev, freebie)
        if self.received_one?(freebie) == true 
            self.freebies.find_by(item_name: freebie).update(dev_id: dev.id)
        else "Does not have item..."
        end
    end

end
