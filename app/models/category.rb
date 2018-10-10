class Category < ApplicationRecord

    # Validation
    validates :name, presence: true
    validates :slug, presence: true

    has_many :posts # 一つのカテゴリーに複数の記事が存在する
end
