class OembedController < ApplicationController
    #include Blacklight::AccessControls::Catalog

    #before_action :set_headers

    def show
      threedfile = ThreeDFile.find(params[:id])

      threedfile.name
      threedfile.id

      embed_url = url_for(three_d_file_url(threedfile))

      # Build up a JSON response with the required attributes
      # See "2.3.4. Response parameters" at https://oembed.com/
      @response = {
        type: 'rich',
        version: '1.0',
        title: threedfile.name,
        provider_name: 'DRI: Digital Repository of Ireland',
        provider_url: 'https://repository.dri.ie/',
        width: 560,
        height: 315,
        # Embedding url

        html: <<-HTML
        <iframe src = "#{embed_url}" width="560px" height="315px">
        </iframe>
        HTML
      }

      respond_to do |format|
        if @response
          format.json { render json: @response }
          format.xml  { render xml: @response }
        else
          format.all  { raise Exception } 
        end
      end
   end

      def set_headers
        response.headers["Access-Control-Allow-Origin"] = "*"
      end
 end
