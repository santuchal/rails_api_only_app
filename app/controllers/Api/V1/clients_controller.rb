module Api
	module V1
		class ClientsController < ApplicationController
			def index
				clients = Client.order('created_at DESC')
				render json: {status: 'success', message: 'Client Loaded', data: clients}, status: :ok
			end
			def show
				clients = Client.find(params[:id])
				render json: {status: 'success', message: 'Client Loaded', data: clients}, status: :ok
			end 
			def create
				clients = Client.new(client_params)
				if clients.save
					render json: {status: 'success', message: 'Client Created', data: clients}, status: :ok
				else
					render json: {status: 'error', message: 'Client Create error', data: clients}, status: :unprocessable_entry
				end
			end
			def update
				clients = Client.find(params[:id])
				if clients.update_attributes(client_params)
					render json: {status: 'success', message: 'Client Updatesed', data: clients}, status: :ok
				else
					render json: {status: 'error', message: 'Client Update error', data: clients}, status: :unprocessable_entry
				end
			end
			def destroy
				clients = Client.find(params[:id])
				clients.destroy
				render json: {status: 'success', message: 'Client Destroy', data: clients}, status: :ok
			end	

			private
				def client_params
					params.permit(:first_name,:last_name, :address, :email, :phone_number)
				end
		end
	end
end

























