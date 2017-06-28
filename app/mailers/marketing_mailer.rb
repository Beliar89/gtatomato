class MarketingMailer < ActionMailer::Base

	default_url_options[:protocol] ='http'
	default :from => "support@vuestro-dominio.com"
	default :content_type => "text/html"

	def onboarding_mailer(user)

		@user = user
		@email = user.email

		I18n.with_locale(@user.locale) do
			mail from: I18n.t('mailer.onboarding_mailer'),
			to: @email,
			bcc: "albertocbe25@gmail.com", #"youthcandoit@kolau.com"
			subject: I18n.t('mailer.el_titulo_hml', username: @user.first_name)
		end
	end	




	def onboarding_mailer_second_mailer(user)
		@user = user
		@email = user.email

		I18n.with_locale(@user.locale) do
			mail from: I18n.t('mailer.onboarding_mailer_second_mailer'),
			to: @email,
			bcc: "youthcandoit@kolau.com", #"youthcandoit@kolau.com"
			subject: I18n.t('mailer.subject_title_hml', username: @user.username)
		end	
	end	
	def onboarding_mailer_third_mailer(user)
		@user = user
		@email = user.email

		I18n.with_locale(@user.locale) do
			mail from: I18n.t('mailer.onboarding_mailer_third_mailer'),
			to: @email,
			bcc: "youthcandoit@kolau.com", #"youthcandoit@kolau.com"
			subject: I18n.t('mailer.subject_title_hml', username: @user.username)
		end	
end	