import sys
import os.path

sys.path.insert(0, os.path.abspath('tei2od'))

# test tests
def test_greater():
   num = 101
   assert num > 100
