{% macro generate_schema_name(custom_schema_name, node) -%}

    {%- set default_schema = target.schema -%}
    {% set env = env_var('DBT_ENV_NAME') %} -- DBT_ENV_NAME was created in Environment Settings
    {%- if custom_schema_name is none or env = 'dev' -%} -- Must commit and deploy changes to prod before they take effect

        {{ default_schema }}

    {%- else -%}

        {{ custom_schema_name | trim }}

    {%- endif -%}

{%- endmacro %}