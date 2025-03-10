# CRTS

What is CT or Certificate Transparency? Certificate Transparency (CT) is a public and open system that was introduced by Google to monitor and audit SSL/TLS certificates issued by certificate authorities (CAs). The idea behind CT is to make the certificate issuance process more transparent and accessible, to avoid problems such as the issuance of fraudulent certificates.

For more information, check: https://certificate.transparency.dev & https://crt.sh/

# How to install?

Simple, use:

```bash
git clone https://github.com/Hermes190/CRTS
cd CRTS
./CRTSadv.sh -h 
```

That's it!

# How to use?

You need to use the parameter "-l" and introduce your domain. It will send GET HTTP request to https://crt.sh/ and you'll get only the subdomains.

My script is based in this script: https://github.com/UnaPibaGeek/ctfr/tree/master but it's a Bash version.
