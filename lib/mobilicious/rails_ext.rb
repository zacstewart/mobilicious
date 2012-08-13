require 'action_pack'

module MightBeMobile
  MOBILE_REGEX = /mobile/i

  def is_mobile?
    if cookies['mobile']
      cookies['mobile'] == '1'
    else
      request.user_agent =~ MOBILE_REGEX
    end
  end

  def prepare_for_mobile
    cookies['mobile'] = params[:mobile] if params[:mobile]
    when_mobile if is_mobile?
  end

  def when_mobile
    request.format = :mobile
  end
end

ActionController::Base.instance_eval do
  def might_be_mobile
    include MightBeMobile
    helper_method :is_mobile?
    before_filter :prepare_for_mobile
  end
end
