import * as typing from "$typings";

export const mailConfig: typing.MailConfig = {
  incoming: [
    {
      label: "Server",
      value: "mail1.gnuweeb.org"
    },
    {
      label: "Protocol",
      value: "IMAP"
    },
    {
      label: "Port",
      value: "143"
    },
    {
      label: "SSL",
      value: "STARTTLS"
    },
    {
      label: "Auth",
      value: "Normal Password"
    }
  ],
  outgoing: [
    {
      label: "Server",
      value: "mail1.gnuweeb.org"
    },
    {
      label: "Protocol",
      value: "SMTP"
    },
    {
      label: "Port",
      value: "587"
    },
    {
      label: "SSL",
      value: "STARTTLS"
    },
    {
      label: "Auth",
      value: "Normal Password"
    }
  ]
} as const;
