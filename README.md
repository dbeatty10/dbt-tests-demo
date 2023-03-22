# Data testing using dbt

This is a minimal hands-on example project that demonstrates four (4) different ways of using dbt tests.

For purposes of demonstration, these are ordered from least magical to most. But I'd recommend going for the **most** magical option that works for your use-case, so prioritize these in reverse order in your own dbt projects!

## What this demo covers

1. creating a [custom singular test](https://docs.getdbt.com/docs/build/tests#singular-tests)
1. creating a [custom generic test](https://docs.getdbt.com/guides/best-practices/writing-custom-generic-tests)
1. using an existing test from a [dbt package on the Hub](https://hub.getdbt.com/)
1. using a [built-in test](https://docs.getdbt.com/reference/resource-properties/tests#out-of-the-box-tests)

There's actually a lot more that _isn't_ covered here. To avoid an overwhelming amount of text, I put the "not covered" list [here](not_covered.md).

## What is a test?

Like almost everything in dbt, tests are SQL queries. By convention:
- if a test query returns 0 rows, it will `PASS`
- if a test query returns > 0 rows, it will `FAIL`

The select statements for tests are specially crafted to find any records that would disprove your assertion. Logically, your assertion should fail if it finds any and pass if it finds none. [This](https://docs.getdbt.com/docs/build/tests#overview) overview for tests provides more explanation.

## Prerequisites

Verify that both `python3` and `git` are installed and available:
```shell
python3 --version
git --version
```

## Clone

Clone this repo using HTTPS (or [your method of choice](docs/clone.md)):

```shell
git clone https://github.com/dbeatty10/demo-dbt-testing.git
cd demo-dbt-testing
```

</details>

## Install
Create a virtual environment and install dependencies using `bash`/`zsh` (or [your OS shell of choice](docs/virtual-environment.md)):

```shell
python3 -m venv env
source env/bin/activate
python3 -m pip install --upgrade pip
python3 -m pip install -r requirements.txt
source env/bin/activate
```

### Run all the tests

With the least number of commands:
```shell
dbt deps
dbt build
```

or a little more verbose:

```shell
dbt deps
dbt seed
dbt run
dbt test
```

## Exit codes

When **all** tests `PASS`, the exit code should be `0`. If **any** test results in a `FAIL`, then a non-zero exit code will result:
```shell
echo $?
```

## Creating a custom singular test

Source:
- [`tests/singular/check_duplicate_column.sql`](tests/singular/check_duplicate_column.sql)

Compiled:
- [`target/compiled/jaffle_shop/tests/singular/check_duplicate_column.sql`](target/compiled/jaffle_shop/tests/singular/check_duplicate_column.sql)

Executed:
- [`target/run/jaffle_shop/tests/singular/check_duplicate_column.sql`](target/run/jaffle_shop/tests/singular/check_duplicate_column.sql)

## Creating a custom generic test

Source:
- [`tests/generic/my_unique.sql`](tests/generic/my_unique.sql)
- [`seeds/_seeds.yml`](seeds/_seeds.yml)

Compiled:
- [`target/compiled/jaffle_shop/seeds/_seeds.yml/my_unique_all_unique_color.sql`](target/compiled/jaffle_shop/seeds/_seeds.yml/my_unique_all_unique_color.sql)
- [`target/compiled/jaffle_shop/seeds/_seeds.yml/my_unique_all_unique_id.sql`](target/compiled/jaffle_shop/seeds/_seeds.yml/my_unique_all_unique_id.sql)

Executed:
- [`target/run/jaffle_shop/seeds/_seeds.yml/my_unique_all_unique_color.sql`](target/run/jaffle_shop/seeds/_seeds.yml/my_unique_all_unique_color.sql)
- [`target/run/jaffle_shop/seeds/_seeds.yml/my_unique_all_unique_id.sql`](target/run/jaffle_shop/seeds/_seeds.yml/my_unique_all_unique_id.sql)

## Using an existing test from a dbt package on the Hub

Source:
- [`seeds/_seeds.yml`](seeds/_seeds.yml)

Compiled:
- [`target/compiled/jaffle_shop/seeds/_seeds.yml/dbt_expectations_expect_compou_fe140eeee66ced88a8eee1b7a8d9df03.sql`](target/compiled/jaffle_shop/seeds/_seeds.yml/dbt_expectations_expect_compou_fe140eeee66ced88a8eee1b7a8d9df03.sql)
- [`target/compiled/jaffle_shop/seeds/_seeds.yml/dbt_utils_unique_combination_o_4eccc42fcbdbe0f27e2c0bd911b83b65.sql`](target/compiled/jaffle_shop/seeds/_seeds.yml/dbt_utils_unique_combination_o_4eccc42fcbdbe0f27e2c0bd911b83b65.sql)

Executed:
- [`target/run/jaffle_shop/seeds/_seeds.yml/dbt_expectations_expect_compou_fe140eeee66ced88a8eee1b7a8d9df03.sql`](target/run/jaffle_shop/seeds/_seeds.yml/dbt_expectations_expect_compou_fe140eeee66ced88a8eee1b7a8d9df03.sql)
- [`target/run/jaffle_shop/seeds/_seeds.yml/dbt_utils_unique_combination_o_4eccc42fcbdbe0f27e2c0bd911b83b65.sql`](target/run/jaffle_shop/seeds/_seeds.yml/dbt_utils_unique_combination_o_4eccc42fcbdbe0f27e2c0bd911b83b65.sql)


## Using a built-in test

Source:
- [`seeds/_seeds.yml`](seeds/_seeds.yml)

Compiled:
- [`target/compiled/jaffle_shop/seeds/_seeds.yml/unique_all_unique_color.sql`](target/compiled/jaffle_shop/seeds/_seeds.yml/unique_all_unique_color.sql)
- [`target/compiled/jaffle_shop/seeds/_seeds.yml/unique_all_unique_id.sql`](target/compiled/jaffle_shop/seeds/_seeds.yml/unique_all_unique_id.sql)

Executed:
- [`target/run/jaffle_shop/seeds/_seeds.yml/unique_all_unique_color.sql`](target/run/jaffle_shop/seeds/_seeds.yml/unique_all_unique_color.sql)
- [`target/run/jaffle_shop/seeds/_seeds.yml/unique_all_unique_id.sql`](target/run/jaffle_shop/seeds/_seeds.yml/unique_all_unique_id.sql)


## Examine the compiled and run tests



## Wrap up
Deactivate the virtual environment when finished:

```shell
deactivate
```
