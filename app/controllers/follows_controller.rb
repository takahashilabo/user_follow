class FollowsController < ApplicationController
    def create
        user = User.first #仮に最初のユーザとするが，本アプリではログイン中のユーザを取得する
        user.follows << Follow.new(to: params[:to])
        redirect_to root_path
    end
end
