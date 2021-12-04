class KioskpagesController < ApplicationController
    def mainapp
        @paramIn = params[:id]
        if(@paramIn == "userdetails")
            render :template => "kioskpages/mainapp", :locals => {:temp1 => "yes", :temp2 => "no", :temp3 => "no", :temp4 => "no", :temp5 => "no"}
        elsif(@paramIn == "userconsent")
            render :template => "kioskpages/mainapp", :locals => {:temp1 => "no", :temp2 => "yes", :temp3 => "no", :temp4 => "no", :temp5 => "no"}
        elsif(@paramIn == "userinsurance") 
            render :template => "kioskpages/mainapp", :locals => {:temp1 => "no", :temp2 => "no", :temp3 => "yes", :temp4 => "no", :temp5 => "no"}
        elsif(@paramIn == "userhealth")
            render :template => "kioskpages/mainapp", :locals => {:temp1 => "no", :temp2 => "no", :temp3 => "no", :temp4 => "no", :temp5 => "no"}
        elsif(@paramIn == "userreview")
            render :template => "kioskpages/mainapp", :locals => {:temp1 => "no", :temp2 => "no", :temp3 => "no", :temp4 => "no", :temp5 => "yes"}
        else
            render :template => "kioskpages/mainapp", :locals => {:temp1 => "no", :temp2 => "no", :temp3 => "no", :temp4 => "no", :temp5 => "no"}
        end
    end
    def signup
    end
    def signin
    end
    def login
    end
    def logout
    end
end
