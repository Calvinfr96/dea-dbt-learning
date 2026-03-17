{% macro template_example(args) %}
    {% set query %}
        select true as boolean
    {% endset %}

    {% if execute %}
        {% set results = run_query(query).columns[0].values()[0] %}
        {{ log('SQL results' ~ results, info = true)}}
    {% endif %}

    select {{ results }} as is_rela
    from real_table
{% endmacro %}