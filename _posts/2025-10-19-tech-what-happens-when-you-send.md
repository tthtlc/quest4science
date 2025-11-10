---
title: "What happens when you send a message on WhatsApp?"
date: 2025-10-19 16:00:16 +08:00
categories: [Technology]
tags: ["WhatsApp", "Internet", "Technology", "Encryption", "Messaging"]
image_name: whatsapp-message-flow.jpg
image_description: "An illustrated infographic showing the step-by-step journey of a WhatsApp message from sender's phone, through encryption, to WhatsApp servers, and finally to the recipient's phone, highlighting encryption locks and network paths."
comments: true
---


![The journey of a WhatsApp message: from your device to your friend's device through secure encryption and the internet.](/assets/images/whatsapp-message-flow.jpg)
*The journey of a WhatsApp message: from your device to your friend's device through secure encryption and the internet.*

<!-- Image Description: An illustrated infographic showing the step-by-step journey of a WhatsApp message from sender's phone, through encryption, to WhatsApp servers, and finally to the recipient's phone, highlighting encryption locks and network paths. -->

## Discover the secret journey of your texts inside the internet

*By Peter Teoh, Science Writer*

Imagine you just typed a message to your best friend on WhatsApp and hit send. But have you ever wondered what really happens behind the scenes? How does your text zoom across the internet and pop up on your friend’s phone in seconds — and how does WhatsApp keep it so private? Let's dive into the fascinating journey of your WhatsApp message step by step!

---

### Step 1: Writing and Encrypting Your Message

When you type your message and press send, your WhatsApp app immediately puts a special lock on it using something called **end-to-end encryption**. This means your message is scrambled into a secret code right on your phone, so no one else—not even WhatsApp—can read it while it’s traveling through the internet. The lock is made using a unique key that only your friend’s phone can unlock.

### Step 2: Sending Your Message Over the Internet

Next, your encrypted message travels from your phone through your Wi-Fi or mobile data connection. It reaches WhatsApp’s servers, but since it's locked tight, the servers can't see the message's content. Think of the servers as a post office that safely holds your sealed letter until your friend is ready to collect it.

### Step 3: WhatsApp’s Backend Magic

WhatsApp uses a powerful system built with a programming language called **Erlang** and runs on a special operating system named **FreeBSD**. Their servers use a technology called **WebSocket**, which keeps an open, real-time connection between your phone and theirs. This means messages can flow instantly back and forth without delays.

Each user’s phone maintains a dedicated connection process to WhatsApp’s servers. This process handles your session, checks that you’re allowed to send messages, and manages message delivery efficiently, so your chats stay fast and reliable even when billions of messages are flying around each day.

### Step 4: Delivering the Message to Your Friend’s Phone

Once your friend’s phone connects to WhatsApp’s servers, the encrypted message is sent down the open WebSocket connection straight to their device. Their phone uses its secret key to unlock and decrypt the message, turning it back into the readable text your friend sees.

### Step 5: Confirmation and Receipts

After your friend’s phone gets the message, WhatsApp sends a tiny signal back to your phone to confirm delivery. This is why you see blue ticks when your friend has read your message. It’s a smooth chain of signals that keeps both sides informed.

---

### Why So Secure? The Power of Signal Protocol

WhatsApp’s encryption uses the **Signal Protocol**, a cutting-edge technology developed by security experts. This protocol changes encryption keys for every single message, making it nearly impossible for hackers or anyone else to eavesdrop, even if they intercept the data.

### What About Multimedia Messages?

When you send photos, videos, or voice notes, WhatsApp uses a special web server called **YAWS** to handle these bigger files. YAWS uses smart technology to send and receive multimedia in near real-time, so your media arrives fast and stays protected.

---

### Side Notes

- **End-to-end encryption** means only sender and receiver can read the messages—no middlemen.
- WhatsApp supports group chats with up to 256 people, each message encrypted individually.
- The system handles about **40 billion messages every day**, showing how impressive this technology is.

### Trending Sidebar

- **Did you know?** WhatsApp doesn’t store your messages permanently after delivery. This helps keep your chats private.
- **Tech tip:** You can verify your chat’s encryption by checking the security code in the contact info.
- **Cool fact:** WhatsApp’s real-time messaging uses WebSockets, a modern internet technology that allows instant two-way communication.

---

Sending a message on WhatsApp is like launching a tiny, encrypted rocket through a complex network of servers and connections. Every step, from your phone to your friend’s, is designed to be fast, reliable, and secure, so your private conversations stay just that—private.

Next time you hit send, remember the incredible journey your message takes through the hidden world of the internet!

---

### References

- CometChat, "Understanding WhatsApp's Architecture & System Design"  
- WhatsApp Help Center, "About end-to-end encryption"  
- Business Insider, "What Is WhatsApp? How It Works, Tips, Tricks, and More"  
- ByteByteGo Blog, "How WhatsApp Handles 40 Billion Messages Per Day"  
- GeeksforGeeks, "Designing Whatsapp Messenger System Design"

