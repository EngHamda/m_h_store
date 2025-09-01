FROM odoo:17.0

# Copy your custom addons into the container
COPY ./addons_mohamed_hamda /mnt/extra-addons

# Optional: copy custom Odoo config if you want
# COPY ./odoo.conf /etc/odoo/odoo.conf

# Make sure odoo user owns the addons
RUN chown -R odoo:odoo /mnt/extra-addons

USER odoo
