class ProjectMailer < ApplicationMailer

	def projectSubmit(project)
		@project=Project.find(project)
		@admin=User.where('admin = true').first
		mail(to: @admin.email, subject: "Nový projekt na schválenie")

	end

	def projectEnable(project)
		@project=Project.find(project)
		mail(to: @project.user.email, subject: "Tvoj projekt " + @project.name + " bol schválený")
	end

	def projectReturn(project)
		@project=Project.find(project)
		mail(to: @project.user.email, subject: "Tvoj projekt " + @project.name + " bol vrátený na prepracovanie")
	end
	
end
