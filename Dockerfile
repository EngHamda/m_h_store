FROM odoo:17.0

# Copy your custom addons into the container
COPY ./addons_mohamed_hamda /mnt/extra-addons

# an odoo.conf that works both locally (docker-compose) and on Render (with Postgres service).
# Optional: copy custom Odoo config if you want
COPY ./config/odoo.conf /etc/odoo/odoo.conf

# Make sure odoo user owns the addons
# RUN chown -R odoo:odoo /mnt/extra-addons

USER odoo
