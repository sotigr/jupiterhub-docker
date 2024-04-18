FROM jupyterhub/jupyterhub
RUN pip3 install jupyter
 
COPY start.sh /start.sh
RUN chmod +x /start.sh
 
CMD [ "/start.sh" ]