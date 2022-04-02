package algorithmic

import "fmt"

func PartitionTotal(number int) int {

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

// func PartitionSet1(n int) (result [][]int) {

// }

func PartitionSetProcessLearn(arr []int, i, number int) {
	fmt.Println("44", arr, i, number)
	if number == 0 {
		fmt.Println(arr)
		return
	}
	fmt.Println("45", arr, i, number)
	for j := i; j < number+1; j++ {
		fmt.Println("47", arr, j, i, number)
		arr = append(arr, j)

		fmt.Println("50", arr, j, i, number)

		PartitionSetProcess(arr, j, number-j)
		fmt.Println("53", arr, j, i, number)

		arr = arr[:len(arr)-1]

		fmt.Println("57", arr, j, i, number)

	}

}

func PartitionSetProcess(arr []int, i, number int) {
	if number == 0 {
		fmt.Println(arr)
		return
	}
	for j := i; j < number+1; j++ {
		arr = append(arr, j)

		PartitionSetProcess(arr, j, number-j)

		arr = arr[:len(arr)-1]

	}

}

func PartitionSet(n int) {
	var arr []int

	PartitionSetProcess(arr, 1, n)
}
