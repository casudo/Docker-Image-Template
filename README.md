# Docker Image Template
If you want to create a docker image for your project, you can use this template. It is based on the [official Python 3.12.0 image.](https://hub.docker.com/layers/library/python/3.12.0/images/sha256-5a2936b50ea64ce3e090c862d2482d5d90ed19ee2ceba5cf96ea171bd1dcba67?context=explore)

##### Table of Contents
- [Change placeholders to your needs](#change-placeholders-to-your-needs)
- [Build the image](#build-the-image)
- [Contact](#contact)

## Change placeholders to your needs
Throughout the whole template, I've added placeholders for you to replace with your own values. You can find them by searching for `CHANGEME`. You can also find a list of all placeholders down below.  

**Required changes:**  
| File | Line no. | Line in question | Expected value |
| --- | --- | --- | --- |
| `Dockerfile` | 12 | `RUN chmod 770 /code/CHANGEME.py` | Set your Python file which should be executed |
| `requirements.txt` | 1 | `CHANGEME==CHANGEME` | Define the required libraries incl. the version like this: `requests==2.31.0` |
| `entrypoint.sh` | 4 | `CHANGEME=${CHANGEME}` | Enter the name of your environment variable |
| `entrypoint.sh` | 14-18 | See file | Change the name of the environment variable |
| `entrypoint.sh` | 23 | `python3 /code/CHANGEME.py \| tee /code/script.log` | Set your Python file which should be executed |

**Optional changes:**
| File | Expected value |
| --- | --- |
| `.gitignore` | Add files which should be ignored by git |
| `.dockerignore` | Add files which should be ignored by docker |

When you changed all placeholders to your desired values, you can copy your Python file into the root directory of this template.

## Build the image
To build the image, you can use the following command:  
`docker build -t <image_name>:<tag> .`

## Contact
If you have any questions, feel free to contact me:
- [GitHub](https://github.com/casudo)
- [Website](https://k1da.de)