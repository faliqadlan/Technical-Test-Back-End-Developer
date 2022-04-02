package golang

import "testing"

func TestXxx(t *testing.T) {
	for i := 0; i < 10; i++ {
		t.Log(i, GetShape(i))
	}

}
