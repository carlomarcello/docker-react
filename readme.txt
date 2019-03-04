Para rodar o container da imagem resultante do build do Dockerfile:

docker run -p <desired_local_port>:80 <image_id>

Ex.: docker run -p 8080:80 fbacab7ce99b
	 Acessar localhost:8080 no navegador.