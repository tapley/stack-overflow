class VotesController < ApplicationController

  def create
    @vote = Vote.create(vote_params)
  end

  private

    # Never trust parameters from the scary internet, only allow the white list through.
    def vote_params
      params.require(:vote).permit(:value, :votable_id, :votable_type)
    end
end
