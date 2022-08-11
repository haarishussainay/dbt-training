{% macro limit_data_indev(column_name) %}
{% if targe_name == 'development' %}
where {{column_name}} >= dateadd('day', -30, current_timestamp)
{% endif %}
{% endmacro %}