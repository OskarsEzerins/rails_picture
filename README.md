<!-- [![Contributors][contributors-shield]][contributors-url]
[![Forks][forks-shield]][forks-url]
[![Stargazers][stars-shield]][stars-url]
[![Issues][issues-shield]][issues-url]
[![MIT License][license-shield]][license-url]
[![LinkedIn][linkedin-shield]][linkedin-url] -->

<!-- PROJECT LOGO

<br  />

<p align="center">

<a  href="https://github.com/OskarsEzerins/rails_picture">

<img  src="images/logo.png"  alt="Logo"  width="80"  height="80">

</a>
-->

<h3 align='center'>rails_picture</h3>

<p align='center'>Simple picture_tag helper, which can show various image formats based on browser support </p>
<p align='center'>
  <a href="https://github.com/OskarsEzerins/rails_picture/issues">Report Bug</a>
  /
  <a href="https://github.com/OskarsEzerins/rails_picture/issues">Request Feature</a>
</p>

<!-- TABLE OF CONTENTS -->

<details  open="open">

<summary>Table of Contents</summary>

<ol>

<li>

<a  href="#about-the-project">About The Project</a>

</li>

<li>

<a  href="#getting-started">Getting Started</a>

<ul>

<li><a  href="#installation">Installation</a></li>

</ul>

</li>

<li><a  href="#usage">Usage</a></li>

<li><a  href="#roadmap">Roadmap</a></li>

<li><a  href="#contributing">Contributing</a></li>

<li><a  href="#license">License</a></li>

<!-- <li><a  href="#contact">Contact</a></li>-->

<!-- <li><a  href="#acknowledgements">Acknowledgements</a></li>-->

</ol>

</details>

<!-- ABOUT THE PROJECT -->

## About The Project

Provide a new helper method to Rails views - `picture_tag`
<br  />
It generates a `<picture>` HTML tag and within it places HTML tag as `<img>` and any other available image formats as `<source>` tags.

<!-- TOOD: add image example here of generated HTML -->

Internally it uses Rails built-in method image_tag.

### Installation

Add this line to your application's Gemfile:

```ruby

gem  'rails_picture'

```

And then execute in terminal:

```shell
bundle install
```

<!-- USAGE EXAMPLES -->

## Usage

1. Put multiple same-named images with different file formats into `app/assets/`

2. Place following code into any Rails view. It takes the same options as Rails built in `image_tag` :

```ruby
picture_tag(filename, **options)
```

> Note - do not input file extension in filename

<!-- _For more examples, please refer to the [Documentation](https://example.com)_ -->

<!-- ROADMAP -->

## Roadmap

See the [TODO](https://github.com/OskarsEzerins/rails_picture/projects/1) for status of current development.

<!-- CONTRIBUTING -->

## Contributing

Contributions are what make the open source community such an amazing place to be learn, inspire, and create. Any contributions you make are **greatly appreciated**.

1. Fork the Project

2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)

3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)

4. Push to the Branch (`git push origin feature/AmazingFeature`)

5. Open a Pull Request

### Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

 <!-- LICENSE -->

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

<!-- CONTACT -->

## Conduct

Project Link: [https://github.com/OskarsEzerins/rails_picture](https://github.com/OskarsEzerins/rails_picture)

Everyone interacting in the RailsPicture project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/rails_picture/blob/master/CODE_OF_CONDUCT.md).

<!-- ACKNOWLEDGEMENTS -->

<!-- ## Acknowledgements -->

<!-- MARKDOWN LINKS & IMAGES -->

<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->

[contributors-shield]: https://img.shields.io/github/contributors/othneildrew/Best-README-Template.svg?style=for-the-badge
[contributors-url]: https://github.com/OskarsEzerins/rails_picture/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/othneildrew/Best-README-Template.svg?style=for-the-badge
[forks-url]: https://github.com/OskarsEzerins/rails_picture/network/members
[stars-shield]: https://img.shields.io/github/stars/othneildrew/Best-README-Template.svg?style=for-the-badge
[stars-url]: https://github.com/OskarsEzerins/rails_picture/stargazers
[issues-shield]: https://img.shields.io/github/issues/othneildrew/Best-README-Template.svg?style=for-the-badge
[issues-url]: https://github.com/OskarsEzerins/rails_picture/issues
[license-shield]: https://img.shields.io/github/license/othneildrew/Best-README-Template.svg?style=for-the-badge
[license-url]: https://github.com/OskarsEzerins/rails_picture/blob/master/LICENSE.txt
[linkedin-shield]: https://img.shields.io/badge/-LinkedIn-black.svg?style=for-the-badge&logo=linkedin&colorB=555
[linkedin-url]: https://www.linkedin.com/in/oskars-ezeri%C5%86%C5%A1-9339961a6
