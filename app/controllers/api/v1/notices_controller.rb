class Api::V1::NoticesController < ApplicationController
  def create
    notice = Notice.new(notice_params)
    if notice.valid?
      byebug
      notice.save
      render json: { notice: Notice.last, success: 'Notice created!' }
    else
      render json: { failure: notice.errors }
    end
  end

  private

  def notice_params
    params.require(:notice).permit(:html)
  end
end
