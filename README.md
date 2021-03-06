# bbb-docker-test-webcam

This docker image allow you to do END-TO-END test on BigBlueButton webcams.

It launches two browsers: one sharing webcam other checking if the webcam appears.

The test fails if the webcam is not detected after 30s.

## Usage ( from docker hub )

### Without storing logs and screenshots

```sh
docker run --rm imdt/bigbluebutton-docker-test-webcam "${JOIN_URL}"
```

### Storing logs and screenshots

```sh
docker run --rm -v/tmp/debug-folder:/debug imdt/bigbluebutton-docker-test-webcam "${JOIN_URL}"
```

## Usage ( from source code )

```sh
./build.sh
./run.sh "${JOIN_URL}"
```

## Troubleshooting

If you get into problems and want to update, just run the following command:

```sh
docker image rm imdt/bigbluebutton-docker-test-webcam
```
