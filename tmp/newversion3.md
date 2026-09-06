
Short answer: **No — Jekyll does NOT natively support “Good / Not good” review buttons** because of how it works internally.

But you *can absolutely add it*, and the way you do it depends on understanding Jekyll’s architecture.

---

# 🧠 Why Jekyll has no built-in feedback system

## 1. Core design: Static Site Generator

Jekyll is fundamentally:

```
Markdown → Liquid templates → Static HTML files
```

Once built:

* The site becomes **pure static files**
* No backend runtime
* No database
* No server-side code execution

This design comes from Jekyll’s core build pipeline:

```
lib/jekyll/site.rb
lib/jekyll/generator.rb
lib/jekyll/renderer.rb
```

Example from source:

```ruby
# jekyll/lib/jekyll/site.rb
def process
  read
  generate
  render
  cleanup
  write
end
```

Notice:

👉 There is **no runtime state** after build
👉 Everything happens **only during build time**

So anything like:

* Likes
* Votes
* Comments
* Ratings

…requires a **dynamic backend**, which Jekyll intentionally does not include.

---

# 🧩 How people actually implement “Good / Not Good” in Jekyll

There are **3 real-world architectures**, from simplest to most advanced.

---

# ✅ Method 1 — Pure Frontend + Third-Party API (MOST COMMON)

This is how 90% of Jekyll sites do it.

## Architecture

```
Browser JS → External API → Database
```

Examples:

* Firebase
* Supabase
* Airtable
* Netlify Functions
* AWS Lambda

---

## Example Implementation (Firebase)

### Step 1 — Add buttons in post layout

```html
<button onclick="vote('good')">👍 Good</button>
<button onclick="vote('bad')">👎 Not Good</button>

<p id="result"></p>
```

---

### Step 2 — JavaScript logic

```html
<script src="https://www.gstatic.com/firebasejs/10.0.0/firebase-firestore.js"></script>

<script>
const postId = "{{ page.url }}";

function vote(type) {
  const ref = db.collection("votes").doc(postId);

  ref.set({
    [type]: firebase.firestore.FieldValue.increment(1)
  }, { merge: true });
}
</script>
```

---

### Why this works

Because:

* Jekyll serves static HTML
* JS executes client-side
* Database is external

This matches Jekyll’s philosophy:

> “Static site + dynamic services”

---

# ✅ Method 2 — GitHub Issues as Feedback Database

This is **very popular for GitHub Pages sites**.

## How it works

Each blog post:

```
maps to a GitHub issue
```

Users clicking “Good”:

→ Creates reaction 👍 on that issue via GitHub API.

---

## Example flow

```
Button click
→ GitHub REST API
→ POST /repos/:owner/:repo/issues/:number/reactions
```

Example API:

```http
POST /repos/user/repo/issues/123/reactions
{
  "content": "+1"
}
```

---

## Advantages

* No backend needed
* Uses GitHub authentication
* Persistent storage

---

# ✅ Method 3 — Netlify Forms / Serverless Functions

Very common if hosting on Netlify.

---

## Architecture

```
Jekyll Static Site
     ↓
Netlify Function (Node.js)
     ↓
Database / KV store
```

---

## Example Netlify function

```javascript
exports.handler = async (event) => {
  const { postId, vote } = JSON.parse(event.body);

  await db.increment(postId, vote);

  return {
    statusCode: 200,
    body: "ok"
  };
};
```

---

# 🔬 Method 4 — Static-only (No backend at all)

This is a **hacky but possible approach**:

Use:

* LocalStorage
* Cookies

Example:

```javascript
localStorage.setItem("vote:/post1", "good");
```

But:

❌ Only per user
❌ No global aggregation
❌ Not real analytics

---

# 🏗️ Where you’d integrate this in Jekyll source

The proper place is:

```
_layouts/post.html
```

Because this layout is applied to all blog posts.

Example:

```liquid
{% if page.allow_feedback %}
  {% include feedback.html %}
{% endif %}
```

---

# ⚙️ Advanced: Using Jekyll Plugins to Inject Feedback

You can even automate injection using a plugin.

Example plugin hook:

```ruby
Jekyll::Hooks.register :posts, :post_render do |post|
  post.output += '<script src="/feedback.js"></script>'
end
```

Located in:

```
_plugins/feedback_injector.rb
```

---

# 📊 Real-World Solutions Used by Major Jekyll Sites

Most common stacks:

| Site Type          | Solution                   |
| ------------------ | -------------------------- |
| GitHub Pages blogs | Utterances (GitHub Issues) |
| Docs sites         | Firebase votes             |
| Corporate blogs    | AWS Lambda + DynamoDB      |
| Personal blogs     | Static comments + Netlify  |

---

# ⭐ Popular Ready-Made Tools for Jekyll Feedback

These can be dropped in immediately:

### 1️⃣ Utterances

Uses GitHub Issues.

```
https://utteranc.es
```

---

### 2️⃣ Staticman

Works via Git commits.

---

### 3️⃣ Giscus

Modern replacement for Utterances.

---

# 🎯 Key Takeaway

Jekyll **cannot do voting natively** because:

```
No runtime
No DB
No backend
Static output only
```

But it is **very easy to extend** using:

```
JavaScript + external service
```

---

✅ If you want, I can show:

• A **fully working “Good/Bad voting system”** you can paste directly into Jekyll
• Architecture comparison: Firebase vs GitHub Issues vs Serverless
• How large doc sites (like Kubernetes docs) implement feedback

Just tell me 👍

