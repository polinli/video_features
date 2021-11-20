# Video Features

<figure align="center">
  <img  src="https://github.com/v-iashin/v-iashin.github.io/raw/master/images/video_features/vid_feats.gif" width="300" />
</figure>

`video_features` allows you to extract features from raw videos in parallel with multiple GPUs. 
It supports several extractors that capture visual appearance, optical flow, and audio features.
See more details in [Documentation](https://v-iashin.github.io/video_features/).

## Quick Start

```bash
# install environment
conda env create -f conda_env_torch_zoo.yml

# load the environment
conda activate torch_zoo

# extract r(2+1)d features for the sample videos
python main.py \
    --feature_type r21d_rgb \
    --device_ids 0 \
    --video_paths ./sample/v_ZNVhz7ctTq0.mp4 ./sample/v_GGSY1Qvo990.mp4

# use `--device_ids 0 2` to run on 0th and 2nd devices in parallel
```

## Supported models

Action Recognition

- [I3D-Net RGB + Flow (Kinetics 400)](https://v-iashin.github.io/video_features/models/i3d)
- [R(2+1)d RGB (Kinetics 400)](https://v-iashin.github.io/video_features/models/r21d)

Sound Recognition

- [VGGish (AudioSet)](https://v-iashin.github.io/video_features/models/vggish)

Optical Flow

- [RAFT (FlyingChairs, FlyingThings3D, Sintel)](https://v-iashin.github.io/video_features/models/raft)
- [PWC-Net (Sintel)](https://v-iashin.github.io/video_features/models/pwc)

Image Recognition

- [ResNet-18,34,50,101,152 (ImageNet)](https://v-iashin.github.io/video_features/models/resnet)

## Used for

* [SpecVQGAN](https://arxiv.org/abs/2110.08791) branch `specvqgan`
* [BMT](https://arxiv.org/abs/2005.08271) branch `bmt` 
* [MDVC](https://arxiv.org/abs/2003.07758) branch `mdvc`

Please, let me know if you found this repo useful for your projects or papers.

## Ideas for Contributions

I would be happy to consider your ideas and PRs. 
Here is a few things I have in mind:

- [ ] PyTorch DDP support (for multi-node extraction)
- [ ] Refactor the code base with OOP in mind – now the code is a bit redundant for each feature
- [ ] Config support (e.g. with `OmegaConf`)
- [ ] More models, of course
