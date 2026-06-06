# Chata

A simple messaging website where people can create accounts and chat in a shared room.

## Features

- User registration and login
- Secure password hashing (bcrypt)
- Session-based authentication (JWT in httpOnly cookies)
- Global chat room with live message updates (polls every 2 seconds)
- **Private messaging** — start 1-on-1 conversations with any user
- **Profile customization** — display name, bio, avatar color, and profile photo upload
- Sidebar navigation with conversation list
- Dark, modern UI

## Getting started

```bash
npm install
cp .env.example .env
npx prisma db push
npm run dev
```

Open [http://localhost:3000](http://localhost:3000) in your browser.

On Windows, open `C:\Users\User\Downloads\chat-app` and double-click `start.bat` instead of running `npm run dev` manually.

## Upload to GitHub

1. Install [Git for Windows](https://git-scm.com/download/win)
2. Double-click `upload-to-github.bat` in this folder
3. Create a new repo at [github.com/new](https://github.com/new) (no README)
4. Run:

```bash
git remote add origin https://github.com/YOUR_USERNAME/chata.git
git push -u origin main
```

## Tech stack

- **Next.js 15** — React framework
- **Prisma + SQLite** — Database
- **jose** — JWT sessions
- **bcryptjs** — Password hashing
