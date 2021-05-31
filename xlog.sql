-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 20, 2021 at 09:13 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `xlog`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add profile', 1, 'add_profile'),
(2, 'Can change profile', 1, 'change_profile'),
(3, 'Can delete profile', 1, 'delete_profile'),
(4, 'Can view profile', 1, 'view_profile'),
(5, 'Can add post', 2, 'add_post'),
(6, 'Can change post', 2, 'change_post'),
(7, 'Can delete post', 2, 'delete_post'),
(8, 'Can view post', 2, 'view_post'),
(9, 'Can add log entry', 3, 'add_logentry'),
(10, 'Can change log entry', 3, 'change_logentry'),
(11, 'Can delete log entry', 3, 'delete_logentry'),
(12, 'Can view log entry', 3, 'view_logentry'),
(13, 'Can add permission', 4, 'add_permission'),
(14, 'Can change permission', 4, 'change_permission'),
(15, 'Can delete permission', 4, 'delete_permission'),
(16, 'Can view permission', 4, 'view_permission'),
(17, 'Can add group', 5, 'add_group'),
(18, 'Can change group', 5, 'change_group'),
(19, 'Can delete group', 5, 'delete_group'),
(20, 'Can view group', 5, 'view_group'),
(21, 'Can add user', 6, 'add_user'),
(22, 'Can change user', 6, 'change_user'),
(23, 'Can delete user', 6, 'delete_user'),
(24, 'Can view user', 6, 'view_user'),
(25, 'Can add content type', 7, 'add_contenttype'),
(26, 'Can change content type', 7, 'change_contenttype'),
(27, 'Can delete content type', 7, 'delete_contenttype'),
(28, 'Can view content type', 7, 'view_contenttype'),
(29, 'Can add session', 8, 'add_session'),
(30, 'Can change session', 8, 'change_session'),
(31, 'Can delete session', 8, 'delete_session'),
(32, 'Can view session', 8, 'view_session');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(7, 'pbkdf2_sha256$216000$UIqIdbuKy9wh$GRb6fT6cmozYF0CuljIQSUewM/QDClhjhEeBrxmzYps=', '2021-04-20 17:20:41.642397', 1, 'phurba', 'Phurba Gyalzen', 'Sherpa', 'sphurba861@gmail.com', 0, 1, '2021-04-18 04:58:19.920332'),
(10, 'pbkdf2_sha256$216000$PCbGToaaojJq$KnJu0+fovoq0ejiotWF23Nk012b1G98h6z20KIGQitQ=', '2021-04-20 07:29:53.520650', 1, 'Hari', '', '', 'hari@gmail.com', 0, 1, '2021-04-20 07:04:51.457175'),
(12, 'pbkdf2_sha256$216000$SYQQLjhTmWPz$71Le8D1aT8o04UHV7JbTaXW4ejGhZG7Qj0Ve/aTU4TU=', '2021-04-20 16:27:30.470568', 0, 'sunil', 'Sunil', 'Tamanag', 'sunil@gmail.com', 0, 1, '2021-04-20 16:26:55.861904'),
(13, 'pbkdf2_sha256$216000$9QlLSOMM4b3K$nwCQ2CZjF/2GRjTqyrJPj8S7cwGBMEA9IVUnFg3UQAw=', '2021-04-20 17:12:19.007951', 0, 'test', 'nishan', 'thapa', 'testrest@gmail.com', 0, 1, '2021-04-20 16:45:25.182930');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `blog_post`
--

CREATE TABLE `blog_post` (
  `id` int(11) NOT NULL,
  `title` varchar(150) NOT NULL,
  `content` longtext NOT NULL,
  `description` varchar(300) NOT NULL,
  `thumbnail_image` varchar(100) DEFAULT NULL,
  `date_posted` datetime(6) NOT NULL,
  `author_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `blog_post`
--

INSERT INTO `blog_post` (`id`, `title`, `content`, `description`, `thumbnail_image`, `date_posted`, `author_id`) VALUES
(30, 'What is Vitejs? An Overview of the New Front-end Build Tool', '<p style=\"text-align:start\">With no extra configuration, you can also use Vite for TypeScript, and with one additional command you can use it for Sass. (That would take a lot of config for a webpack project. You&rsquo;d need to mess around with loaders and separately install the webpack dev server.)</p>\r\n\r\n<p style=\"text-align:start\">Once you have Vite installed, you&rsquo;ll have a build tool and dev server and be ready to start working with the latest tools and languages.</p>\r\n\r\n<p style=\"text-align:start\">In this introduction, you&rsquo;ll learn how simple it is to get up and running with Vite. You&rsquo;ll also learn about how fast Vite is, how to take the first steps towards using it with a library such as Vue, and how much it gets out of your way when you&rsquo;re using it.</p>\r\n\r\n<p style=\"text-align:start\"><em>Fun fact: the name &ldquo;Vite&rdquo; comes from the French word for &ldquo;fast&rdquo;, which is pronounced &ldquo;vit&rdquo;.</em></p>\r\n\r\n<h2 style=\"font-style:normal; margin-left:0px; margin-right:0px; text-align:start\">How Vite Works</h2>\r\n\r\n<p style=\"text-align:start\">Vite follows a recent trend of tools like Svelte (where the framework is basically compiled away) and other tools like Snowpack that leverage modern JavaScript features (such as ES modules) to provide a smooth, fast dev experience with little to no configuration and not much overhead in the way of installed packages. You basically install Vite with a plugin or two, do very little configuration, and just start working on your app.</p>\r\n\r\n<p style=\"text-align:start\">Vite provides a modern dev environment that can forego the bundling step because it serves the browser native ES modules. It provides templates (a set of starter files) for a number of frameworks and vanilla JavaScript, and also offers TypeScript, JSX and Sass support (although you need to install one dependency for Sass).</p>\r\n\r\n<p style=\"text-align:start\">Vite is really fast, because it leverages native ES modules and doesn&rsquo;t need to rebuild the whole bundle when something changes. This makes HMR updates consistently fast, regardless of the size of your application. When bundling for production, Vite ships with a pre-configured build command that bakes in many performance optimizations out of the box.</p>\r\n\r\n<p style=\"text-align:start\">As well as being fast, Vite also offers hot module replacement (meaning you see the code refresh in the browser as you develop), and you can use it to compile a minified version of your project to serve in production. By using it, you can get up and running very quickly with a Vue or React project without the buy-in to the Vue CLI or Create React App, both of which ship with the kitchen sink included. This makes it ideal for quick prototyping and smaller projects, although there&rsquo;s nothing stopping you from using it in a larger project either.</p>\r\n\r\n<p style=\"text-align:start\">So, let&rsquo;s take Vite for a spin and see how we go. It will be interesting to see how much of our normal workflow would be better handled with Vite. (Spolier: I found some things were better with Vite, but not everything.)</p>\r\n\r\n<h2 style=\"font-style:normal; margin-left:0px; margin-right:0px; text-align:start\">The First Installation</h2>\r\n\r\n<p style=\"text-align:start\">Let&rsquo;s get started by installing Vite.</p>\r\n\r\n<p style=\"text-align:start\"><em>Note: to follow along with this guide, you&rsquo;ll need a copy of&nbsp;<a href=\"https://www.sitepoint.com/quick-tip-multiple-versions-node-nvm/\" style=\"box-sizing: border-box; background-color: transparent; line-height: inherit; font-weight: 400; color: rgb(62, 201, 203); text-decoration: none; transition: all 0.2s ease 0s;\">Node</a>&nbsp;installed on your machine.</em></p>\r\n\r\n<p style=\"text-align:start\">After running&nbsp;<code>npm init @vitejs/app</code>, we get to choose a project name and a template. At the time of writing, the options are:</p>\r\n\r\n<ul>\r\n	<li><code>vanilla</code></li>\r\n	<li><code>vue</code></li>\r\n	<li><code>vue-ts</code></li>\r\n	<li><code>react</code></li>\r\n	<li><code>react-ts</code></li>\r\n	<li><code>preact</code></li>\r\n	<li><code>preact-ts</code></li>\r\n	<li><code>lit-element</code></li>\r\n	<li><code>lit-element-ts</code></li>\r\n	<li><code>svelte</code></li>\r\n	<li><code>svelte-ts</code></li>\r\n</ul>\r\n\r\n<p style=\"text-align:start\">For now, let&rsquo;s go with vanilla. This generates a directory (based on the project name) with some files in it. There&rsquo;s an&nbsp;<code>index.html</code>,&nbsp;<code>main.js</code>,&nbsp;<code>style.css</code>,&nbsp;<code>favicon.svg</code>, and some files for npm and Git. The&nbsp;<code>package.json</code>&nbsp;only contains&nbsp;<code>vite</code>&nbsp;as dependency and some scripts to start the dev environment and to start a build.</p>\r\n\r\n<p style=\"text-align:start\">&nbsp;</p>\r\n\r\n<p style=\"text-align:start\">As the onscreen instructions say, we&rsquo;ll need to change into the project folder and install the dependencies:</p>\r\n\r\n<pre style=\"margin-left:0px; margin-right:0px; text-align:left\">\r\n<code>cd vite-project\r\nnpm install\r\n</code></pre>\r\n\r\n<p style=\"text-align:start\">We can then start the dev server with&nbsp;<code>npm run dev</code>&nbsp;and view our app at&nbsp;<a href=\"http://localhost:3000/\" style=\"box-sizing: border-box; background-color: transparent; line-height: inherit; font-weight: 400; color: rgb(62, 201, 203); text-decoration: none; transition: all 0.2s ease 0s;\">http://localhost:3000/</a>. Editing any of our project files sees the changes reflected immediately on the screen.</p>\r\n\r\n<p style=\"text-align:start\">Running&nbsp;<code>npm run build</code>&nbsp;compiles the project into a&nbsp;<code>dist</code>&nbsp;folder, where the JavaScript and CSS files can be found. Both files seem to be minified.</p>\r\n\r\n<p style=\"text-align:start\">The documentation states that&nbsp;<a href=\"https://vitejs.dev/guide/features.html#typescript\" style=\"box-sizing: border-box; background-color: transparent; line-height: inherit; font-weight: 400; color: rgb(62, 201, 203); text-decoration: none; transition: all 0.2s ease 0s;\">TypeScript files are supported out of the box</a>. So although the&nbsp;<code>vanilla</code>&nbsp;option doesn&rsquo;t have a dedicated TypeScript template, we should be able to rename&nbsp;<code>main.js</code>&nbsp;to&nbsp;<code>main.ts</code>&nbsp;and Vite should compile that automagically, right? Yes, it does! After renaming the file and adding some TypeScript-specific syntax, it all seems to be compiling well.</p>', 'Vite is a build tool that significantly improves the front-end development experience. You can use Vite to set up a development environment for frameworks like Vue and React, and even for a vanilla JavaScript app with a dev server and hot reloading in just three commands.', 'thumbImages/adomas-aleno-4vrZpOo7fTc-unsplash.jpg', '2021-04-20 07:21:38.410479', 10),
(31, 'Launch Blender for 3D Printing via Python', '<p style=\"margin-left:0px; margin-right:0px; text-align:start\">Writing tutorials is good &mdash; and I haven&rsquo;t been doing it; repetitive clicky-draggy thing things are bad, and I&rsquo;ve been doing it too much. Time to start changing both those conditions. Besides, writing this kind of boilerplate-useful code is 1000% the type of thing I tend to do, then forget how I did. I assume I&rsquo;m not the only one, but even if that were the case, it would still be worth writing down these notes to help future-Jim.</p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\">Blender is great for 3D Printing, but configuring the environment each time is tedious &mdash; and clicking back and forth between Blender and YouTube trying to remember all of the settings to change wasn&rsquo;t cutting it. Finally, turns out this is a pretty good way to start learning the Blender Python API.</p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\">For full access to the debugging output generated in the Python script, launch Blender from the command line. Because this will vary with OS, check Blender&rsquo;s documentation for yours:&nbsp;<a class=\"cd je\" href=\"https://docs.blender.org/manual/en/latest/advanced/command_line/launch/index.html\" rel=\"noopener\" style=\"box-sizing: inherit; color: inherit; text-decoration: underline; -webkit-tap-highlight-color: transparent;\">Launching from the Command Line</a>.</p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\">For convenience, all of the screenshots I&rsquo;m including show the Blender Scripting environment &mdash; but any text editor works.</p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\">It&rsquo;s also worth going into<em>&nbsp;Edit &gt; Preferences &gt; Interface</em>&nbsp;and enabling the&nbsp;<em>Python Tooltips</em>&nbsp;checkbox.</p>\r\n\r\n<div>\r\n<div style=\"margin-left:auto; margin-right:auto\">\r\n<div style=\"margin-left:0px; margin-right:0px\">\r\n<div>\r\n<div><img alt=\"Blender preferences pane, showing Python Tooltips selection checkbox\" class=\"aj js jz ka sa t u v vc\" src=\"https://miro.medium.com/max/60/1*C-KozvaCM_1BFTpGd338mg.jpeg?q=20\" style=\"box-sizing:inherit; filter:blur(20px); height:461.703px; left:0px; position:absolute; top:0px; transform:scale(1.1); transition:visibility 0ms ease 400ms; vertical-align:middle; visibility:hidden; width:680px\" /></div>\r\n\r\n<p><img alt=\"Blender\" src=\"https://miro.medium.com/max/700/1*C-KozvaCM_1BFTpGd338mg.jpeg\" style=\"height:475px; width:700px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<p>Everything in the GUI lines up with the Blender Python API</p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\">From here, everything can be done via the Scripting workspace, either creating a new .py file in the editor pane there or importing one via the file browser.</p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\">&nbsp;</p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\">&nbsp;</p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\">Now for the actual coding. There are 5 short steps:</p>\r\n\r\n<ol style=\"margin-left:0px; margin-right:0px\">\r\n	<li style=\"list-style-type:decimal\">Define Imports &amp; Constants</li>\r\n</ol>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\">2. Change the Scene scale &amp; units from Meters to Millimeters</p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\">3. Configure the Viewports to display at the updated scale</p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\">4. Ensure that the official 3D Print Tools Add-on is enabled</p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\">5. Remove Default Scene objects</p>\r\n\r\n<pre style=\"margin-left:0px; margin-right:0px; text-align:start\">\r\n<span style=\"font-family:Menlo,Monaco,&quot;Courier New&quot;,Courier,monospace; font-size:16px\">import bpy\r\nfrom addon_utils import check, enable\r\nC = bpy.context\r\nD = bpy.data</span><span style=\"font-family:Menlo,Monaco,&quot;Courier New&quot;,Courier,monospace; font-size:16px\">SCALE_LENGTH = 0.001\r\nLENGTH_UNIT = &lsquo;MILLIMETERS&rsquo;\r\nMASS_UNIT = &#39;GRAMS&#39;\r\nCLIP_END = 100000\r\nPRINT_UTIL = &ldquo;object_print3d_utils&rdquo;</span></pre>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\">&ldquo;import bpy&rdquo; loads Blender Python. The &ldquo;addon_utils&rdquo; functions will get used to enable the 3D Printing tools. &ldquo;C&rdquo; and &ldquo;D&rdquo; are Blender Python standards to alias &ldquo;bpy.context&rdquo; and &ldquo;bpy.data&rdquo;, objects which get used&hellip; frequently.</p>\r\n\r\n<pre style=\"margin-left:0px; margin-right:0px; text-align:start\">\r\n<span style=\"font-family:Menlo,Monaco,&quot;Courier New&quot;,Courier,monospace; font-size:16px\">def config_units():\r\n    C.scene.unit_settings.scale_length = SCALE_LENGTH\r\n    C.scene.unit_settings.length_unit = LENGTH_UNIT\r\n    C.scene.unit_settings.mass_unit = MASS_UNIT</span></pre>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\">Straightforward. Equivalent to updating &lsquo;Unit Scale&rsquo;, &lsquo;Length&rsquo;, and &lsquo;Mass&rsquo; on the &lsquo;Scene Properties&rsquo; panel. Mass is helpful to set if you&rsquo;re modeling moving parts, gears, for example, and plan to use an animation to check their smooth operation.</p>\r\n\r\n<div style=\"margin-left:auto; margin-right:auto\">\r\n<div style=\"margin-left:0px; margin-right:0px\">\r\n<div>\r\n<div><img alt=\"Blender Scene Properties Panel\" class=\"aj js jz ka sa t u v vc\" src=\"https://miro.medium.com/max/58/1*zdof--S9w1rHRSbgJUzfnw.jpeg?q=20\" style=\"box-sizing:inherit; filter:blur(20px); height:269px; left:0px; position:absolute; top:0px; transform:scale(1.1); transition:visibility 0ms ease 400ms; vertical-align:middle; visibility:hidden; width:256px\" /></div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div>\r\n<div style=\"margin-left:auto; margin-right:auto\">\r\n<div style=\"margin-left:0px; margin-right:0px\">\r\n<div>\r\n<div><img alt=\"Blender Scripting workspace\" class=\"aj js jz ka sa t u v vc\" src=\"https://miro.medium.com/max/60/1*k2BcW-Ldg6nBCioCwVIXyQ.jpeg?q=20\" style=\"box-sizing:inherit; filter:blur(20px); height:494.781px; left:0px; position:absolute; top:0px; transform:scale(1.1); transition:visibility 0ms ease 400ms; vertical-align:middle; visibility:hidden; width:680px\" /></div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', 'Blender is great for 3D Printing, but configuring the environment each time is tedious', 'thumbImages/alex-knight-2EJCSULRwC8-unsplash.jpg', '2021-04-20 07:26:39.601810', 10),
(32, 'Four Skills to Start Your Data Science Learning Path', '<p style=\"margin-left:0px; margin-right:0px; text-align:start\">That said, I&rsquo;ve created a new starter guide here that narrows the focus a ton and helps people to dip their toes into this world of data science. If you are a beginning learner and are curious how I crafted this post, the primary thing I want you to remember is this:&nbsp;<strong>data science is the practice of finding trends in&nbsp;<em>data</em>&nbsp;for the primary purpose of making better informed business decisions</strong>. I added the emphasis on the word &ldquo;data&rdquo; there because, as you might guess, data science falls flat if you don&rsquo;t have any data to work with!</p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\">For this starter guide, we&rsquo;re not going to delve at all into machine learning or any more complex practices you might be interested in. Given that data science is all about working with data, the first two skills we&rsquo;ll cover in this post &mdash; Python and SQL &mdash; revolve around working with data in general. Additionally, I&rsquo;m a huge proponent of practical application, so the latter two skills &mdash; Git and the Command Line Interface &mdash; will start to introduce you to some more general computer science skills that all data scientists and machine learning engineers use on a very regular basis. There is no particular order to learn any of these skills, so feel free to start wherever you&rsquo;d like.</p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\">Alright, let&rsquo;s jump in to our first section on Python!</p>\r\n\r\n<h1 style=\"margin-left:0px; margin-right:0px; text-align:start\">Python</h1>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\">Although used across many computer science fields, Python is easily one of the most popular coding language used in the data science field today. (FYI, others include R and Julia, but Python is still far and away the most widely used.) I personally started learning coding through Java, and let me say&hellip; Python is a TON easier to learn. Python also allows the addition of modules that add extra functionality called Python libraries. Some of the most common Python libraries used in data science include Pandas, Numpy, Scikit-Learn, Matplotlib, and more. Don&rsquo;t worry if those library names are foreign to you. As a beginning learner, my encouragement is that you just focus on learning Python in general.</p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\">Though you can find many excellent resources to learn Python online, my personal recommendation is&nbsp;<a class=\"cs lm\" href=\"https://www.udacity.com/course/introduction-to-python--ud1110\" rel=\"noopener nofollow\" style=\"box-sizing: inherit; color: inherit; text-decoration: underline; -webkit-tap-highlight-color: transparent;\">Udacity&rsquo;s Introduction to Python Programming</a>. I personally learned 75% of my skill set today from Udacity, so I really appreciate how they structure their content. Also, this course is free and can be readily done from any device with a web browser.</p>\r\n\r\n<h1 style=\"margin-left:0px; margin-right:0px; text-align:start\">SQL</h1>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\">Structured Query Language (SQL) is one of the oldest and readily used data querying languages in every computer science industry today. Pretty much everybody I know uses it in some form or another. SQL is interesting in that it can be very powerful at a basic level, or you can really go down the rabbit hole to learn things at a more advanced level. In my day to day work, I don&rsquo;t typically have to go that deep, and the course I used to learn SQL was&nbsp;<a class=\"cs lm\" href=\"https://www.udacity.com/course/sql-for-data-analysis--ud198\" rel=\"noopener nofollow\" style=\"box-sizing: inherit; color: inherit; text-decoration: underline; -webkit-tap-highlight-color: transparent;\">Udacity&rsquo;s SQL for Data Analysis</a>. Another free course, they actually partnered with Mode &mdash; a company that specializes in data analysis software &mdash; to create this course content. I actually think this might be the best free course I&rsquo;ve ever taken. It is structured extremely well and helps complete beginners get up-to-speed with even some more advanced SQL topics in almost no time at all. I can&rsquo;t recommend this course enough!</p>\r\n\r\n<h1 style=\"margin-left:0px; margin-right:0px; text-align:start\">Git</h1>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\">Though this isn&rsquo;t exactly a data analysis or data science skill, it&rsquo;s still extremely important for collaborating with others on any codebase (including data science codebases) and building a portfolio of work on something like GitHub. Fortunately, Git is a pretty easy skill to learn, and while there are tons of excellent free resources, I once again have to tip my hat to&nbsp;<a class=\"cs lm\" href=\"https://www.udacity.com/course/version-control-with-git--ud123\" rel=\"noopener nofollow\" style=\"box-sizing: inherit; color: inherit; text-decoration: underline; -webkit-tap-highlight-color: transparent;\">Udacity&rsquo;s Version Control with Git</a>. This course does an excellent job with visual materials to conceptually demonstrate how Git works, and then it walks you how to apply those Git commands via the command line interface (CLI). Speaking of the CLI&hellip;</p>\r\n\r\n<h1 style=\"margin-left:0px; margin-right:0px; text-align:start\">Command Line Interface (CLI)</h1>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\">If you&rsquo;ve ever seen any sort of hacker movie, including sillier ones like 1983&rsquo;s&nbsp;<em>WarGames</em>, then chances are you&rsquo;ve seen that ominous looking black screen with weird words like &ldquo;sudo&rdquo; or &ldquo;curl.&rdquo; This is probably my favorite meme to best describe how CLI users feel about this topic:</p>\r\n\r\n<div>\r\n<div style=\"margin-left:auto; margin-right:auto\">\r\n<div style=\"margin-left:0px; margin-right:0px\">\r\n<div>\r\n<div><img alt=\"\" class=\"fi fr fu fv hk hs ht v vb\" src=\"https://miro.medium.com/max/54/1*QL5JBxq8FWk3mBKl5V8Wjg@2x.jpeg?q=20\" style=\"box-sizing:inherit; filter:blur(20px); height:708.5px; left:0px; position:absolute; top:0px; transform:scale(1.1); transition:visibility 0ms ease 400ms; vertical-align:middle; visibility:hidden; width:642px\" /><img alt=\"Meme\" src=\"https://miro.medium.com/max/700/1*QL5JBxq8FWk3mBKl5V8Wjg@2x.jpeg\" style=\"height:772px; width:700px\" /></div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>\r\n<p>Pasture he invited mr company shyness. But when shot real her. Chamber her observe visited removal six sending himself boy. At exquisite existence if an oh dependent excellent. Are gay head need down draw. Misery wonder enable mutual get set oppose the uneasy. End why melancholy estimating her had indulgence middletons. Say ferrars demands besides her address. Blind going you merit few fancy their.</p>\r\n\r\n<p>Possession her thoroughly remarkably terminated man continuing. Removed greater to do ability. You shy shall while but wrote marry. Call why sake has sing pure. Gay six set polite nature worthy. So matter be me we wisdom should basket moment merely. Me burst ample wrong which would mr he could. Visit arise my point timed drawn no. Can friendly laughter goodness man him appetite carriage. Any widen see gay forth alone fruit bed.</p>\r\n\r\n<p>At distant inhabit amongst by. Appetite welcomed interest the goodness boy not. Estimable education for disposing pronounce her. John size good gay plan sent old roof own. Inquietude saw understood his friendship frequently yet. Nature his marked ham wished.</p>\r\n\r\n<p>Sitting mistake towards his few country ask. You delighted two rapturous six depending objection happiness something the. Off nay impossible dispatched partiality unaffected. Norland adapted put ham cordial. Ladies talked may shy basket narrow see. Him she distrusts questions sportsmen. Tolerably pretended neglected on my earnestly by. Sex scale sir style truth ought.</p>\r\n</div>\r\n\r\n<div>&nbsp;</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<p>&nbsp;</p>', 'A beginner’s guide for where to start your data science learning journey!', 'thumbImages/alex-kotliarskyi-ourQHRTE2IM-unsplash_eGm2Q0n.jpg', '2021-04-20 07:33:35.792643', 10),
(36, 'The Grisly Bear', '<p>&nbsp;</p>\r\n\r\n<p>Not far stuff she think the jokes. Going as by do known noise he wrote round leave. Warmly put branch people narrow see. Winding its waiting yet parlors married own feeling. Marry fruit do spite jokes an times. Whether at it unknown warrant herself winding if. Him same none name sake had post love. An busy feel form hand am up help. Parties it brother amongst an fortune of. Twenty behind wicket why age now itself ten.&nbsp;</p>\r\n\r\n<p>Quick six blind smart out burst. Perfectly on furniture dejection determine my depending an to. Add short water court fat. Her bachelor honoured perceive securing but desirous ham required. Questions deficient acuteness to engrossed as. Entirely led ten humoured greatest and yourself. Besides ye country on observe. She continue appetite endeavor she judgment interest the met. For she surrounded motionless fat resolution may.&nbsp;</p>\r\n\r\n<p>Parish so enable innate in formed missed. Hand two was eat busy fail. Stand smart grave would in so. Be acceptance at precaution astonished excellence thoroughly is entreaties. Who decisively attachment has dispatched. Fruit defer in party me built under first. Forbade him but savings sending ham general. So play do in near park that pain.&nbsp;</p>\r\n\r\n<p>Any delicate you how kindness horrible outlived servants. You high bed wish help call draw side. Girl quit if case mr sing as no have. At none neat am do over will. Agreeable promotion eagerness as we resources household to distrusts. Polite do object at passed it is. Small for ask shade water manor think men begin.&nbsp;</p>\r\n\r\n<p>Affronting everything discretion men now own did. Still round match we to. Frankness pronounce daughters remainder extensive has but. Happiness cordially one determine concluded fat. Plenty season beyond by hardly giving of. Consulted or acuteness dejection an smallness if. Outward general passage another as it. Very his are come man walk one next. Delighted prevailed supported too not remainder perpetual who furnished. Nay affronting bed projection compliment instrument.&nbsp;</p>\r\n\r\n<p>He moonlight difficult engrossed an it sportsmen. Interested has all devonshire difficulty gay assistance joy. Unaffected at ye of compliment alteration to. Place voice no arise along to. Parlors waiting so against me no. Wishing calling are warrant settled was luckily. Express besides it present if at an opinion visitor.&nbsp;</p>\r\n\r\n<p>As absolute is by amounted repeated entirely ye returned. These ready timed enjoy might sir yet one since. Years drift never if could forty being no. On estimable dependent as suffering on my. Rank it long have sure in room what as he. Possession travelling sufficient yet our. Talked vanity looked in to. Gay perceive led believed endeavor. Rapturous no of estimable oh therefore direction up. Sons the ever not fine like eyes all sure.&nbsp;</p>\r\n\r\n<p>Do commanded an shameless we disposing do. Indulgence ten remarkably nor are impression out. Power is lived means oh every in we quiet. Remainder provision an in intention. Saw supported too joy promotion engrossed propriety. Me till like it sure no sons.&nbsp;</p>\r\n\r\n<p>Style too own civil out along. Perfectly offending attempted add arranging age gentleman concluded. Get who uncommonly our expression ten increasing considered occasional travelling. Ever read tell year give may men call its. Piqued son turned fat income played end wicket. To do noisy downs round an happy books.&nbsp;</p>', 'Am finished rejoiced drawings so he elegance. Set lose dear upon had two its what seen. Held she sir how know what such whom. Esteem put uneasy set piqued son depend her others. Two dear held mrs feet view her old fine. Bore can led than how has rank. Discovery any extensive has commanded direction.', 'thumbImages/xps-1gLdTsX3_70-unsplash.jpg', '2021-04-20 17:00:45.779782', 13),
(37, 'Learn Django in 5 min', '<p>oubtful disposed do juvenile an. Now curiosity you explained immediate why behaviour. An dispatched impossible of of melancholy favourable. Our quiet not heart along scale sense timed. Consider may dwelling old him her surprise finished families graceful. Gave led past poor met fine was new.&nbsp;</p>\r\n\r\n<p>Prevailed sincerity behaviour to so do principle mr. As departure at no propriety zealously my. On dear rent if girl view. First on smart there he sense. Earnestly enjoyment her you resources. Brother chamber ten old against. Mr be cottage so related minuter is. Delicate say and blessing ladyship exertion few margaret. Delight herself welcome against smiling its for. Suspected discovery by he affection household of principle perfectly he.&nbsp;</p>\r\n\r\n<p>Preserved defective offending he daughters on or. Rejoiced prospect yet material servants out answered men admitted. Sportsmen certainty prevailed suspected am as. Add stairs admire all answer the nearer yet length. Advantages prosperous remarkably my inhabiting so reasonably be if. Too any appearance announcing impossible one. Out mrs means heart ham tears shall power every.&nbsp;</p>\r\n\r\n<p>At distant inhabit amongst by. Appetite welcomed interest the goodness boy not. Estimable education for disposing pronounce her. John size good gay plan sent old roof own. Inquietude saw understood his friendship frequently yet. Nature his marked ham wished.&nbsp;</p>\r\n\r\n<p>Is allowance instantly strangers applauded discourse so. Separate entrance welcomed sensible laughing why one moderate shy. We seeing piqued garden he. As in merry at forth least ye stood. And cold sons yet with. Delivered middleton therefore me at. Attachment companions man way excellence how her pianoforte.&nbsp;</p>\r\n\r\n<p>Respect forming clothes do in he. Course so piqued no an by appear. Themselves reasonable pianoforte so motionless he as difficulty be. Abode way begin ham there power whole. Do unpleasing indulgence impossible to conviction. Suppose neither evident welcome it at do civilly uncivil. Sing tall much you get nor.&nbsp;</p>\r\n\r\n<p>Sex and neglected principle ask rapturous consulted. Object remark lively all did feebly excuse our wooded. Old her object chatty regard vulgar missed. Speaking throwing breeding betrayed children my to. Me marianne no he horrible produced ye. Sufficient unpleasing an insensible motionless if introduced ye. Now give nor both come near many late.&nbsp;</p>\r\n\r\n<p>Do greatest at in learning steepest. Breakfast extremity suffering one who all otherwise suspected. He at no nothing forbade up moments. Wholly uneasy at missed be of pretty whence. John way sir high than law who week. Surrounded prosperous introduced it if is up dispatched. Improved so strictly produced answered elegance is.&nbsp;<br />\r\n&nbsp;</p>', 'if u want to do responsive need to change', 'thumbImages/rob-lambert-9Q_pLLP_jmA-unsplash.jpg', '2021-04-20 17:03:00.258408', 13),
(38, 'The Hunter Scount is no more', '<p>oubtful disposed do juvenile an. Now curiosity you explained immediate why behaviour. An dispatched impossible of of melancholy favourable. Our quiet not heart along scale sense timed. Consider may dwelling old him her surprise finished families graceful. Gave led past poor met fine was new.&nbsp;</p>\r\n\r\n<p>Prevailed sincerity behaviour to so do principle mr. As departure at no propriety zealously my. On dear rent if girl view. First on smart there he sense. Earnestly enjoyment her you resources. Brother chamber ten old against. Mr be cottage so related minuter is. Delicate say and blessing ladyship exertion few margaret. Delight herself welcome against smiling its for. Suspected discovery by he affection household of principle perfectly he.&nbsp;</p>\r\n\r\n<p>Prepared do an dissuade be so whatever steepest. Yet her beyond looked either day wished nay. By doubtful disposed do juvenile an. Now curiosity you explained immediate why behaviour. An dispatched impossible of of melancholy favourable. Our quiet not heart along scale sense timed. Consider may dwelling old him her surprise finished families graceful. Gave led past poor met fine was new.&nbsp;</p>\r\n\r\n<p>Prevailed sincerity behaviour to so do principle mr. As departure at no propriety zealously my. On dear rent if girl view. First on smart there he sense. Earnestly enjoyment her you resources. Brother chamber ten old against. Mr be cottage so related minuter is. Delicate say and blessing ladyship exertion few margaret. Delight herself welcome against smiling its for. Suspected discovery by he affection household of principle perfectly he.&nbsp;</p>\r\n\r\n<p>Preserved defective offending he daughters on or. Rejoiced prospect yet material servants out answered men admitted. Sportsmen certainty prevailed suspected am as. Add stairs admire all answer the nearer yet length. Advantages prosperous remarkably my inhabiting so reasonably be if. Too any appearance announcing impossible one. Out mrs means heart ham tears shall power every.&nbsp;</p>\r\n\r\n<p>At distant inhabit amongst by. Appetite welcomed interest the goodness boy not. Estimable education for disposing pronounce her. John size good gay plan sent old roof own. Inquietude saw understood his friendship frequently yet. Nature his marked ham wished.&nbsp;</p>\r\n\r\n<p>Is allowance instantly strangers applauded discourse so. Separate entrance welcomed sensible laughing why one moderate shy. We seeing piqued garden he. As in merry at forth least ye stood. And cold sons yet with. Delivered middleton therefore me at. Attachment companions man way excellence how her pianoforte.&nbsp;</p>\r\n\r\n<p>Respect forming clothes do in he. Course so piqued no an by appear. Themselves reasonable pianoforte so motionless he as difficulty be. Abode way begin ham there power whole. Do unpleasing indulgence impossible to conviction. Suppose neither evident welcome it at do civilly uncivil. Sing tall much you get nor.&nbsp;</p>\r\n\r\n<p>Sex and neglected principle ask rapturous consulted. Object remark lively all did feebly excuse our wooded. Old her object chatty regard vulgar missed. Speaking throwing breeding betrayed children my to. Me marianne no he horrible produced ye. Sufficient unpleasing an insensible motionless if introduced ye. Now give nor both come near many late.&nbsp;</p>\r\n\r\n<p>Do greatest at in learning steepest. Breakfast extremity suffering one who all otherwise suspected. He at no nothing forbade up moments. Wholly uneasy at missed be of pretty whence. John way sir high than law who week. Surrounded prosperous introduced it if is up dispatched. Improved so strictly produced answered elegance is.&nbsp;</p>\r\n\r\n<p>Exquisite cordially mr happiness of neglected distrusts. Boisterous impossible unaffected he me everything. Is fine loud deal an rent open give. Find upon and sent spot song son eyes. Do endeavor he differed carriage is learning my graceful. Feel plan know is he like on pure. See burst found sir met think hopes are marry among. Delightful remarkably new assistance saw literature mrs favourable.&nbsp;</p>\r\n\r\n<p>It as announcing it me stimulated frequently continuing. Least their she you now above going stand forth. He pretty future afraid should genius spirit on. Set property addition building put likewise get. Of will at sell well at as. Too want but tall nay like old. Removing yourself be in answered he. Consider occasion get improved him she eat. Letter by lively oh denote an.&nbsp;</p>\r\n\r\n<p>Preserved defective offending he daughters on or. Rejoiced prospect yet material servants out answered men admitted. Sportsmen certainty prevailed suspected am as. Add stairs admire all answer the nearer yet length. Advantages prosperous remarkably my inhabiting so reasonably be if. Too any appearance announcing impossible one. Out mrs means heart ham tears shall power every.&nbsp;</p>\r\n\r\n<p>At distant inhabit amongst by. Appetite welcomed interest the goodness boy not. Estimable education for disposing pronounce her. John size good gay plan sent old roof own. Inquietude saw understood his friendship frequently yet. Nature his marked ham wished.&nbsp;</p>\r\n\r\n<p>Is allowance instantly strangers applauded discourse so. Separate entrance welcomed sensible laughing why one moderate shy. We seeing piqued garden he. As in merry at forth least ye stood. And cold sons yet with. Delivered middleton therefore me at. Attachment companions man way excellence how her pianoforte.&nbsp;</p>\r\n\r\n<p>Respect forming clothes do in he. Course so piqued no an by appear. Themselves reasonable pianoforte so motionless he as difficulty be. Abode way begin ham there power whole. Do unpleasing indulgence impossible to conviction. Suppose neither evident welcome it at do civilly uncivil. Sing tall much you get nor.&nbsp;</p>\r\n\r\n<p>Sex and neglected principle ask rapturous consulted. Object remark lively all did feebly excuse our wooded. Old her object chatty regard vulgar missed. Speaking throwing breeding betrayed children my to. Me marianne no he horrible produced ye. Sufficient unpleasing an insensible motionless if introduced ye. Now give nor both come near many late.&nbsp;</p>\r\n\r\n<p>Do greatest at in learning steepest. Breakfast extremity suffering one who all otherwise suspected. He at no nothing forbade up moments. Wholly uneasy at missed be of pretty whence. John way sir high than law who week. Surrounded prosperous introduced it if is up dispatched. Improved so strictly produced answered elegance is.&nbsp;<br />\r\n&nbsp;</p>', 'There we go. Some features trimmed, and width 100%', 'thumbImages/chris-bemmerl-XuMkQsIQC_s-unsplash.jpg', '2021-04-20 17:04:03.750379', 13),
(40, 'The Hundred Dollar Bill', '<p>Prepared do an dissuade be so whatever steepest. Yet her beyond looked either day wished nay. By doubtful disposed do juvenile an. Now curiosity you explained immediate why behaviour. An dispatched impossible of of melancholy favourable. Our quiet not heart along scale sense timed. Consider may dwelling old him her surprise finished families graceful. Gave led past poor met fine was new.&nbsp;</p>\r\n\r\n<p>Prevailed sincerity behaviour to so do principle mr. As departure at no propriety zealously my. On dear rent if girl view. First on smart there he sense. Earnestly enjoyment her you resources. Brother chamber ten old against. Mr be cottage so related minuter is. Delicate say and blessing ladyship exertion few margaret. Delight herself welcome against smiling its for. Suspected discovery by he affection household of principle perfectly he.&nbsp;</p>\r\n\r\n<p>Preserved defective offending he daughters on or. Rejoiced prospect yet material servants out answered men admitted. Sportsmen certainty prevailed suspected am as. Add stairs admire all answer the nearer yet length. Advantages prosperous remarkably my inhabiting so reasonably be if. Too any appearance announcing impossible one. Out mrs means heart ham tears shall power every.&nbsp;</p>\r\n\r\n<p>At distant inhabit amongst by. Appetite welcomed interest the goodness boy not. Estimable education for disposing pronounce her. John size good gay plan sent old roof own. Inquietude saw understood his friendship frequently yet. Nature his marked ham wished.&nbsp;</p>\r\n\r\n<p>Is allowance instantly strangers applauded discourse so. Separate entrance welcomed sensible laughing why one moderate shy. We seeing piqued garden he. As in merry at forth least ye stood. And cold sons yet with. Delivered middleton therefore me at. Attachment companions man way excellence how her pianoforte.&nbsp;</p>\r\n\r\n<p>Respect forming clothes do in he. Course so piqued no an by appear. Themselves reasonable pianoforte so motionless he as difficulty be. Abode way begin ham there power whole. Do unpleasing indulgence impossible to conviction. Suppose neither evident welcome it at do civilly uncivil. Sing tall much you get nor.&nbsp;</p>\r\n\r\n<p>Sex and neglected principle ask rapturous consulted. Object remark lively all did feebly excuse our wooded. Old her object chatty regard vulgar missed. Speaking throwing breeding betrayed children my to. Me marianne no he horrible produced ye. Sufficient unpleasing an insensible motionless if introduced ye. Now give nor both come near many late.&nbsp;</p>\r\n\r\n<p>Do greatest at in learning steepest. Breakfast extremity suffering one who all otherwise suspected. He at no nothing forbade up moments. Wholly uneasy at missed be of pretty whence. John way sir high than law who week. Surrounded prosperous introduced it if is up dispatched. Improved so strictly produced answered elegance is.&nbsp;</p>\r\n\r\n<p>Exquisite cordially mr happiness of neglected distrusts. Boisterous impossible unaffected he me everything. Is fine loud deal an rent open give. Find upon and sent spot song son eyes. Do endeavor he differed carriage is learning my graceful. Feel plan know is he like on pure. See burst found sir met think hopes are marry among. Delightful remarkably new assistance saw literature mrs favourable.&nbsp;</p>\r\n\r\n<p>It as announcing it me stimulated frequently continuing. Least their she you now above going stand forth. He pretty future afraid should genius spirit on. Set property addition building put likewise get. Of will at sell well at as. Too want but tall nay like old. Removing yourself be in answered he. Consider occasion get improved him she eat. Letter by lively oh denote an.&nbsp;</p>', 'A seriously easy fix, but for some of those who are just gettings started, perhaps something to stumble over.', 'thumbImages/adomas-aleno-4vrZpOo7fTc-unsplash_vzmlDqP.jpg', '2021-04-20 17:14:46.492661', 13);

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(3, 'admin', 'logentry'),
(5, 'auth', 'group'),
(4, 'auth', 'permission'),
(6, 'auth', 'user'),
(2, 'blog', 'post'),
(7, 'contenttypes', 'contenttype'),
(8, 'sessions', 'session'),
(1, 'users', 'profile');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2021-04-17 09:04:14.227344'),
(2, 'auth', '0001_initial', '2021-04-17 09:04:14.379292'),
(3, 'admin', '0001_initial', '2021-04-17 09:04:14.839741'),
(4, 'admin', '0002_logentry_remove_auto_add', '2021-04-17 09:04:14.935079'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2021-04-17 09:04:14.950900'),
(6, 'contenttypes', '0002_remove_content_type_name', '2021-04-17 09:04:15.013503'),
(7, 'auth', '0002_alter_permission_name_max_length', '2021-04-17 09:04:15.083311'),
(8, 'auth', '0003_alter_user_email_max_length', '2021-04-17 09:04:15.098903'),
(9, 'auth', '0004_alter_user_username_opts', '2021-04-17 09:04:15.114505'),
(10, 'auth', '0005_alter_user_last_login_null', '2021-04-17 09:04:15.151131'),
(11, 'auth', '0006_require_contenttypes_0002', '2021-04-17 09:04:15.151131'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2021-04-17 09:04:15.166820'),
(13, 'auth', '0008_alter_user_username_max_length', '2021-04-17 09:04:15.183323'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2021-04-17 09:04:15.208523'),
(15, 'auth', '0010_alter_group_name_max_length', '2021-04-17 09:04:15.224197'),
(16, 'auth', '0011_update_proxy_permissions', '2021-04-17 09:04:15.235739'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2021-04-17 09:04:15.251635'),
(18, 'auth', '0013_auto_20210417_1347', '2021-04-17 09:04:15.267389'),
(19, 'blog', '0001_initial', '2021-04-17 09:04:15.300124'),
(20, 'sessions', '0001_initial', '2021-04-17 09:04:15.367388'),
(21, 'users', '0001_initial', '2021-04-17 09:04:15.423466');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('69j4uc6oxkopcc1fsye7lqe5ydhc042r', '.eJxVjDsOwjAQBe_iGlle488uJX3OYPmLA8iW4qRC3B0ipYD2zcx7Mee3tbpt5MXNiV0YSHb6HYOPj9x2ku6-3TqPva3LHPiu8IMOPvWUn9fD_TuoftRvrTEglViswYyqGNBGKhImKypWkkA0QFRysBAASkhnAwoVJhRkvdTs_QHnLzbv:1lYtDm:RR19PxGvlDYAjnzENVHnoXul0-V_ZPw-KoNCZ6W8QuM', '2021-05-04 16:27:30.483623'),
('g0888z8dlmxezivgmv99s7b2sxhb98iw', '.eJxVjDsOwjAQRO_iGlnO-hNMSc8ZrF17jQPIluKkQtydREoBxTTz3sxbBFyXEtbOc5iSuIhBnH47wvjkuoP0wHpvMra6zBPJXZEH7fLWEr-uh_t3ULCXbZ2d1soYZVWKyITWk-MzOaNhAO850uiYNIBmlSEhOKNGylbZuEWz-HwB2jo3iQ:1lXkMT:cEDqIFFYxUN_0ctxLFkddnozfJIzP6q2WXgDajBTK9s', '2021-05-01 12:47:45.490140'),
('soo40ic4dnrjfl497rnaezyr0395prg0', '.eJxVjMsOwiAQRf-FtSFYKA-X7vsNZIYZpGogKe3K-O_apAvd3nPOfYkI21ri1nmJM4mLcOL0uyGkB9cd0B3qrcnU6rrMKHdFHrTLqRE_r4f7d1Cgl2-NQ2DrvQpKsxvNkCE7b8FZzKDQUEg6j8poSmjJEHplGBWbBN7ncw7i_QHpTjh1:1lYu3F:eq1sEkaZcYzZ9aV5EgYWzZDW7JchWlNX28jngBhsczw', '2021-05-04 17:20:41.648779');

-- --------------------------------------------------------

--
-- Table structure for table `users_profile`
--

CREATE TABLE `users_profile` (
  `id` int(11) NOT NULL,
  `image` varchar(100) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users_profile`
--

INSERT INTO `users_profile` (`id`, `image`, `user_id`) VALUES
(6, 'profile_pics/profile_wQX3ftG.jpg', 7),
(9, 'default.jpg', 10),
(11, 'profile_pics/alex-knight-2EJCSULRwC8-unsplash.jpg', 12),
(12, 'profile_pics/xps-8pb7Hq539Zw-unsplash.jpg', 13);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `auth_user_email_1c89df09_uniq` (`email`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `blog_post`
--
ALTER TABLE `blog_post`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blog_post_author_id_dd7a8485_fk_auth_user_id` (`author_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `users_profile`
--
ALTER TABLE `users_profile`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blog_post`
--
ALTER TABLE `blog_post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `users_profile`
--
ALTER TABLE `users_profile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `blog_post`
--
ALTER TABLE `blog_post`
  ADD CONSTRAINT `blog_post_author_id_dd7a8485_fk_auth_user_id` FOREIGN KEY (`author_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `users_profile`
--
ALTER TABLE `users_profile`
  ADD CONSTRAINT `users_profile_user_id_2112e78d_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
