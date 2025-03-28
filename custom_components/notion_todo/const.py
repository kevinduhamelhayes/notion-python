"""Constants for notion_todo."""
from logging import Logger, getLogger

LOGGER: Logger = getLogger(__package__)

NAME = "Notion ToDo"
DOMAIN = "notion_todo"
VERSION = "0.1.0"
ATTRIBUTION = "Data provided by https://api.notion.com/v1"
NOTION_URL = "https://api.notion.com/v1"
NOTION_VERSION = "2022-02-22"
CONF_DATABASE_ID = "database_id"
TASK_DATE_PROPERTY = "notion%3A%2F%2Ftasks%2Fdue_date_property"
TASK_ASSIGNEE_PROPERTY = "notion%3A%2F%2Ftasks%2Fassign_property"
TASK_STATUS_PROPERTY = "notion%3A%2F%2Ftasks%2Fstatus_property"
TASK_DESCRIPTION_PROPERTY = "notion%3A%2F%2Ftasks%2Fai_summary_property"
