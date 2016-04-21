package com.citrix.apac.recruiting.entity;

public class Enums {
	
	public enum UserType{
		Student,
		Social
	}
	
	public enum EduLevel{
		Doctor,
		MBA,
		Master,
		DoubleMajor,
		UnderGraduate,
		College,
		HighSchool,
		Others
	}
	
	public enum Gender{
		Male,
		Female
	}
	
	public enum IdType{
		IdCard,
		Passport,
		Other
	}
	
	public enum EngLevel{
		CET4,
		CET6,
		TEM4,
		TEM8,
		NA
	}
	
	public enum SkillLevel{
		Knew,
		Experienced,
		Advanced,
		Expert
	}
	
	public enum CompanyType{
		PERSONAL,
		STATE,
		FOREIGN,
		COMBINED,
		GOVERNMENT,
		INSTITUTION,
		NGO,
		OTHER
	}
	
	public enum TimeType{
		FullTime,
		PartTime,
		Intern
	}
	
	public enum JobStatus{
		Ongoing,
		Suspend,
		Over,
		Invalid
	}
	
	
	public enum ApplyStatus{
		Applying,
		Exam,
		FirstInterview,
		SecondInterview,
		Final,
		Passed,
		Reject
	}
	
	public enum InterviewResult{
		Up,
		Down,
		Neutral
	}
	
}
