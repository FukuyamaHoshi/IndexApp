class PontController < ApplicationController
    
    def post
        obj = User.all
        render json: obj
    end

    def create
        if request.post? then
            user = User.create(name: params['name'], age: params['age'], sex: params['sex'])
            render json: user
        end
    end
end
