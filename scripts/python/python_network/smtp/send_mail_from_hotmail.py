#!/usr/bin/python

"""
This code is possible for sending mail from a hotmail account
python send_mail.py example@hotmail.com example@gmail.com
"""

import sys
import smtplib
import getpass


if len(sys.argv) != 3:
    print "usage: python %s from@fromdomain.com to@todomain.com"
    exit()


sender = sys.argv[1]  # sender = from@fromdomain.com
receiver = sys.argv[2]  # receivers = to@todomain.com
message = """From: From Person <%s>
        To: To Person <%s>
        Subject: SMTP e-mail test

        This is a test e-mail message.
        """ % (sys.argv[1], sys.argv[2])
SMTP_PORT = 587
SMTP_SERVER = "smtp.live.com"


try:
    smtpObj = smtplib.SMTP(SMTP_SERVER, SMTP_PORT)
    smtpObj.starttls()
    passwd = getpass.getpass("Input your hotmail password:")
    smtpObj.login(sender, passwd)
    smtpObj.sendmail(sender, receiver, message)
    print "Successfully sent email"
except smtplib.SMTPDataError:
    print "Error: unable to send email: SMTPDataError"
except smtplib.SMTPHeloError:
    print "Error: unable to send email: SMTPHeloError"
except smtplib.SMTPRecipientsRefused:
    print "Error: unable to send email: SMTPRecipientsRefused"
except smtplib.SMTPSenderRefused:
    print "Error: unable to send email: SMTPSenderRefused"


