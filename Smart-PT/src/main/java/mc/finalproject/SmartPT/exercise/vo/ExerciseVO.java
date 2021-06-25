package mc.finalproject.SmartPT.exercise.vo;

import org.springframework.stereotype.Component;

@Component("exerciseVO")
public class ExerciseVO {
	private String krExTitle; // 운동명(한국어)
	private String enExTitle; // 운동명(영어)
	private int stepID; // 운동 과정 ID
	private String step; // 운동 수행 과정

	
	// Getters and Setters
	public String getKrExTitle() {
		return krExTitle;
	}
	public void setKrExTitle(String krExTitle) {
		this.krExTitle = krExTitle;
	}
	public String getEnExTitle() {
		return enExTitle;
	}
	public void setEnExTitle(String enExTitle) {
		this.enExTitle = enExTitle;
	}
	public int getStepID() {
		return stepID;
	}
	public void setStepID(int stepID) {
		this.stepID = stepID;
	}
	public String getStep() {
		return step;
	}
	public void setStep(String step) {
		this.step = step;
	}
	
	@Override
	public String toString() {
		return getKrExTitle() + " (" + getEnExTitle() + ") / " + getStepID() + " : " + getStep();
	}
}