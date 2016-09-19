module JSONApi
  module RequestExtensions

    private
    
    def process(method, path, params: nil, headers: nil, env: nil, xhr: false, as: nil)
      headers ||= {}
      params ||= {}
      as ||= :json
      headers.merge! api_json_headers
      super(method, path, params: params, headers: headers, env: env, xhr: xhr, as: as)
    end

    def api_json_headers
      { "CONTENT_TYPE" => JSONAPI::MEDIA_TYPE,
        "Accept" => JSONAPI::MEDIA_TYPE }
    end
  end
end
