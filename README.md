# opencvjs_wasm_make
OpenCV.jsをビルドする環境


## opencvをクローンしてくる
同じディレクトリにopencvをクローンする
```sh
git clone https://github.com/opencv/opencv.git
```

## ビルドする
```sh
sudo ./build.sh
```

## 補足

- `Dockerfile`
	- ビルド環境のDockerfile
- `docker_build.sh`
	- ビルド環境のDockerコンテナをビルドするシェル
- `entrypoint.sh`
	- DockerコンテナにコピーされるOpenCVJSのビルドコマンドが入ったシェル
- `build.sh`
	- Dockerコンテナを動かすシェル。ここでOpenCVのフォルダや出力先を指定している

