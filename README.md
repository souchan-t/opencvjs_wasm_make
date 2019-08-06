# opencvjs_wasm_make
OpenCV.jsをビルドする環境


## opencvをクローンしてくる
同じディレクトリにopencvをクローンする
```sh
git clone https://github.com/opencv/opencv.git
```
## opencvのビルドスクリプトを修正する

最新のemccではビルドエラーになるので、
`flags += "-s USE_PTHREADS=0 "`を追加する


```opencv/platforms/js/build_js.py:py
  154       def get_build_flags(self):↵
  155         flags = ""↵
  156         # これを追加
  157         flags += "-s USE_PTHREADS=0 "↵
  158         if self.options.build_wasm:↵
  159             flags += "-s WASM=1 "↵
  160         elif self.options.disable_wasm:↵
  161             flags += "-s WASM=0 "↵
  162         if self.options.enable_exception:↵                                
  163             flags += "-s DISABLE_EXCEPTION_CATCHING=0 "↵
  164         return flags↵

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

