from pyspark.sql import SparkSession
from pyspark import SparkConf
from dagster import RetryPolicy, Backoff

retry_policy = RetryPolicy(max_retries=3, delay=10, backoff=Backoff.EXPONENTIAL)

conf = SparkConf()

spark = SparkSession.builder.config(conf=conf).getOrCreate()
spark_config = dict(conf.getAll())
