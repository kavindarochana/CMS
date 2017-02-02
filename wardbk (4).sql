-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 09, 2015 at 06:37 PM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `wardbk`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
`id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`) VALUES
(1, 'Web Programming', 'Sed tempor orci magna vitae tellus. Proin dui mauris, tempor eget, pulvinar sed, pretium sit amet, dui. Proin vulputate justo et quam.In fermentum, eros ac tincidunt aliquam, elit velit semper nunc, a tincidunt orci lectus a arcu. Nullam commodo, arcu non facilisis imperdiet, felis lectus tempus felis, vitae volutpat augue ante quis leo. Aliquam tristique dolor ac odio. Sed consectetur, lacus et dictum tristique, odio neque elementum ante, nec eleifend leo dolor vel tortor.'),
(2, 'Web Design', 'Rotagonist Thomas is held in solitary confinement, but is eventually released. He and some others soon learn from Assistant Director Janson that the claim of a cure for the Flare (a deadly disease) was a lie. However, while many of the people present are immune, not all are, and many in the outside world despise the immune. The Gladers are offered the chance to restore their memories, and it is also revealed that the controlling device '),
(3, 'Database Development', ''),
(4, 'Health', '');

-- --------------------------------------------------------

--
-- Table structure for table `replies`
--

CREATE TABLE IF NOT EXISTS `replies` (
`id` int(11) NOT NULL,
  `topic_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `body` text NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `replies`
--

INSERT INTO `replies` (`id`, `topic_id`, `user_id`, `body`, `create_date`) VALUES
(1, 1, 2, '<p>&lt;strong&gt;Ideally, you&amp;rsquo;d have a grip of iron and not need straps, but if you find your grip&amp;rsquo;s giving out before your lats are fully fatigued, then strap up and go to town&lt;/strong&gt;. Make sure you do some grip-strengthening exercises like plate pinches and fat grip work in your other sessions, though.&lt;/p&gt;&lt;p&gt;&amp;nbsp;&lt;/p&gt;&lt;p&gt;&lt;strong&gt;Lighting Up Lat City&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp;&lt;/p&gt;&lt;p&gt;&lt;strong&gt;Keep things simple by picking just two exercises each workout and sticking with these for four weeks&lt;/strong&gt;. This can be any combo and any variation of the four listed above. You might choose weighted chin-ups and machine chest-supported rows in your first workout, and neutral grip pull-downs and straight-arm pull-downs on your second, for instance.&lt;/p&gt;&lt;p&gt;&amp;nbsp;&lt;/p&gt;&lt;p&gt;Follow an&amp;nbsp;&lt;a target=&quot;_blank&quot; href=&quot;http://breakingmuscle.com/strength-conditioning/wave-loading-how-to-do-it-within-the-week-and-within-the-session&quot;&gt;undulating loading scheme&lt;/a&gt;.&lt;strong&gt;&amp;nbsp;So your program would look something like this&lt;/strong&gt;:&lt;/p&gt;&lt;p&gt;&amp;nbsp;&lt;/p&gt;&lt;ul&gt;&lt;li&gt;Week 1: 3 sets of 12-15 reps on all exercises&lt;/li&gt;&lt;li&gt;Week 2: 4 sets of 8-10 reps on all exercises&lt;/li&gt;&lt;li&gt;Week 3: 5 sets of 5-6 reps on all exercises&lt;/li&gt;&lt;li&gt;Week 4: 2 sets of 20 using a light weight (This is essentially a mini&amp;nbsp;&lt;a target=&quot;_blank&quot; href=&quot;http://breakingmuscle.com/strength-conditioning/deloading-101-what-is-a-deload-and-how-do-you-do-it&quot;&gt;deload&lt;/a&gt;)&lt;/li&gt;&lt;/ul&gt;&lt;p&gt;&amp;nbsp;&lt;/p&gt;&lt;p&gt;On week five, go back to 3 sets of 12-15, either on different exercises, or on the same exercises as weeks one to four, but using a bit more weight, or aiming to beat your reps from the last cycle.&amp;nbsp;&lt;strong&gt;Do this, and imaginary lat syndrome will be but a distant memory&lt;/strong&gt;.&lt;/p&gt;&lt;p&gt;&amp;nbsp;&lt;/p&gt;</p>', '2015-05-04 07:20:21'),
(2, 2, 1, '<p>// If the last letter is a alphanumeric character, add a period (full stop)&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;if(val.match(/[a-zA-Z]$/))&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; val = val + &amp;quot;.&amp;quot;;&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; }&lt;/p&gt;&lt;p&gt;&amp;nbsp;&lt;/p&gt;&lt;p&gt;// Append the transcribed text but set the focus to the hidden speech input.&lt;/p&gt;&lt;p&gt;// This enables keyboard shortcut Ctrl+Shift+Period (.) for speech mode.&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; $(&amp;quot;.answer&amp;quot;).append(val + &amp;quot; &amp;quot;).fadeIn();&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; $(this).val(&amp;quot;&amp;quot;).focus();&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp; });&lt;/p&gt;&lt;p&gt;});&lt;/p&gt;</p>', '2015-05-04 07:23:05'),
(3, 3, 2, '<p><strong>&lt;h4&gt; woW &lt;h4&gt;</strong></p>', '2015-05-04 07:35:42'),
(4, 3, 1, '<p><strong>&lt;h1&gt; Wow &lt;/h1&gt;</strong></p>', '2015-05-04 07:36:22'),
(5, 1, 1, '<p><input name="KL" type="checkbox" value="k" />l</p>\r\n', '2015-05-05 15:15:56'),
(8, 1, 1, '<p><a id="k" name="k"></a></p>', '2015-05-05 15:19:03'),
(9, 4, 5, '<p>its work nicely&nbsp;</p>', '2015-05-09 16:29:13'),
(10, 4, 2, '<p>Yp babeeeee itz wrk superbly</p>', '2015-05-09 16:30:33'),
(11, 4, 1, '<p>Thnx hny</p>', '2015-05-09 16:30:53'),
(12, 4, 1, '<p>mobile test</p>', '2015-05-09 16:35:13');

-- --------------------------------------------------------

--
-- Table structure for table `topics`
--

CREATE TABLE IF NOT EXISTS `topics` (
`id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `body` text NOT NULL,
  `video` varchar(111) NOT NULL,
  `last_activity` datetime NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `topics`
--

INSERT INTO `topics` (`id`, `category_id`, `user_id`, `title`, `body`, `video`, `last_activity`, `create_date`) VALUES
(1, 4, 1, '4 Exercises to Cure the Dreaded Imaginary Lat Syndrome', '<p>4 Exercises to Cure the Dreaded Imaginary Lat Syndrome</p><p><a href="http://breakingmuscle.com/coaches/mike-samuels">Mike Samuels</a></p><p>Guest Contributor</p><p><a href="http://breakingmuscle.com/coaches/mike-samuels">More Articles from this Author</a></p><p><a href="http://breakingmuscle.com/strength-conditioning/4-exercises-to-cure-the-dreaded-imaginary-lat-syndrome#">Share on facebook</a><a href="http://breakingmuscle.com/strength-conditioning/4-exercises-to-cure-the-dreaded-imaginary-lat-syndrome#">Share on twitter</a><a target="_blank" href="http://www.addthis.com/bookmark.php?v=300&amp;winname=addthis&amp;pub=unknown&amp;source=tbx32-300&amp;lng=en-US&amp;s=google_plusone_share&amp;u508=1&amp;url=file%3A%2F%2F%2FD%3A%2FDocuments%2Ffile%3A%2F%2F%2FD%3A%2FDocuments%2F4%2520Exercises%2520to%2520Cure%2520the%2520Dreaded%2520Imaginary%2520Lat%2520Syndrome%2520%2520%2520Breaking%2520Muscle_files%2F4%2520Exercises%2520to%2520Cure%2520the%2520Dreaded%2520Imaginary%2520Lat%2520Syndrome%2520%2520%2520Breaking%2520Muscle.htm&amp;title=4%20Exercises%20to%20Cure%20the%20Dreaded%20Imaginary%20Lat%20Syndrome%20%7C%20Breaking%20Muscle&amp;ate=AT-unknown/-/-/55471ce0568d41de/2&amp;frommenu=1&amp;uid=55471ce00cb91c43&amp;ct=1&amp;tt=0&amp;captcha_provider=nucaptcha">Share on google_plusone_share</a><a target="_blank" href="http://www.addthis.com/bookmark.php?v=300&amp;winname=addthis&amp;pub=unknown&amp;source=tbx32-300&amp;lng=en-US&amp;s=stumbleupon&amp;u508=1&amp;url=file%3A%2F%2F%2FD%3A%2FDocuments%2Ffile%3A%2F%2F%2FD%3A%2FDocuments%2F4%2520Exercises%2520to%2520Cure%2520the%2520Dreaded%2520Imaginary%2520Lat%2520Syndrome%2520%2520%2520Breaking%2520Muscle_files%2F4%2520Exercises%2520to%2520Cure%2520the%2520Dreaded%2520Imaginary%2520Lat%2520Syndrome%2520%2520%2520Breaking%2520Muscle.htm&amp;title=4%20Exercises%20to%20Cure%20the%20Dreaded%20Imaginary%20Lat%20Syndrome%20%7C%20Breaking%20Muscle&amp;ate=AT-unknown/-/-/55471ce0568d41de/3&amp;frommenu=1&amp;uid=55471ce0534a7ac0&amp;ct=1&amp;tt=0&amp;captcha_provider=nucaptcha">Share on stumbleupon</a><a target="_blank" href="http://breakingmuscle.com/strength-conditioning/4-exercises-to-cure-the-dreaded-imaginary-lat-syndrome#">Share on pinterest_share</a><a target="_blank" href="http://www.addthis.com/bookmark.php?v=300&amp;winname=addthis&amp;pub=unknown&amp;source=tbx32-300&amp;lng=en-US&amp;s=linkedin&amp;u508=1&amp;url=file%3A%2F%2F%2FD%3A%2FDocuments%2Ffile%3A%2F%2F%2FD%3A%2FDocuments%2F4%2520Exercises%2520to%2520Cure%2520the%2520Dreaded%2520Imaginary%2520Lat%2520Syndrome%2520%2520%2520Breaking%2520Muscle_files%2F4%2520Exercises%2520to%2520Cure%2520the%2520Dreaded%2520Imaginary%2520Lat%2520Syndrome%2520%2520%2520Breaking%2520Muscle.htm&amp;title=4%20Exercises%20to%20Cure%20the%20Dreaded%20Imaginary%20Lat%20Syndrome%20%7C%20Breaking%20Muscle&amp;ate=AT-unknown/-/-/55471ce0568d41de/4&amp;frommenu=1&amp;uid=55471ce0094c68b1&amp;ct=1&amp;tt=0&amp;captcha_provider=nucaptcha">Share on linkedin</a><a target="_blank" href="http://breakingmuscle.com/strength-conditioning/4-exercises-to-cure-the-dreaded-imaginary-lat-syndrome#">Share on tumblr</a><a target="_blank" href="http://breakingmuscle.com/strength-conditioning/4-exercises-to-cure-the-dreaded-imaginary-lat-syndrome#">Share on email</a><a href="http://breakingmuscle.com/strength-conditioning/4-exercises-to-cure-the-dreaded-imaginary-lat-syndrome#">More Sharing Services</a></p><p><em>The following is a guest post from Mike Samuels of&nbsp;<a target="_blank" href="http://www.healthylivingheavylifting.com/">Healthy Living Heavy Lifting</a>:</em></p><p>&nbsp;</p><p>There&rsquo;s a pandemic sweeping the nation.<strong>&nbsp;Despite a rise in gym memberships, and more and more people training than ever before, a terrible affliction still holds the country&rsquo;s gym-goers in its hands</strong>. What is this horrendous condition?</p><p>&nbsp;</p><p><strong>Imaginary lat syndrome.</strong></p><p>&nbsp;</p><p>The&nbsp;<a target="_blank" href="http://www.urbandictionary.com/define.php?term=Imaginary+Lat+Syndrome">Urban Dictionary</a>&nbsp;defines imaginary lat syndrome as:</p><p>&nbsp;</p><p>&hellip;a common case of someone, typically a male, who believes they are rather muscular when in reality this isn&#39;t the case. Those with Imaginary Lat Syndrome can typically be seen walking uncomfortably while flaring their small lat muscles and tensing their arms in an attempt to look &quot;jacked.&quot; In reality, it appears douchey and looks like a toothbrush has been shoved up their ass. Manlets are at high risk of falling victim due to overcompensation reasons.</p><p>&nbsp;</p><p><strong>Another way to spot someone with ILS is if they&rsquo;re walking around, looking like they&rsquo;re holding a rolled-up carpet under each arm</strong>. These guys have probably got fairly impressive&nbsp;<a target="_blank" href="http://breakingmuscle.com/strength-conditioning/i-got-99-problems-but-a-bench-aint-one">bench presses</a>&nbsp;(due to their commitment to international bench press Monday,) and their biceps may be a little beefier than the average Joe&rsquo;s, but their lats resemble that of a gym newbie&rsquo;s. Aside from those protruding pecs and beneath those boulder shoulders, there&rsquo;s nothing that looks even remotely muscular.</p><p>&nbsp;</p><p>Are you sitting there screaming, &ldquo;Wait! This is me, I have it, and what can I do?&rdquo; Fear not.&nbsp;<strong>Imaginary lat syndrome might be caused by years of neglect, but it can be remedied by making a few simple switches to your training routine</strong>.</p><p>&nbsp;</p><p><strong>Big Lats: What&rsquo;s the Deal?</strong></p><p>&nbsp;</p><p><strong>When was the last time you heard someone say, &ldquo;Yeah, that guy&rsquo;s in shape, but his lats are too big&rdquo;</strong>? Yep, never. It just doesn&rsquo;t happen. A big, wide back, so huge it blocks out the sunlight will only ever be an asset to your overall physique.</p><p>&nbsp;</p><p>And apart from the aesthetic quality, the<a target="_blank" href="http://breakingmuscle.com/strength-conditioning/understanding-and-growing-the-wings-of-your-upper-body">lats also have several vital physiological functions</a>. Due to their sheer size and the fact they have numerous points of origin along the spine, the ribs, sacrum and scapular, all inserting at the humerus (upper arm), they take care of many different actions. These include adducting, medially rotating, and extending your arm from the shoulder joint. A stronger, more stable scapular and upper-back will aid shoulder stability, which is essential if you&rsquo;re involved in any type of throwing sport.&nbsp;<strong>Thus, stronger lats can make you a better bench presser or help balance out your physique to combat those years of over-training your chest and shoulders and neglecting your back</strong>.</p><p>&nbsp;</p><p><strong>Give Me the Prescription for ILS</strong></p><p>&nbsp;</p><p>If your back workout currently takes place only on days when your chest isn&rsquo;t feeling sore or if it consists of little more than a few sets of pulldowns and a dumbbell row or two while talking shop with the hot personal trainer, it&rsquo;s time to get a bit more serious about&nbsp;<a target="_blank" href="http://breakingmuscle.com/books-dvds/dvd-review-lats-the-super-muscles-by-mark-reifkind">lat training</a>.&nbsp;<strong>We&rsquo;re talking twice a week</strong>. Leave three to four days between sessions, but make sure you get your two weekly workouts in. This could either mean doing two back-specific workouts, or a better approach would be to follow an upper-lower split, hitting each session twice a week, but starting both upper-body workouts with your back exercises.</p><p>&nbsp;</p><p><strong>The Exercises</strong></p><p>&nbsp;</p><p>You could probably reel off eight, maybe ten, possibly even a dozen back exercises if pushed, but how many of those actually&nbsp;<a target="_blank" href="http://breakingmuscle.com/strength-conditioning/getting-freaky-with-it-outside-the-box-back-training">get you pumped up to go and train</a>? You know plenty of back exercises, but never do them, so something&rsquo;s got to be up.&nbsp;<strong>And this is exactly where a lot of people fall down in curing their imaginary lat syndrome - back exercises just aren&rsquo;t that exciting</strong>.</p><p>&nbsp;</p><p><strong>With that in mind, here are four awesome lat-building moves that will get your training mojo working overtime, strengthen your back, and give you some lats you can actually be proud of for the first time</strong>.</p><p>&nbsp;</p><p><strong>1. The Mighty Chin-Up</strong></p><p>&nbsp;</p><p>Before getting fancy, learn to do chinups.<strong>&nbsp;If you can&rsquo;t do ten strict bodyweight chin-ups yet, that&rsquo;s your first port of call</strong>. No other exercise builds the lats like chin-ups.</p><p>&nbsp;</p><p><strong>You can throw pull-ups into the mix too</strong>. While the terms are generally interchangeable, and different people use one or the other to describe a&nbsp;<a target="_blank" href="http://breakingmuscle.com/strength-conditioning/mastering-the-chin-up-7-variations-to-beat-gym-boredom">different type of bodyweight pull</a>, chin-ups are usually thought of as being performed with a close, underhand grip, while pull-ups are wider with an overhand grip.</p><p>&nbsp;</p><p>You need some form of chin-up in every single back workout.&nbsp;<a target="_blank" href="http://breakingmuscle.com/strength-conditioning/mastering-the-chin-up-7-variations-to-beat-gym-boredom">I suggest starting here</a>.</p><p>&nbsp;</p><p><strong>2. Pull-Downs? You Serious?</strong></p><p>&nbsp;</p><p>Pull-downs are often considered the skinny dude&rsquo;s version of the pull-up, and while I&rsquo;d argue chin-ups and pull-ups are your number one weapon in the fight against imaginary lat syndrome, there&rsquo;s most certainly a place for pull-downs too.</p><p>&nbsp;</p><p><strong>My two favorite pull-down variations are the neutral grip pull-down, performed with your palms facing inward, and the single-arm pull-down</strong>. The neutral grip places your shoulders in a more natural position, and means you get a bigger contraction at the bottom of each rep, whereas single-arm pull-downs help you activate those pesky lat<a target="_blank" href="http://breakingmuscle.com/crossfit/the-crossfit-dilemma-why-can-t-i-lift-more-than-that-person">muscle fibers</a>.</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p><strong>Not being able to &ldquo;feel&rdquo; the lats is a common problem among wannabe strength-builders</strong>. This is generally due to a poor&nbsp;<a target="_blank" href="http://breakingmuscle.com/strongman/strongman-profile-maxick-teaches-us-the-lost-art-of-muscle-control">mind-muscle connection</a>, but in my experience, switching to single-arm pull-downs suddenly cures this. The lats kick in, you stop feeling the exercise in your biceps, forearms, and shoulders, and start building some monster wings. If you&rsquo;re still having trouble, try placing your non-working hand on your working lat and this should do the trick.</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p><strong>3. Going Straight</strong></p><p>&nbsp;</p><p>An isolation exercise in an article on lat training? Yup, despite the fact it seems in vogue to<a target="_blank" href="http://breakingmuscle.com/strength-conditioning/4-lessons-crossfitters-can-learn-from-bodybuilders">hate isolation exercises</a>&nbsp;and promote the use of compound moves in the &ldquo;functional training&rdquo; sphere, isolation moves absolutely have a place when working your lats.</p><p>&nbsp;</p><p><strong>The straight arm pull-down really gets that mind-muscle connection going once again</strong>. Use a rope attachment on the high pulley of a cable machine, take a step back, and start each rep with a big stretch. Then squeeze your lats hard as you bring your hands in to the side of your waist. These work well as a pre-exhaust exercise before launching into your regular pull-downs.</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p><strong>4. Put Your Chest to Use</strong></p><p>&nbsp;</p><p>You&rsquo;ve spent hundreds of workouts building that&nbsp;<a target="_blank" href="http://breakingmuscle.com/strength-conditioning/how-to-develop-a-mans-pectorals-with-strength-training-exercises">impressive set of pecs</a>, now it&rsquo;s time to put them to use.&nbsp;<strong>They&rsquo;ll be used to help support you on this exercise, as we perform some chest-supported rows</strong>.</p><p>&nbsp;</p><p>Your gym might have a machine for this, in which case feel free to use that.&nbsp;<strong>If not though, just set a bench to around a thirty-degree incline, lie face down on it, and grab a dumbbell in each hand.</strong>&nbsp;Start with your arms hanging straight down, then row the dumbbells up to your sides, squeezing your lats hard on every rep.</p><p>&nbsp;</p><p>Position is crucial on these.<strong>&nbsp;While you&rsquo;ll hit your lats no matter how you do this exercise, you&rsquo;ll get much more bang for your buck if you bring the dumbbells up slightly lower - around waist height - rather than higher up</strong>. Rowing the dumbbells up to your ribs will transfer the stress onto your traps and rhomboids, which isn&rsquo;t what we want at the moment.</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>You can break the rules here as well, and wind up the functional crowd even more by using<a target="_blank" href="http://breakingmuscle.com/strength-conditioning/weight-lifting-straps-what-they-are-when-and-why-to-use-them">wrist straps</a>.&nbsp;', 'a.mp4', '2015-05-04 09:18:19', '2015-05-04 07:18:19'),
(2, 1, 2, 'HTML5 SPEECH INPUT WITH VOICE RECOGNITION', '<p>HTML5 support <a href="http://www.labnol.org/software/add-speech-recognition-to-website/19989/">speech input</a> (x-webkit-speech) and this has been implemented in the newer versions of Google Chrome. <a href="http://ctrlq.org/dictation/">Dictation</a> is an online speech recognition app that uses Google&rsquo;s Chrome speech engine to help you convert your spoken words into text.</p><p>This piece of jQuery / JavaScript code powers the Dictation app.<p>// Written by Amit Agarwal on 10/08/2012</p><p>// See ctrlq.org/dictation for live demo</p><p>&nbsp;</p><p>$(document).ready(function () {</p><p>&nbsp;</p><p>// Check if the user&#39;s web browser supports HTML5 Speech Input API</p><p>&nbsp;&nbsp;if(document.createElement(&#39;input&#39;).webkitSpeech == undefined) {</p><p>&nbsp;&nbsp;&nbsp;&nbsp;$(&quot;.answer&quot;).append(&quot;We are sorry but Dictation requires Google Chrome.&quot;);</p><p>&nbsp;&nbsp;}</p><p>&nbsp;&nbsp;else {</p><p>&nbsp;</p><p>// Get the default locale of the user&#39;s browser (e.g. en-US, or de)</p><p>&nbsp;&nbsp;&nbsp;&nbsp;var language = window.navigator.userLanguage || window.navigator.language;</p><p>&nbsp;&nbsp;&nbsp;&nbsp;$(&quot;#speech&quot;).attr(&quot;lang&quot;, language).focus();</p><p>&nbsp;</p><p>// Make the text region editable to easily fix transcription errors</p><p>&nbsp;&nbsp;&nbsp;&nbsp;$(&quot;.answer&quot;).click(function () {</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $(&#39;.answer&#39;).attr(&#39;contentEditable&#39;, &#39;true&#39;);</p><p>&nbsp;&nbsp;&nbsp;&nbsp;});</p><p>&nbsp;&nbsp;}</p><p>&nbsp;</p><p>// This is called when Chrome successfully transcribes the spoken word</p><p>&nbsp;&nbsp;$(&quot;#speech&quot;).bind(&quot;webkitspeechchange&quot;, function (e) {</p><p>&nbsp;&nbsp;&nbsp;&nbsp; var val = $(this).val();</p><p>&nbsp;</p><p>// Did the user say Delete? Then clear the canvas.</p><p>&nbsp;&nbsp;&nbsp;&nbsp; if(val == &quot;delete everything&quot;) {</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $(&quot;.answer&quot;).text(&quot;&quot;);</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; return;</p><p>&nbsp;&nbsp;&nbsp;&nbsp; }</p><p>&nbsp;&nbsp;&nbsp;&nbsp;</p><p>// For &quot;new line&quot; commands, add double line breaks.</p><p>&nbsp;&nbsp;&nbsp;&nbsp; if(val == &quot;new line&quot;)</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;val = &quot;&lt;br /&gt;&lt;br /&gt;&quot;;</p><p>&nbsp;&nbsp;&nbsp;&nbsp; else {</p><p>&nbsp;</p><p>// Capitalize the first letter of the sentence.</p><p>&nbsp;&nbsp;&nbsp;&nbsp;val = val.substr(0, 1).toUpperCase() + val.substr(1);</p><p>&nbsp;</p><p>', 'b.mp4', '2015-05-04 09:21:37', '2015-05-04 07:21:37'),
(3, 3, 5, 'How to manually uninstall Battlefield 3', 'Backup the save data:\r\nClick the Start button and select Documents\r\nRight-click the Battlefield 3 folder and select Cut\r\nRight-click on your desktop and select Paste\r\nTo restore your Battlefield 3 save games and settings, move this folder back into the Documents folder\r\n \r\nDelete the game files (in the default location):\r\nClick the Start button and select Computer\r\nSelect the C: drive folder\r\nSelect the Program Files folder\r\nNote: On 64bit systems, select the Program Files (x86) folder\r\nSelect the Origin Games folder\r\nRight-click the Battlefield 3 folder and select Delete\r\n \r\n(Warning: Changes to the registry can cause your computer to operate improperly, so please follow these instructions exactly as they are written.)\r\n \r\nBacking up the registry:\r\nPerform the steps listed below to back-up the registry so that should something go wrong, you can restore your system back to a working state:\r\nClick the Start button (Windows button on Windows Vista) on the Windows Taskbar.\r\nClick Run.\r\nType regedit into the available text field, and click OK.\r\nSelect File, then Export\r\nSelect All under Export Range.\r\nType backup into the File name field, and click Save.\r\n \r\nDelete the registry keys:\r\nExpand the HKEY_LOCAL_MACHINE folder\r\nExpand the SOFTWARE folder\r\nNote: On 64bit systems, first expand the Wow6432Node folder, then continue\r\nExpand the EA GAMES folder\r\nRight-click the Battlefield 3 folder and select Delete\r\nCollapse the EA GAMES folder\r\nExpand the Electronic Arts folder\r\nRight-click the Battlefield 3 folder and select Delete\r\nCollapse the Electronic Arts folder\r\nRight-click the ESN Launcher folder and select Delete\r\nNote: This folder may have a version number (such as 0.79.0) after the name or there may be multiple folders with the same name\r\nRight-click the ESN Sonar folder and select Delete\r\nNote: This folder may have a version number (such as 0.79.0) after the name or there may be multiple folders with the same name\r\nExpand the Microsoft folder\r\nExpand the Windows folder\r\nExpand the CurrentVersion folder\r\nExpand the Uninstall folder\r\nRight-click the {76285C16-411A-488A-BCE3-C83CB933D8CF} folder and select delete\r\nCollapse the Microsoft folder\r\n \r\nDelete the uninstall files:\r\nClick the Start button and select Computer\r\nSelect the C: drive folder\r\nSelect the Program Files folder\r\nSelect Tools, then Folder Options, then View, then select "Show hidden files and folders"; you may need to press the Alt key to make the Tools option appear\r\nSelect the InstallShield Installation Information folder\r\nRight-click the {76285C16-411A-488A-BCE3-C83CB933D8CF} folder and select delete', 'c.mp4', '0000-00-00 00:00:00', '2015-05-04 07:32:15'),
(4, 1, 1, 'Test video 1', '<p>This is a test of video loading</p>', 'd.mp4', '2015-05-09 18:22:24', '2015-05-09 16:22:24');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
`id` int(8) NOT NULL,
  `name` varchar(120) NOT NULL,
  `email` varchar(60) NOT NULL,
  `avatar` varchar(100) NOT NULL,
  `username` varchar(12) NOT NULL,
  `password` varchar(64) NOT NULL,
  `about` text NOT NULL,
  `last_activity` datetime NOT NULL,
  `join_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `avatar`, `username`, `password`, `about`, `last_activity`, `join_date`) VALUES
(1, 'Kavinda Rochana Abeywickrama', 'kavindarochana@gmail.com', 'avatar5.jpg', 'kavindarocha', 'e409cf8ec06b610465b723a394d99049', 'Hi I''m KasH', '2015-05-02 13:47:21', '2015-05-02 11:47:21'),
(2, 'Sakuni Nisansala Rathnayake', 'saku@gmail.com', '150110-041417.png', 'sakuninisans', 'e409cf8ec06b610465b723a394d99049', 'Hi I''m SakU', '2015-05-02 13:49:13', '2015-05-02 11:49:13'),
(3, 'Gema', 'grma@kirp.com', 'avatar3.jpg', 'gema15', 'e409cf8ec06b610465b723a394d99049', 'df', '2015-04-17 01:00:00', '2015-04-17 02:17:38'),
(4, 'Don Doon', 'ss@kirp.com', 'avatar4.jpg', 'don', 'e409cf8ec06b610465b723a394d99049', 'xc', '0000-00-00 00:00:00', '2015-04-17 02:19:04'),
(5, 'RochNisa', '', '20150314_161117.jpg', 'RochNisa', 'e409cf8ec06b610465b723a394d99049', '', '2015-05-02 12:49:39', '2015-05-02 10:49:39'),
(6, 'k', 'kavindarochana@gmail.com', 'Screenshot (114).png', 'kavindarocha', 'e409cf8ec06b610465b723a394d99049', 'lll', '2015-05-02 12:42:48', '2015-05-02 10:42:48'),
(7, 'Kavinda Rochana Abeywickrama', 'kavindarochana@gmail.com', '20131219_123052 (2).jpg', 'kavindarocha', 'e409cf8ec06b610465b723a394d99049', '(y) (y)  (y) <3  :)  :p ;)', '2015-05-02 12:44:58', '2015-05-02 10:44:58');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `replies`
--
ALTER TABLE `replies`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `topics`
--
ALTER TABLE `topics`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `replies`
--
ALTER TABLE `replies`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `topics`
--
ALTER TABLE `topics`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
MODIFY `id` int(8) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
