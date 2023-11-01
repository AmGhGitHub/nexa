import React, { ReactNode } from "react";

const layout = ({ children }: { children: ReactNode }) => {
  return (
    <>
      <div className="flex space-x-2">
        <div className="flex flex-col space-y-2">edjh</div>
      </div>
      <div className="flex space-x-2">{children}</div>;
    </>
  );
};

export default layout;
