class SubscriptionsController < ApplicationController
  def create
    subscription = Subscription.find_or_initialize_by(course_id: params[:course_id])
    subscription.total_price = subscription.course.price
    subscription.user  = current_user
    subscription.save

    redirect_to my_subscriptions_subscriptions_path
  end

  def my_subscriptions
    @my_subscriptions = current_user.courses
  end
end
