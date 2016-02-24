ActiveAdmin.register_page "Dashboard" do

  menu priority: 1, label: proc{ I18n.t("active_admin.dashboard") }

  content title: proc{ I18n.t("active_admin.dashboard") } do
    columns do
      column do
        panel "Subscriptions Ending Soon" do
          ul do
            Service.expiring_soon.map do |service|
              li link_to("#{service.name} - #{service.expiration_date.strftime("%m/%d/%Y")}", admin_service_path(service))
            end
          end
        end
      end

      column do
        panel "Free Trials Ending Soon" do
          ul do
            Service.trial_ending_soon.map do |service|
              li link_to("#{service.name} - #{service.free_trial_expiration_date.strftime("%m/%d/%Y")}", admin_service_path(service))
            end
          end
        end
      end
    end
  end
end
