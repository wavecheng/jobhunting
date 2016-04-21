package com.citrix.apac.recruiting.reporsitory;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.citrix.apac.recruiting.entity.ExamPlan;

@Repository("examPlanRoleRepository")
public interface ExamPlanRepository extends JpaRepository<ExamPlan, Long> {


}
