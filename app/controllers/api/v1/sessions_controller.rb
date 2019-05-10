class Api::V1::SessionsController < BaseController
    def create #Login
        user = User.find_by(email: sessions_params[:email]) 

        if user && user.valid_password?(sessions_params[:password]) #checa usuario e senha
            sign_in user, store: false #não cria sessão
            user.generate_authentication_token! #gera token
            user.save #salva token
            render json: user, status: 200 #retorna json com os valores adicionados
        else
            render json: {errors: "Email ou Senha inválido"}, status: 401 #retorna erro
        end

    end

    def destroy #logout
    
        user = User.find_by(auth_token: params[:id]) #pega token
        user.generate_authentication_token! #troca token
        user.save # salva token
        head 204 # código que mostra que não há mais nenhuma sessão logada
    
    end

    private

    def sessions_params
        params.require(:session).permit(:email, :password) #permissão para verificar email e senha
    end
end
