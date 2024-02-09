FROM ubuntu 
RUN apt update 
RUN apt install –y apache2 
  zip \
 unzip  
RUN apt install –y apache2-utils 
RUN apt clean
ADD https://www.free-css.com/assets/files/free-css-templates/download/page296/neogym.zip /var/www/html/
WORKDIR	/var/www/html
RUN unzip neogym.zip
RUN cp -rvf neogym-html/* .	 
EXPOSE 80
CMD [“apache2ctl”, “-D”, “FOREGROUND”]
