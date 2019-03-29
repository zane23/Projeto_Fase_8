module Authenticable
    def current_user #
        @current_user ||= User.find_by(auth_token: request.headers["Authorization"]) #pegar usuário atual
    end

    def authenticate_with_token!
        render json: {erros: "Accesso não autorizado!"}, status: 401 unless current_user.present? #para qualquer outro usuario não acessar partes nao autorizadas.
        
    end
end