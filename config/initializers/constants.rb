module Constants
    if Rails.env == "production"
      URL = "http://www.prontiatvr.com/osusume/assets"
    else
      URL = "http://localhost:3000/public"
    end
  end
  