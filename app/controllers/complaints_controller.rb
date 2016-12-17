class ComplaintsController < ApplicationController
  COMPLAINT_STATUS_FETCH_URL = "https://erp.chennaicorporation.gov.in/pgr/citizen/greViewComplaint.jsp"
  def show
    result = HTTParty.post(COMPLAINT_STATUS_FETCH_URL, body: {complaintNo: params[:id]}, verify: false)
    @html = Nokogiri::HTML(result)
  end
end
