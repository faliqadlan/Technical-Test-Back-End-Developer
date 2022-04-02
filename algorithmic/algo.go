package algorithmic

import "fmt"

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

func AllSumSet(arr []int, i, number int) {

	if number == 0 {
		fmt.Println(arr)
		return
	}

	for j := i; j < number+1; j++ {
		fmt.Println(arr, j, number)
		arr = append(arr, j)

		AllSumSet(arr, j, number-j)

		arr = arr[:len(arr)-1]
	}
}
