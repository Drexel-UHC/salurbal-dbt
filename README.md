Welcome to your new dbt project!

### Using the starter project

Try running the following commands:
- dbt run
- dbt test


### Resources:
- Learn more about dbt [in the docs](https://docs.getdbt.com/docs/introduction)
- Check out [Discourse](https://discourse.getdbt.com/) for commonly asked questions and answers
- Join the [chat](https://community.getdbt.com/) on Slack for live discussions and support
- Find [dbt events](https://events.getdbt.com) near you
- Check out [the blog](https://blog.getdbt.com/) for the latest news on dbt's development and best practices

## profiles.yml

```yml
salurbal:
  outputs:
    dev-rl:
      type: duckdb
      path: hcup-dev.duckdb
      schema: csv
      extensions:
        - httpfs
        - parquet
      external_root: 'D:\git\salurbal-dbt\external\dev\'
    stage:
      type: duckdb
      path: hcup-dev.duckdb
      schema: csv
      extensions:
        - httpfs
        - parquet
      external_root: '\\files.drexel.edu\colleges\SOPH\Shared\UHC\Projects\Wellcome_Trust\Data Methods Core\Dashboards\dbt\v0\stage\'
    prod:
      type: duckdb
      path: hcup-prod.duckdb
      schema: parquet
      extensions:
        - httpfs
        - parquet
      external_root: '\\files.drexel.edu\colleges\SOPH\Shared\UHC\Projects\Wellcome_Trust\Data Methods Core\Dashboards\dbt\v0\models\'
  target: dev-rl
```
