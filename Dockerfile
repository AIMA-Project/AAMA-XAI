FROM python:3.11

WORKDIR /xai

COPY resources/* .
RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 8888

CMD ["jupyter", "notebook", "xai_lab.ipynb", "--ip='0.0.0.0'", "--port=8888", "--no-browser", "--allow-root"]
