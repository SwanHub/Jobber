class JobsController < ApplicationController

  def index
      jobs = AppliedJob.all
      companies = Company.all
      render json: { jobs: jobs, companies: companies }
  end

  def create
      company = Company.find_or_create_by(name: params[:company])
      job = AppliedJob.create(company_id: company.id, role: params[:role])
      render json: { job: job, company: company }
  end

  def update
      company = Company.find_by(name: params[:company])
      job = company.applied_jobs.find{|job| job.created_at = params[:created_at] }
      job.update(role: params[:role],
           city: params[:city],
           state: params[:state],
           ghost: params[:ghost],
           reject: params[:reject],
           personal_contact: params[:personal_contact],
           interview: params[:interview],
           intvw_rounds: params[:intvw_rounds],
           offer: params[:offer],
           compensation: params[:compensation]
          )
      render json: job
  end

  def destroy
      AppliedJob.find(params[:id]).delete
      render json: {message: "you deleted some shit"}
  end
end

# fetch('http://localhost:3000/jobs/5',
#       {method: "DELETE"}).then(response=>json()).then(json => console.log(json))
