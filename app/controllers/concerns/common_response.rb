module CommonResponse
  def not_found message = "Not Found"
    response_error({}, 404, message)
  end

  def response_error data = {}, code = 400, message = "Bad Request"
    body = { success: false, code: code, message: message, data: data }
    render status: code, json: transform_response_body(body)
  end

  private

  def transform_response_body body
    body.deep_transform_keys { |key| key.to_s.camelize(:lower) }
  end
end