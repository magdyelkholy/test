#!/bin/bash

EXPECTED="Hello, Test!"

# تشغيل كود جافاسكربت والحصول على الناتج
OUTPUT=$(node -e "console.log(require('./src/app')('Test'))")

# مقارنة الناتج بالقيمة المتوقعة
if [ "$OUTPUT" == "$EXPECTED" ]; then
  echo "✅ Test passed!"
  exit 0
else
  echo "❌ Test failed! Expected '$EXPECTED' but got '$OUTPUT'"
  exit 1
fi
