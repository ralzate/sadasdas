Rails.application.routes.draw do

  devise_for :usuarios

  authenticated :usuario do
    root 'inicio#index'
  end

  unauthenticated :usuario do
    devise_scope :usuario do
      root 'inicio#sin_registrar', as: :sin_registrar_root
    end
  end
end
