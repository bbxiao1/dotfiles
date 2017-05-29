# Ruby braindump

- Problem: Net::HTTP request - EOFError: end of file reached
- Solution: http.use_ssl = true
    Even though net/http has recognized the URI as HTTPS, ssl has to be configured
    manually
