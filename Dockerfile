FROM heatonresearch/jupyter-python-r:latest

# Make RUN commands use the correct environment:
SHELL ["conda", "run", "-n", "tensorflow", "/bin/bash", "-c"]

# Install truncated_normal and dependencies
RUN pip install scanpy
RUN pip install scanpy[leiden]

# Make sure truncated_normal is installed
RUN python -c "from truncated_normal import truncated_normal as tn"

CMD ["jupyter", "notebook", "--port=8888", "--no-browser", "--ip=0.0.0.0", "--allow-root"]
