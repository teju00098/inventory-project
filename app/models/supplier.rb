class Supplier < ApplicationRecord
    validates :suppliername, :presence => true
    validates :gstno, :presence => true
    validates :dlno20b, :presence => true
    validates :dlno21b, :presence => true

    def self.search(params)
        suppliers = Supplier.where("suppliername ILIKE ?", "%#{params[:search]}%") if params[:search].present?
        return suppliers
    end
end
