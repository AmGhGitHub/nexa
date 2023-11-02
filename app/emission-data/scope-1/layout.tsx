"use client";

import { Button } from "@/components/ui/button";
import {
  Card,
  CardContent,
  CardDescription,
  CardFooter,
  CardHeader,
  CardTitle,
} from "@/components/ui/card";
import Link from "next/link";
import { buttonVariants } from "@/components/ui/button";

import { ReactNode } from "react";

const layout = ({ children }: { children: ReactNode }) => {
  return (
    <>
      <div className="flex space-x-2">
        <Button asChild>
          <Link href="/login">Login</Link>
        </Button>
      </div>
      <div className="flex space-x-2">{children}</div>;
    </>
  );
};

export default layout;
