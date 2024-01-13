import React from "react";
import NavLink from "next/link";
import { Link as RedixLink } from "@radix-ui/themes";

interface props {
  href: string;
  children: string;
}

const Link = ({ href, children }: props) => {
  return (
    <NavLink href={href} passHref legacyBehavior>
      <RedixLink>{children}</RedixLink>
    </NavLink>
  );
};

export default Link;
