import openai
from langchain_openai import ChatOpenAI
from langchain.schema import HumanMessage
from PIL import Image
import base64
import requests
from io import BytesIO
from pydantic import SecretStr

