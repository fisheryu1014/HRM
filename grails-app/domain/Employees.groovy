import java.time.LocalDate

class Employees {

	String cName
	String eName
	LocalDate entryDate
	Boolean active

	static constraints = {
		cName unique: true
	}

	static mapping = {
		active defaultValue: true
	}
}
