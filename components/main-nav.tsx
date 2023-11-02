"use client";

import Link from "next/link";
import { usePathname } from "next/navigation";

import { cn } from "@/lib/utils";
import { ScrollArea, ScrollBar } from "./scroll-area";

const examples = [
  {
    name: "All Data",
    href: "/emissions",
  },
  // {
  //   name: "Scope2",
  //   href: "/emission-data/scope-2",
  // },
  // {
  //   name: "Scope3",
  //   href: "/emission-data/scope-3",
  // },
];

interface EmissionDataNavProps extends React.HTMLAttributes<HTMLDivElement> {}

export function MainNav({ className, ...props }: EmissionDataNavProps) {
  const pathname = usePathname();

  return (
    <div className="relative">
      <ScrollArea className="max-w-[600px] lg:max-w-none">
        <div
          className={cn(
            "conatiner mx-auto p-4 mb-4 flex items-center border-b-2",
            className
          )}
          {...props}
        >
          {examples.map((example) => (
            <Link
              href={example.href}
              key={example.href}
              className={cn(
                "flex items-center px-4",
                pathname?.startsWith(example.href)
                  ? "font-bold text-primary"
                  : "font-medium text-muted-foreground"
              )}
            >
              {example.name}
            </Link>
          ))}
        </div>
        <ScrollBar orientation="horizontal" className="invisible" />
      </ScrollArea>
    </div>
  );
}
