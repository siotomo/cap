function goformat
  gofmt -w . && goimports -w .
end
