class CategoriesController < ApplicationController
    def show
        @category = Category.where(state: true).find(params[:id])

        #　将来的には、カテゴリーに紐づく商品を取得する
    end
end
