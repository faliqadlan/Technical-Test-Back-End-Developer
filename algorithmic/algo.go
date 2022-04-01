package algorithmic

func AllSum(number int) int {

	var p = make([]int, number+1)

	p[0] = 1

	var k int
	for i := 1; i <= number; i++ {
		k = 1
		for (k*(3*k-1))/2 <= i {

			var sign int

			if k%2 != 0 {
				sign = 1
			} else {
				sign = -1
			}

			var value int = sign * p[i-(k*(3*k-1))/2]

			p[i] += value
			switch {
			case k > 0:
				k *= -1
			default:
				k = 1 - k
			}
		}
	}

	return p[number] - 1
}
