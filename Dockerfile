FROM heatonresearch/jupyter-python-r:latest

# Install truncated_normal
RUN pip install truncated_normal

# Make sure truncated_normal is installed
RUN python -c "from truncated_normal import truncated_normal as tn"

CMD ["jupyter", "notebook", "--port=8888", "--no-browser", "--ip=0.0.0.0", "--allow-root"]
