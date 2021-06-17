package mc.finalproject.SmartPT.user.vo;

public class RoutineVO {
	
	private String routineName; //일반
	private String userId; //FK
	private String routine; //일반 
	public String getRoutineName() {
		return routineName;
	}
	public void setRoutineName(String routineName) {
		this.routineName = routineName;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getRoutine() {
		return routine;
	}
	public void setRoutine(String routine) {
		this.routine = routine;
	}

}
