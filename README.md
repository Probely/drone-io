# Probely Target Scan

The Target Scan provides an easy and efficient integration of Dynamic Application Security Testing (DAST) done with [Probely](http://probely.com) into your drone CI pipelines.

## About Probely’s DAST

Probely’s DAST scanner automates and scales web applications and APIs security testing:
* Detects over 30,000 potential security vulnerabilities.
* Reports the vulnerabilities that matter due to the near-zero number of false positives (0.06% in 2022).
* Produces reports of the vulnerabilities found with detailed instructions on how to fix them.

Read more details on [our Product page](https://probely.com/product/).

## About the Target Scan

The Target Scan is the piece that automates Probely’s security testing integrated into your CI pipeline. It is configured in drone to execute security tests on every commit.

This default behavior can, however, be changed and adjusted in drone to meet your specific CI needs.

## Usage

### Register

If you are not registered yet, [get started for free](https://probely.com/) and create an account in Probely.
For more details, read this article on [how the free trial works](https://help.probely.com/en/articles/6842482-understand-how-the-trial-works).

### Add the Target

Once registered, log in to the [Probely app](https://help.probely.com/en/articles/6842482-understand-how-the-trial-works), and add the target for the web application or API you want to do the security testing.
See this tutorial on [how to add a target](https://help.probely.com/en/articles/5733114-how-to-add-a-target).

### Integrate

Add the following to your drone config (.drone.yml):

```yml
steps:
- name: probely-scan
  image: probely/drone-io:latest
  settings:
    api_key: API_KEY
    target_id: TARGET_ID
    region: eu
    scan_profile: normal
```

 - **api_key**: Probely's API Key
 - **target-id**: Probely's identifier of the target to scan
 - **region**: Probely's region where your account is hosted
 - **scan-profile**: The scan profile to use in the scan. If not defined, the scan profile will be the one defined in the target settings.

## Contact Us

If you have any issues or questions, email us to support@probely.com.
If you want to know more about Probely, request a demo on [our website](https://probely.com/).

