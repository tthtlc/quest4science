wrap the content inside the files _posts/post*.md with the standard liquid header (like other files inside _posts, following the jekyll blog format).

title: "XXXX"
date: 
categories: WWWW
tags: [QQQQ]
comments: true

where the categories is assigned based on the article post content as one of
(you can read the content of the files) :

chemistry
biology
history-society
mathematics
medicine
geography
physics
technology

and QQQQ are the different subcategories the article can be classified.  this is facilitate the searching process.

for the date, use today's date.

and after the liquid header add the following lines (including "---" and bounded by "---"):

---
*XXXX*

![YYYY](/assets/images/zzz.png)

*By Peter Teoh, Science Writer*
---

wheere XXXX is the appropriate title for the post, and YYYY is a description for a image to be generated relevant to the post, and zzz is the image name.

and rename the filename (ie, instead of post1.md, it should be YYYY-MM-DD-title-of-post.md) likewise also.    

