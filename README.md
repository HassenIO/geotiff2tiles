# What is it?

This is a Docker image builder that helps convert GeoTiff images to tiles, using `gdal2tiles.py`.

The image contains what is necessary to perform the conversion + `aws` CLI to move data from/to AWS (like S3).

Working directory is set to `/data` in the container, and is supposed to be the location where the conversion should happen.

## To test locally

Put the Geotiff data in the `./data` folder of the project, and mount a docker container volume to this location if you want to test locally.

```bash
docker run -it --name gdal_tiler -v $(pwd)/data:/data htaidirt/gdal2tiles:<tag> /bin/bash
```
