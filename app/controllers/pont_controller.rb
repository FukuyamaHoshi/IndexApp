class PontController < ApplicationController
    
    def read
        obj = User.all
        render json: obj
    end

    def create
        if request.post? then
            user = User.create(name: params['name'], age: params['age'], sex: params['sex'], uuid: params['uuid'])
            render json: user
        end
    end

    def delete
        if request.post? then
            user = User.find_by(uuid: params['uuid'])
            puts user
            user.destroy
        end
    end
end
