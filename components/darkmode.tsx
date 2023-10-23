"use client";

import { Label } from "@/components/ui/label";
import { Switch } from "@/components/ui/switch";
import { useTheme } from "next-themes";
import * as React from "react";

export function SwitchdarkMode() {
  const { setTheme } = useTheme();
  const [mode, setMode] = React.useState("Light");
  return (
    <div className="flex items-center space-x-2">
      <Switch
        id="dark-mode"
        onCheckedChange={() => {
          mode.toLowerCase() === "light"
            ? (setTheme("dark"), setMode("Dark"), console.log(mode))
            : (setTheme("light"), setMode("Light"), console.log(mode));
        }}
      />

      <Label htmlFor="dark-mode">Dark Mode</Label>
    </div>
  );
}

// export function ModeToggle() {
//   const { setTheme } = useTheme();

//   return (
//     <>
//       <DropdownMenu>
//         <DropdownMenuTrigger asChild>
//           <Button variant="outline" size="icon">
//             <SunIcon className="h-[1.2rem] w-[1.2rem] rotate-0 scale-100 transition-all dark:-rotate-90 dark:scale-0" />
//             <MoonIcon className="absolute h-[1.2rem] w-[1.2rem] rotate-90 scale-0 transition-all dark:rotate-0 dark:scale-100" />
//             <span className="sr-only">Toggle theme</span>
//           </Button>
//         </DropdownMenuTrigger>
//         <DropdownMenuContent align="end">
//           <DropdownMenuItem onClick={() => setTheme("light")}>
//             Light
//           </DropdownMenuItem>
//           <DropdownMenuItem onClick={() => setTheme("dark")}>
//             Dark
//           </DropdownMenuItem>
//         </DropdownMenuContent>
//       </DropdownMenu>
//     </>
//   );
// }
