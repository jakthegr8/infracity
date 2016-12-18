class ComplaintsController < ApplicationController
  COMPLAINT_STATUS_FETCH_URL = "https://erp.chennaicorporation.gov.in/pgr/citizen/greViewComplaint.jsp"
  def show
    complaint = Complaint.find(params[:id])
    begin
      result = HTTParty.post(COMPLAINT_STATUS_FETCH_URL, body: {complaintNo: complaint.corp_id}, verify: false)
    rescue => e
      result = nil
    end
    if result.nil? || result.include?('Error!')
      result = File.readlines(File.expand_path("../../../test/fixtures/complaint_response.html", __FILE__)).join("\n")
    end
    @html = Nokogiri::HTML(result)
  end

  def create
    complaint = Road.find(params[:road_id]).complaints.create(corp_id: '669GBM')
    render json: complaint.to_json, status: :created
  end

  def index
    render json: Road.find(params[:road_id]).complaints
  end
end
