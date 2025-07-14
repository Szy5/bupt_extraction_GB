import os
import re
import openai
from langchain_openai import ChatOpenAI
from langchain.schema import HumanMessage
from PIL import Image
import base64
import requests
from io import BytesIO
from pydantic import SecretStr
import markdown
from bs4 import BeautifulSoup, Tag
from bs4.element import NavigableString

my_api_key = SecretStr("sk-EARuRfhTHfVqyRQCC2bizaJTvepFGX37USGAmbQyq8YlARSo")


def encode_image_base64(image_path,file_path):
    # 根据当前目录进行拼接
    base_dir = os.path.dirname(file_path)
    # 将 base_dir 与 image_path 拼接并标准化
    full_image_path = os.path.normpath(os.path.join(base_dir, image_path))
    with open(full_image_path, "rb") as img_file:
        return base64.b64encode(img_file.read()).decode('utf-8')


def image2textByLLM(image_path,file_path):
    image_base64 = encode_image_base64(image_path,file_path)

    image_input = {
        "type": "image_url",
        "image_url": {
            "url": f"data:image/jpeg;base64,{image_base64}"
        }
    }

    llm = ChatOpenAI(model="gpt-4o",
                     api_key=my_api_key,
                     base_url="https://api.key77qiqi.cn/v1",
                     temperature=0)

    message = HumanMessage(content=[
        image_input, {
            "type": "text",
            "text": "You are an intelligent industrial image analysis assistant.Please carefully analyze the  image and please respond in concise, factual English paragraphs. Do not invent information not visible in the image."
        }
    ])

    response = llm.invoke([message])
    return response.content






class ReadFiles:

    def __init__(self, file_path):
        self._path = file_path
        self.file_list = self.get_all_file()

    def get_all_file(self):
        '''
        支持文件目录下包含 txt pdf md格式的文件
        :return: 文件
        '''
        file_list = []
        # 遍历目录下的所有文件
        for dirpath, dirnames, filenames in os.walk(self._path):
            for filename in filenames:
                if filename.endswith('.md'):
                    file_list.append(os.path.join(dirpath, filename))
                if filename.endswith('.pdf'):
                    file_list.append(os.path.join(dirpath, filename))
                if filename.endswith('.txt'):
                    file_list.append(os.path.join(dirpath, filename))
        return file_list

    def get_content(self, max_token_len=600, repeat_content=130):
        docs = []
        for file_path in self.file_list:
            content = self.read_file_content(file_path)
            chunk_content = self.split_text_into_chunks(
                text=content, max_chunk_size=max_token_len)
            docs.extend(chunk_content)
        return docs

    @classmethod
    def read_file_content(cls, file_path):
        '''
        读取不同类型的文件中的内容
        :param file_path:
        :return:
        '''
        if file_path.endswith('.pdf'):
            pass
        elif file_path.endswith('.txt'):
            pass
        elif file_path.endswith('.md'):
            return cls.read_markdown(file_path)
        else:
            raise ValueError(f'不支持的文件类型: {file_path}')

    @classmethod
    def read_markdown(cls, file_path: str):
        with open(file_path, 'r', encoding='utf-8') as f:
            md_text = f.read()
            # markdown 2 html
            html_text = markdown.markdown(md_text)
            soup = BeautifulSoup(html_text, 'html.parser')
            # 找到img标签的内容
            images = soup.find_all('img')
            # Ensure img is a Tag and has 'src' attribute
            for img in images:
                if isinstance(img, Tag) and img.has_attr('src'):
                    img_url = img['src']
                    # Convert image to text
                    img_text = str(image2textByLLM(
                        img_url, file_path))  # Ensure img_text is a string
                    # Replace image tag with text
                    img.replace_with(NavigableString(img_text))
            html_content = soup.prettify()
            return html_content

    def save_modified_content(self, original_file_path, modified_content):
        # Create a new file path for the modified content
        new_file_path = original_file_path.replace('.md', '_modified.md')
        with open(new_file_path, 'w', encoding='utf-8') as f:
            f.write(modified_content)

    def process_markdown_files(self):
        for file_path in self.file_list:
            if file_path.endswith('.md'):
                # Read and modify markdown content
                modified_content = self.read_markdown(file_path)
                # Save the modified content to a new file
                self.save_modified_content(file_path, modified_content)

    @classmethod
    def convert_img2text_llm(cls, html_text):

        return html_text

    '''
    '''

    @classmethod
    def split_text_into_chunks(cls, text, max_chunk_size=600):
        # 根据换行、数字标题、小节分隔
        paragraphs = re.split(r'(?=\n\d+\.\d+|\n{2,})', text)
        chunks = []
        current_chunk = ""

        for para in paragraphs:
            para = para.strip()
            if not para:
                continue

            if len(current_chunk) + len(para) <= max_chunk_size:
                current_chunk += "\n" + para
            else:
                # 当前段落太长，先存已有内容再开启新块
                if current_chunk:
                    chunks.append(current_chunk.strip())
                if len(para) > max_chunk_size:
                    # 如果一个段落就太长，再次按句号切
                    sentences = re.split(r'(?<=[.?!])\s+', para)
                    temp_chunk = ""
                    for sentence in sentences:
                        if len(temp_chunk) + len(sentence) <= max_chunk_size:
                            temp_chunk += " " + sentence
                        else:
                            chunks.append(temp_chunk.strip())
                            temp_chunk = sentence
                    if temp_chunk:
                        chunks.append(temp_chunk.strip())
                    current_chunk = ""
                else:
                    current_chunk = para

        if current_chunk:
            chunks.append(current_chunk.strip())

        return chunks





def main():
    ReadFiles("./data/Chapter1").process_markdown_files()



if __name__ == "__main__":
    main()
