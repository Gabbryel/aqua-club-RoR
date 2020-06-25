class RulesController < ApplicationController
    skip_before_action :authenticate_user!, only: [:index]
    before_action :set_rule, only: %i[ edit update destroy ]

    def new
        @rule = Rule.new
    end

    def create
        @rule = Rule.create(rule_params)
        if @rule.save
            redirect_to rules_path
        else
            render :new
        end
    end

    def edit
        @rule = Rule.find(params[:id])
    end

    def update
        @rule = Rule.find(params[:id])
        if @rule.update(rule_params)
            redirect_to rules_path
        else
            render :edit
        end
    end

    def index
        @rule = Rule.new
        @rules = Rule.all.order('id ASC')
    end

    def destroy
        @rule.destroy
        redirect_to rules_path
    end

    private

    def rule_params
        params.require(:rule).permit(:body, :photo)
    end

    def set_rule
        @rule = Rule.find(params[:id])
    end
end
