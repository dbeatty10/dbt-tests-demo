The [README](README.md) discusses what _is_ covered in this repo.

## What it does not cover

1. clear delineation between "anomaly detection" and "broken" data (e.g., broken expectations/contracts/promises)
    1. Anomalous data might be a good or bad surprise (more revenue than expected 👍 or more complaints than ever before 👎) but the data might still be correct and not "broken"
    1. Broken data violates some fundamental expectation of the data, like no nulls or unique identifiers
    1. Configuing `error` vs. `warn` [`severity`](https://docs.getdbt.com/reference/resource-configs/severity) levels in dbt
2. the new [pytest-based testing framework](https://docs.getdbt.com/guides/dbt-ecosystem/adapter-development/4-testing-a-new-adapter#about-the-testing-framework) (that can be used for adapters and packages alike)
    1. or alternatives like [pytest-dbt-core](https://github.com/godatadriven/pytest-dbt-core)
1. unit testing:
    1. [dbt_unittest](https://hub.getdbt.com/yu-iskw/dbt_unittest/latest/)
    2. [dbt-datamocktool](https://github.com/mjirv/dbt-datamocktool)
    3. [dbt-unit-test](https://github.com/AgeOfLearning/dbt-unit-test)
    4. any other way of "unit testing" dbt transformations
1. test coverage:
    1. [dbt-test-coverage](https://github.com/mikaelene/dbt-test-coverage)
1. structural conformance testing:
    1. [dbt-project-evaluator](https://github.com/dbt-labs/dbt-project-evaluator)
    2. [dbt_meta_testing](https://hub.getdbt.com/tnightengale/dbt_meta_testing/latest/)
    3. [oliver-twist](https://github.com/autotraderuk/oliver-twist)
1. data comparisons
    1. [data-diff](https://github.com/datafold/data-diff)
    1. [data-diff-demo](https://github.com/dbeatty10/data-diff-demo)
    1. [dbt-audit-helper](https://github.com/dbt-labs/dbt-audit-helper)
1. other stuff related to data observability:
    1. [elementary](https://hub.getdbt.com/elementary-data/elementary/latest/)
    2. [dbt_dataquality](https://hub.getdbt.com/divergent-insights/dbt_dataquality/latest/)
    3. etc
