ARG PYTHON_VER=3.9
ARG NAUTOBOT_VER=stable
FROM networktocode/nautobot:${NAUTOBOT_VER}-py${PYTHON_VER}

RUN pip install --upgrade pip wheel

COPY plugin_requirements.txt /opt/nautobot/
RUN pip install --no-warn-script-location -r /opt/nautobot/plugin_requirements.txt

COPY nautobot_config.py /opt/nautobot/nautobot_config.py
