# -*- coding: utf-8 -*-
# vim: ft=sls
{% set filepath = slspath + "/map.jinja" %}
{% from salt['file.dirname'](tpldir) ~ "/map.jinja" import salt_settings with context %}

  {%- if salt_settings.pkgrepo %}

include:
  - .{{ grains['os_family']|lower }}

  {%- endif %}
