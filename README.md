# Issue Tracker

## Overview

Issue Tracker is a web application developed using ⚛️ [Next.js](https://nextjs.org/) and 📘 [TypeScript](https://www.typescriptlang.org/). It also utilizes [Redux UI](https://redux.js.org/), [Tailwind CSS](https://tailwindcss.com/), [Prisma](https://www.prisma.io/), and [MySQL](https://www.mysql.com/). Authentication features are implemented with [NextAuth](https://next-auth.js.org/), and input validation is done using [Zod](https://github.com/colinhacks/zod).

## Deployment

The project is deployed and accessible at [Issue Tracker App deploy on Vercel](https://issue-tracker-app-mu.vercel.app/).

## Technologies Used

- ⚛️ [Next.js](https://nextjs.org/): A React framework for building server-rendered and static web applications.
- 📘 [TypeScript](https://www.typescriptlang.org/): A superset of JavaScript that adds static types to the language.
- 📕 [Redux UI](https://redux.js.org/): A state container for JavaScript apps.
- 🎨 [Tailwind CSS](https://tailwindcss.com/): A utility-first CSS framework for rapidly building custom designs.
- 🔄 [Prisma](https://www.prisma.io/): A modern database toolkit for TypeScript and Node.js.
- 🐬 [MySQL](https://www.mysql.com/): An open-source relational database management system.

## Authentication

Authentication in this project is implemented using [NextAuth](https://next-auth.js.org/), a complete open-source authentication solution for Next.js applications. It provides various authentication providers, making it easy to integrate with social media accounts, email, and more.

To set up authentication, follow the instructions in the [NextAuth documentation](https://next-auth.js.org/getting-started/introduction) and customize the authentication providers based on your project requirements.

### Installation

1. Clone the repository:

   ```bash
   https://github.com/Muzammal-Rafique/Issue-Tracker.git
   ```

## Validation

[Zod](https://github.com/colinhacks/zod) is used for input validation in this project. Zod is a TypeScript-first schema declaration and validation library. It helps ensure that the data passed into your application is of the correct shape.

To use Zod for validation, define your schemas and use them to validate incoming data. Here's a simple example:

```typescript
import { z } from "zod";

const userSchema = z.object({
  username: z.string(),
  email: z.string().email(),
  password: z.string().min(8),
});

const userInput = {
  username: "john_doe",
  email: "john.doe@example.com",
  password: "securepassword",
};

try {
  const validatedUser = userSchema.parse(userInput);
  console.log("User data is valid:", validatedUser);
} catch (error) {
  console.error("Validation error:", error.errors);
}
```
