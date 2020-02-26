class ParagraphsController < ApplicationController

    def index 
        paragraphs=Paragraph.all
        render json: paragraphs
    end

end