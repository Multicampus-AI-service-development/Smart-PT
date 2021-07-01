package mc.finalproject.SmartPT.user.vo;

public class RoutineVO {
	
	private String routineAll; //일반
	private String userId; //FK
	private String routine; //일반 
	private String routineImg;
	private String neck;
	private String waist;
	private String pelvis;
	private String core;
	
	public String getNeck() {
		return neck;
	}
	public void setNeck(String neck) {
		this.neck = neck;
	}
	public String getWaist() {
		return waist;
	}
	public void setWaist(String waist) {
		this.waist = waist;
	}
	public String getPelvis() {
		return pelvis;
	}
	public void setPelvis(String pelvis) {
		this.pelvis = pelvis;
	}
	public String getCore() {
		return core;
	}
	public void setCore(String core) {
		this.core = core;
	}
	public String getRoutineImg() {
		return routineImg;
	}
	public void setRoutineImg(String routineImg) {
		this.routineImg = routineImg;
	}
	
	public String getRoutineAll() {
		return routineAll;
	}
	public void setRoutineAll(String routineAll) {
		this.routineAll = routineAll;
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
	@Override
	public String toString() {
		return "RoutineVO [routineAll=" + routineAll + ", userId=" + userId + ", routine=" + routine + ", routineImg="
				+ routineImg + ", neck=" + neck + ", waist=" + waist + ", pelvis=" + pelvis + ", core=" + core + "]";
	}
	
	
	

}
