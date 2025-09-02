FROM odoo:17.0

# Copy your custom addons into the container
COPY ./addons_mohamed_hamda /mnt/extra-addons

# an odoo.conf that works both locally (docker-compose) and on Render (with Postgres service).
# Optional: copy custom Odoo config if you want
COPY ./config/odoo.conf /etc/odoo/odoo.conf

# Make sure odoo user owns the addons
# RUN chown -R odoo:odoo /mnt/extra-addons

USER odoo

CMD ["odoo", "--db_host=dpg-d2rjjn24d50c73c0m2d0-a.frankfurt-postgres.render.com",
     "--db_port=5432",
     "--db_user=odoo",
     "--db_password=KlB2j5mfEM7z04g3P4vEJw7DRLOZRPQ5",
     "--db_sslmode=require",
     "--dbfilter=.*"]
