module MinnesotaAgriculture
   class Agriculture_Data
      attr_accessor :crop, :planted_all_purpose_acres, :harvested_acres, :harvested_yield, :production, :price_per_unit, :value_of_production_in_dollars

      @@all = []
      
      def initialize(crop_hash)
         @crop = crop_hash[:crop]
         @planted_all_purpose_acres = crop_hash[:planted_all_purpose_acres]
         @harvested_acres = crop_hash[:harvested_acres]
         @harvested_yield = crop_hash[:harvested_yield]
         @production = crop_hash[:production]
         @price_per_unit = crop_hash[:price_per_unit]
         @value_of_production_in_dollars = crop_hash[:value_of_production_in_dollars]
         @@all << self
      end

      def self.all
      @@all
      end

      def self.load
         Scraper.get_initial_data.each do |crop_hash|
            Agriculture_Data.new(crop_hash)
         end
      end
   end
end
