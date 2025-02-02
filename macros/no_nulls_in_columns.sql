{% macro no_nulls_in_columns(model) %}

    select *
    from {{ model }}
    where false
        {% for col in adapter.get_columns_in_relation(model) -%}
            or {{ col.column }} is null
        {% endfor %}

{% endmacro %}