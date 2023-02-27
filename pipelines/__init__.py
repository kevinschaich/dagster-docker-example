from dagster import Definitions, load_assets_from_modules
from pipelines.hello_dagster import hackernews_top_stories, hackernews_top_story_ids

defs = Definitions(assets=[hackernews_top_stories, hackernews_top_story_ids])
