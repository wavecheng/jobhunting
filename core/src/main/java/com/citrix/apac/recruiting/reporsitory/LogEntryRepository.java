package com.citrix.apac.recruiting.reporsitory;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.citrix.apac.recruiting.entity.LogEntry;

@Repository("logEntryRepository")
public interface LogEntryRepository extends JpaRepository<LogEntry, Long> {


}
