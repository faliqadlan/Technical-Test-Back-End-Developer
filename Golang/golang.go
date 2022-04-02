package golang

func GetShape(number int) interface{} {
	switch {
	case number%2 == 0 && number%3 == 0:
		return "CIRCLE STAR"
	case number%2 == 0:
		return "CIRCLE"
	case number%3 == 0:
		return "STAR"
	}
	return nil
}